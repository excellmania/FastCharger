package org.apache.http.impl.auth;

import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;
import org.apache.http.util.EncodingUtils;

final class NTLMEngineImpl implements NTLMEngine {
    static final String DEFAULT_CHARSET = "ASCII";
    protected static final int FLAG_NEGOTIATE_128 = 536870912;
    protected static final int FLAG_NEGOTIATE_ALWAYS_SIGN = 32768;
    protected static final int FLAG_NEGOTIATE_KEY_EXCH = 1073741824;
    protected static final int FLAG_NEGOTIATE_NTLM = 512;
    protected static final int FLAG_NEGOTIATE_NTLM2 = 524288;
    protected static final int FLAG_NEGOTIATE_SEAL = 32;
    protected static final int FLAG_NEGOTIATE_SIGN = 16;
    protected static final int FLAG_TARGET_DESIRED = 4;
    protected static final int FLAG_UNICODE_ENCODING = 1;
    private static final SecureRandom RND_GEN;
    private static byte[] SIGNATURE;
    private String credentialCharset = "ASCII";

    static class HMACMD5 {
        protected byte[] ipad;
        protected MessageDigest md5;
        protected byte[] opad;

        HMACMD5(byte[] bArr) {
            try {
                this.md5 = MessageDigest.getInstance("MD5");
                this.ipad = new byte[64];
                this.opad = new byte[64];
                int length = bArr.length;
                if (length > 64) {
                    this.md5.update(bArr);
                    bArr = this.md5.digest();
                    length = bArr.length;
                }
                int i = 0;
                while (i < length) {
                    this.ipad[i] = (byte) (bArr[i] ^ 54);
                    this.opad[i] = (byte) (bArr[i] ^ 92);
                    i++;
                }
                for (length = i; length < 64; length++) {
                    this.ipad[length] = (byte) 54;
                    this.opad[length] = (byte) 92;
                }
                this.md5.reset();
                this.md5.update(this.ipad);
            } catch (Exception e) {
                throw new NTLMEngineException("Error getting md5 message digest implementation: " + e.getMessage(), e);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public byte[] getOutput() {
            byte[] digest = this.md5.digest();
            this.md5.update(this.opad);
            return this.md5.digest(digest);
        }

        /* Access modifiers changed, original: 0000 */
        public void update(byte[] bArr) {
            this.md5.update(bArr);
        }

        /* Access modifiers changed, original: 0000 */
        public void update(byte[] bArr, int i, int i2) {
            this.md5.update(bArr, i, i2);
        }
    }

    static class MD4 {
        protected int A = 1732584193;
        protected int B = -271733879;
        protected int C = -1732584194;
        protected int D = 271733878;
        protected long count = 0;
        protected byte[] dataBuffer = new byte[64];

        MD4() {
        }

        /* Access modifiers changed, original: 0000 */
        public byte[] getOutput() {
            int i = (int) (this.count & 63);
            i = i < 56 ? 56 - i : 120 - i;
            byte[] bArr = new byte[(i + 8)];
            bArr[0] = Byte.MIN_VALUE;
            for (int i2 = 0; i2 < 8; i2++) {
                bArr[i + i2] = (byte) ((int) ((this.count * 8) >>> (i2 * 8)));
            }
            update(bArr);
            byte[] bArr2 = new byte[16];
            NTLMEngineImpl.writeULong(bArr2, this.A, 0);
            NTLMEngineImpl.writeULong(bArr2, this.B, 4);
            NTLMEngineImpl.writeULong(bArr2, this.C, 8);
            NTLMEngineImpl.writeULong(bArr2, this.D, 12);
            return bArr2;
        }

        /* Access modifiers changed, original: protected */
        public void processBuffer() {
            int i;
            int[] iArr = new int[16];
            for (i = 0; i < 16; i++) {
                iArr[i] = (((this.dataBuffer[i * 4] & 255) + ((this.dataBuffer[(i * 4) + 1] & 255) << 8)) + ((this.dataBuffer[(i * 4) + 2] & 255) << 16)) + ((this.dataBuffer[(i * 4) + 3] & 255) << 24);
            }
            i = this.A;
            int i2 = this.B;
            int i3 = this.C;
            int i4 = this.D;
            round1(iArr);
            round2(iArr);
            round3(iArr);
            this.A = i + this.A;
            this.B += i2;
            this.C += i3;
            this.D += i4;
        }

        /* Access modifiers changed, original: protected */
        public void round1(int[] iArr) {
            this.A = NTLMEngineImpl.rotintlft((this.A + NTLMEngineImpl.F(this.B, this.C, this.D)) + iArr[0], 3);
            this.D = NTLMEngineImpl.rotintlft((this.D + NTLMEngineImpl.F(this.A, this.B, this.C)) + iArr[1], 7);
            this.C = NTLMEngineImpl.rotintlft((this.C + NTLMEngineImpl.F(this.D, this.A, this.B)) + iArr[2], 11);
            this.B = NTLMEngineImpl.rotintlft((this.B + NTLMEngineImpl.F(this.C, this.D, this.A)) + iArr[3], 19);
            this.A = NTLMEngineImpl.rotintlft((this.A + NTLMEngineImpl.F(this.B, this.C, this.D)) + iArr[4], 3);
            this.D = NTLMEngineImpl.rotintlft((this.D + NTLMEngineImpl.F(this.A, this.B, this.C)) + iArr[5], 7);
            this.C = NTLMEngineImpl.rotintlft((this.C + NTLMEngineImpl.F(this.D, this.A, this.B)) + iArr[6], 11);
            this.B = NTLMEngineImpl.rotintlft((this.B + NTLMEngineImpl.F(this.C, this.D, this.A)) + iArr[7], 19);
            this.A = NTLMEngineImpl.rotintlft((this.A + NTLMEngineImpl.F(this.B, this.C, this.D)) + iArr[8], 3);
            this.D = NTLMEngineImpl.rotintlft((this.D + NTLMEngineImpl.F(this.A, this.B, this.C)) + iArr[9], 7);
            this.C = NTLMEngineImpl.rotintlft((this.C + NTLMEngineImpl.F(this.D, this.A, this.B)) + iArr[10], 11);
            this.B = NTLMEngineImpl.rotintlft((this.B + NTLMEngineImpl.F(this.C, this.D, this.A)) + iArr[11], 19);
            this.A = NTLMEngineImpl.rotintlft((this.A + NTLMEngineImpl.F(this.B, this.C, this.D)) + iArr[12], 3);
            this.D = NTLMEngineImpl.rotintlft((this.D + NTLMEngineImpl.F(this.A, this.B, this.C)) + iArr[13], 7);
            this.C = NTLMEngineImpl.rotintlft((this.C + NTLMEngineImpl.F(this.D, this.A, this.B)) + iArr[14], 11);
            this.B = NTLMEngineImpl.rotintlft((this.B + NTLMEngineImpl.F(this.C, this.D, this.A)) + iArr[15], 19);
        }

        /* Access modifiers changed, original: protected */
        public void round2(int[] iArr) {
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.G(this.B, this.C, this.D)) + iArr[0]) + 1518500249, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.G(this.A, this.B, this.C)) + iArr[4]) + 1518500249, 5);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.G(this.D, this.A, this.B)) + iArr[8]) + 1518500249, 9);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.G(this.C, this.D, this.A)) + iArr[12]) + 1518500249, 13);
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.G(this.B, this.C, this.D)) + iArr[1]) + 1518500249, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.G(this.A, this.B, this.C)) + iArr[5]) + 1518500249, 5);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.G(this.D, this.A, this.B)) + iArr[9]) + 1518500249, 9);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.G(this.C, this.D, this.A)) + iArr[13]) + 1518500249, 13);
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.G(this.B, this.C, this.D)) + iArr[2]) + 1518500249, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.G(this.A, this.B, this.C)) + iArr[6]) + 1518500249, 5);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.G(this.D, this.A, this.B)) + iArr[10]) + 1518500249, 9);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.G(this.C, this.D, this.A)) + iArr[14]) + 1518500249, 13);
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.G(this.B, this.C, this.D)) + iArr[3]) + 1518500249, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.G(this.A, this.B, this.C)) + iArr[7]) + 1518500249, 5);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.G(this.D, this.A, this.B)) + iArr[11]) + 1518500249, 9);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.G(this.C, this.D, this.A)) + iArr[15]) + 1518500249, 13);
        }

        /* Access modifiers changed, original: protected */
        public void round3(int[] iArr) {
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.H(this.B, this.C, this.D)) + iArr[0]) + 1859775393, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.H(this.A, this.B, this.C)) + iArr[8]) + 1859775393, 9);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.H(this.D, this.A, this.B)) + iArr[4]) + 1859775393, 11);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.H(this.C, this.D, this.A)) + iArr[12]) + 1859775393, 15);
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.H(this.B, this.C, this.D)) + iArr[2]) + 1859775393, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.H(this.A, this.B, this.C)) + iArr[10]) + 1859775393, 9);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.H(this.D, this.A, this.B)) + iArr[6]) + 1859775393, 11);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.H(this.C, this.D, this.A)) + iArr[14]) + 1859775393, 15);
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.H(this.B, this.C, this.D)) + iArr[1]) + 1859775393, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.H(this.A, this.B, this.C)) + iArr[9]) + 1859775393, 9);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.H(this.D, this.A, this.B)) + iArr[5]) + 1859775393, 11);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.H(this.C, this.D, this.A)) + iArr[13]) + 1859775393, 15);
            this.A = NTLMEngineImpl.rotintlft(((this.A + NTLMEngineImpl.H(this.B, this.C, this.D)) + iArr[3]) + 1859775393, 3);
            this.D = NTLMEngineImpl.rotintlft(((this.D + NTLMEngineImpl.H(this.A, this.B, this.C)) + iArr[11]) + 1859775393, 9);
            this.C = NTLMEngineImpl.rotintlft(((this.C + NTLMEngineImpl.H(this.D, this.A, this.B)) + iArr[7]) + 1859775393, 11);
            this.B = NTLMEngineImpl.rotintlft(((this.B + NTLMEngineImpl.H(this.C, this.D, this.A)) + iArr[15]) + 1859775393, 15);
        }

        /* Access modifiers changed, original: 0000 */
        public void update(byte[] bArr) {
            int i = (int) (this.count & 63);
            int i2 = 0;
            while ((bArr.length - i2) + i >= this.dataBuffer.length) {
                int length = this.dataBuffer.length - i;
                System.arraycopy(bArr, i2, this.dataBuffer, i, length);
                this.count += (long) length;
                i2 += length;
                processBuffer();
                i = 0;
            }
            if (i2 < bArr.length) {
                int length2 = bArr.length - i2;
                System.arraycopy(bArr, i2, this.dataBuffer, i, length2);
                this.count += (long) length2;
                i2 = i + length2;
            }
        }
    }

    static class NTLMMessage {
        private int currentOutputPosition = 0;
        private byte[] messageContents = null;

        NTLMMessage() {
        }

        NTLMMessage(String str, int i) {
            int i2 = 0;
            this.messageContents = Base64.decodeBase64(EncodingUtils.getBytes(str, "ASCII"));
            if (this.messageContents.length < NTLMEngineImpl.SIGNATURE.length) {
                throw new NTLMEngineException("NTLM message decoding error - packet too short");
            }
            while (i2 < NTLMEngineImpl.SIGNATURE.length) {
                if (this.messageContents[i2] != NTLMEngineImpl.SIGNATURE[i2]) {
                    throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
                }
                i2++;
            }
            i2 = readULong(NTLMEngineImpl.SIGNATURE.length);
            if (i2 != i) {
                throw new NTLMEngineException("NTLM type " + Integer.toString(i) + " message expected - instead got type " + Integer.toString(i2));
            }
            this.currentOutputPosition = this.messageContents.length;
        }

        /* Access modifiers changed, original: protected */
        public void addByte(byte b) {
            this.messageContents[this.currentOutputPosition] = b;
            this.currentOutputPosition++;
        }

        /* Access modifiers changed, original: protected */
        public void addBytes(byte[] bArr) {
            for (byte b : bArr) {
                this.messageContents[this.currentOutputPosition] = b;
                this.currentOutputPosition++;
            }
        }

        /* Access modifiers changed, original: protected */
        public void addULong(int i) {
            addByte((byte) (i & 255));
            addByte((byte) ((i >> 8) & 255));
            addByte((byte) ((i >> 16) & 255));
            addByte((byte) ((i >> 24) & 255));
        }

        /* Access modifiers changed, original: protected */
        public void addUShort(int i) {
            addByte((byte) (i & 255));
            addByte((byte) ((i >> 8) & 255));
        }

        /* Access modifiers changed, original: protected */
        public int getMessageLength() {
            return this.currentOutputPosition;
        }

        /* Access modifiers changed, original: protected */
        public int getPreambleLength() {
            return NTLMEngineImpl.SIGNATURE.length + 4;
        }

        /* Access modifiers changed, original: 0000 */
        public String getResponse() {
            byte[] bArr;
            if (this.messageContents.length > this.currentOutputPosition) {
                byte[] bArr2 = new byte[this.currentOutputPosition];
                for (int i = 0; i < this.currentOutputPosition; i++) {
                    bArr2[i] = this.messageContents[i];
                }
                bArr = bArr2;
            } else {
                bArr = this.messageContents;
            }
            return EncodingUtils.getAsciiString(Base64.encodeBase64(bArr));
        }

        /* Access modifiers changed, original: protected */
        public void prepareResponse(int i, int i2) {
            this.messageContents = new byte[i];
            this.currentOutputPosition = 0;
            addBytes(NTLMEngineImpl.SIGNATURE);
            addULong(i2);
        }

        /* Access modifiers changed, original: protected */
        public byte readByte(int i) {
            if (this.messageContents.length >= i + 1) {
                return this.messageContents[i];
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        /* Access modifiers changed, original: protected */
        public void readBytes(byte[] bArr, int i) {
            if (this.messageContents.length < bArr.length + i) {
                throw new NTLMEngineException("NTLM: Message too short");
            }
            System.arraycopy(this.messageContents, i, bArr, 0, bArr.length);
        }

        /* Access modifiers changed, original: protected */
        public byte[] readSecurityBuffer(int i) {
            return NTLMEngineImpl.readSecurityBuffer(this.messageContents, i);
        }

        /* Access modifiers changed, original: protected */
        public int readULong(int i) {
            return NTLMEngineImpl.readULong(this.messageContents, i);
        }

        /* Access modifiers changed, original: protected */
        public int readUShort(int i) {
            return NTLMEngineImpl.readUShort(this.messageContents, i);
        }
    }

    static class Type1Message extends NTLMMessage {
        protected byte[] domainBytes;
        protected byte[] hostBytes;

        Type1Message(String str, String str2) {
            try {
                String access$400 = NTLMEngineImpl.convertHost(str2);
                String access$500 = NTLMEngineImpl.convertDomain(str);
                this.hostBytes = access$400.getBytes("UnicodeLittleUnmarked");
                this.domainBytes = access$500.toUpperCase().getBytes("UnicodeLittleUnmarked");
            } catch (UnsupportedEncodingException e) {
                throw new NTLMEngineException("Unicode unsupported: " + e.getMessage(), e);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public String getResponse() {
            prepareResponse((this.hostBytes.length + 32) + this.domainBytes.length, 1);
            addULong(537395765);
            addUShort(this.domainBytes.length);
            addUShort(this.domainBytes.length);
            addULong(this.hostBytes.length + 32);
            addUShort(this.hostBytes.length);
            addUShort(this.hostBytes.length);
            addULong(32);
            addBytes(this.hostBytes);
            addBytes(this.domainBytes);
            return super.getResponse();
        }
    }

    static class Type2Message extends NTLMMessage {
        protected byte[] challenge = new byte[8];
        protected int flags;
        protected String target;
        protected byte[] targetInfo;

        Type2Message(String str) {
            super(str, 2);
            readBytes(this.challenge, 24);
            this.flags = readULong(20);
            if ((this.flags & 1) == 0) {
                throw new NTLMEngineException("NTLM type 2 message has flags that make no sense: " + Integer.toString(this.flags));
            }
            byte[] readSecurityBuffer;
            this.target = null;
            if (getMessageLength() >= 20) {
                readSecurityBuffer = readSecurityBuffer(12);
                if (readSecurityBuffer.length != 0) {
                    try {
                        this.target = new String(readSecurityBuffer, "UnicodeLittleUnmarked");
                    } catch (UnsupportedEncodingException e) {
                        throw new NTLMEngineException(e.getMessage(), e);
                    }
                }
            }
            this.targetInfo = null;
            if (getMessageLength() >= 48) {
                readSecurityBuffer = readSecurityBuffer(40);
                if (readSecurityBuffer.length != 0) {
                    this.targetInfo = readSecurityBuffer;
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public byte[] getChallenge() {
            return this.challenge;
        }

        /* Access modifiers changed, original: 0000 */
        public int getFlags() {
            return this.flags;
        }

        /* Access modifiers changed, original: 0000 */
        public String getTarget() {
            return this.target;
        }

        /* Access modifiers changed, original: 0000 */
        public byte[] getTargetInfo() {
            return this.targetInfo;
        }
    }

    static class Type3Message extends NTLMMessage {
        protected byte[] domainBytes;
        protected byte[] hostBytes;
        protected byte[] lmResp;
        protected byte[] ntResp;
        protected int type2Flags;
        protected byte[] userBytes;

        Type3Message(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) {
            this.type2Flags = i;
            String access$400 = NTLMEngineImpl.convertHost(str2);
            String access$500 = NTLMEngineImpl.convertDomain(str);
            if (bArr2 != null && str5 != null) {
                try {
                    byte[] access$600 = NTLMEngineImpl.makeRandomChallenge();
                    this.ntResp = NTLMEngineImpl.getNTLMv2Response(str5, str3, str4, bArr, access$600, bArr2);
                    this.lmResp = NTLMEngineImpl.getLMv2Response(str5, str3, str4, bArr, access$600);
                } catch (NTLMEngineException e) {
                    this.ntResp = new byte[0];
                    this.lmResp = NTLMEngineImpl.getLMResponse(str4, bArr);
                }
            } else if ((524288 & i) != 0) {
                byte[] access$700 = NTLMEngineImpl.makeNTLM2RandomChallenge();
                this.ntResp = NTLMEngineImpl.getNTLM2SessionResponse(str4, bArr, access$700);
                this.lmResp = access$700;
            } else {
                this.ntResp = NTLMEngineImpl.getNTLMResponse(str4, bArr);
                this.lmResp = NTLMEngineImpl.getLMResponse(str4, bArr);
            }
            try {
                this.domainBytes = access$500.toUpperCase().getBytes("UnicodeLittleUnmarked");
                this.hostBytes = access$400.getBytes("UnicodeLittleUnmarked");
                this.userBytes = str3.getBytes("UnicodeLittleUnmarked");
            } catch (UnsupportedEncodingException e2) {
                throw new NTLMEngineException("Unicode not supported: " + e2.getMessage(), e2);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public String getResponse() {
            int length = this.ntResp.length;
            int length2 = this.lmResp.length;
            int length3 = this.domainBytes.length;
            int length4 = this.hostBytes.length;
            int length5 = this.userBytes.length;
            int i = 64 + length2;
            int i2 = i + length;
            int i3 = i2 + length3;
            int i4 = i3 + length5;
            int i5 = (i4 + length4) + 0;
            prepareResponse(i5, 3);
            addUShort(length2);
            addUShort(length2);
            addULong(64);
            addUShort(length);
            addUShort(length);
            addULong(i);
            addUShort(length3);
            addUShort(length3);
            addULong(i2);
            addUShort(length5);
            addUShort(length5);
            addULong(i3);
            addUShort(length4);
            addUShort(length4);
            addULong(i4);
            addULong(0);
            addULong(i5);
            addULong(((((536871429 | (this.type2Flags & 524288)) | (this.type2Flags & 16)) | (this.type2Flags & 32)) | (this.type2Flags & NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH)) | (this.type2Flags & 32768));
            addBytes(this.lmResp);
            addBytes(this.ntResp);
            addBytes(this.domainBytes);
            addBytes(this.userBytes);
            addBytes(this.hostBytes);
            return super.getResponse();
        }
    }

    static {
        SecureRandom secureRandom = null;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception e) {
        }
        RND_GEN = secureRandom;
        byte[] bytes = EncodingUtils.getBytes("NTLMSSP", "ASCII");
        SIGNATURE = new byte[(bytes.length + 1)];
        System.arraycopy(bytes, 0, SIGNATURE, 0, bytes.length);
        SIGNATURE[bytes.length] = (byte) 0;
    }

    NTLMEngineImpl() {
    }

    static int F(int i, int i2, int i3) {
        return (i & i2) | ((i ^ -1) & i3);
    }

    static int G(int i, int i2, int i3) {
        return ((i & i2) | (i & i3)) | (i2 & i3);
    }

    static int H(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    private static String convertDomain(String str) {
        return stripDotSuffix(str);
    }

    private static String convertHost(String str) {
        return stripDotSuffix(str);
    }

    private static byte[] createBlob(byte[] bArr, byte[] bArr2) {
        Object obj = new byte[]{(byte) 1, (byte) 1, (byte) 0, (byte) 0};
        Object obj2 = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0};
        Object obj3 = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0};
        long currentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * 10000;
        byte[] bArr3 = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr3[i] = (byte) ((int) currentTimeMillis);
            currentTimeMillis >>>= 8;
        }
        byte[] bArr4 = new byte[(((((obj.length + obj2.length) + bArr3.length) + 8) + obj3.length) + bArr2.length)];
        System.arraycopy(obj, 0, bArr4, 0, obj.length);
        int length = obj.length + 0;
        System.arraycopy(obj2, 0, bArr4, length, obj2.length);
        length += obj2.length;
        System.arraycopy(bArr3, 0, bArr4, length, bArr3.length);
        length += bArr3.length;
        System.arraycopy(bArr, 0, bArr4, length, 8);
        length += 8;
        System.arraycopy(obj3, 0, bArr4, length, obj3.length);
        System.arraycopy(bArr2, 0, bArr4, length + obj3.length, bArr2.length);
        return bArr4;
    }

    private static Key createDESKey(byte[] bArr, int i) {
        r0 = new byte[7];
        System.arraycopy(bArr, i, r0, 0, 7);
        byte[] bArr2 = new byte[]{r0[0], (byte) ((r0[0] << 7) | ((r0[1] & 255) >>> 1)), (byte) ((r0[1] << 6) | ((r0[2] & 255) >>> 2)), (byte) ((r0[2] << 5) | ((r0[3] & 255) >>> 3)), (byte) ((r0[3] << 4) | ((r0[4] & 255) >>> 4)), (byte) ((r0[4] << 3) | ((r0[5] & 255) >>> 5)), (byte) ((r0[5] << 2) | ((r0[6] & 255) >>> 6)), (byte) (r0[6] << 1)};
        oddParity(bArr2);
        return new SecretKeySpec(bArr2, "DES");
    }

    static byte[] getLMResponse(String str, byte[] bArr) {
        return lmResponse(lmHash(str), bArr);
    }

    static byte[] getLMv2Response(String str, String str2, String str3, byte[] bArr, byte[] bArr2) {
        return lmv2Response(ntlmv2Hash(str, str2, str3), bArr, bArr2);
    }

    static byte[] getNTLM2SessionResponse(String str, byte[] bArr, byte[] bArr2) {
        try {
            byte[] ntlmHash = ntlmHash(str);
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            instance.update(bArr2);
            byte[] bArr3 = new byte[8];
            System.arraycopy(instance.digest(), 0, bArr3, 0, 8);
            return lmResponse(ntlmHash, bArr3);
        } catch (Exception e) {
            if (e instanceof NTLMEngineException) {
                throw ((NTLMEngineException) e);
            }
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    static byte[] getNTLMResponse(String str, byte[] bArr) {
        return lmResponse(ntlmHash(str), bArr);
    }

    static byte[] getNTLMv2Response(String str, String str2, String str3, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return lmv2Response(ntlmv2Hash(str, str2, str3), bArr, createBlob(bArr2, bArr3));
    }

    private static byte[] lmHash(String str) {
        try {
            byte[] bytes = str.toUpperCase().getBytes("US-ASCII");
            byte[] bArr = new byte[14];
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 14));
            Key createDESKey = createDESKey(bArr, 0);
            Key createDESKey2 = createDESKey(bArr, 7);
            bArr = "KGS!@#$%".getBytes("US-ASCII");
            Cipher instance = Cipher.getInstance("DES/ECB/NoPadding");
            instance.init(1, createDESKey);
            bytes = instance.doFinal(bArr);
            instance.init(1, createDESKey2);
            byte[] doFinal = instance.doFinal(bArr);
            bArr = new byte[16];
            System.arraycopy(bytes, 0, bArr, 0, 8);
            System.arraycopy(doFinal, 0, bArr, 8, 8);
            return bArr;
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    private static byte[] lmResponse(byte[] bArr, byte[] bArr2) {
        try {
            byte[] bArr3 = new byte[21];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            Key createDESKey = createDESKey(bArr3, 0);
            Key createDESKey2 = createDESKey(bArr3, 7);
            Key createDESKey3 = createDESKey(bArr3, 14);
            Cipher instance = Cipher.getInstance("DES/ECB/NoPadding");
            instance.init(1, createDESKey);
            byte[] doFinal = instance.doFinal(bArr2);
            instance.init(1, createDESKey2);
            byte[] doFinal2 = instance.doFinal(bArr2);
            instance.init(1, createDESKey3);
            bArr3 = instance.doFinal(bArr2);
            byte[] bArr4 = new byte[24];
            System.arraycopy(doFinal, 0, bArr4, 0, 8);
            System.arraycopy(doFinal2, 0, bArr4, 8, 8);
            System.arraycopy(bArr3, 0, bArr4, 16, 8);
            return bArr4;
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    private static byte[] lmv2Response(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        HMACMD5 hmacmd5 = new HMACMD5(bArr);
        hmacmd5.update(bArr2);
        hmacmd5.update(bArr3);
        byte[] output = hmacmd5.getOutput();
        byte[] bArr4 = new byte[(output.length + bArr3.length)];
        System.arraycopy(output, 0, bArr4, 0, output.length);
        System.arraycopy(bArr3, 0, bArr4, output.length, bArr3.length);
        return bArr4;
    }

    private static byte[] makeNTLM2RandomChallenge() {
        if (RND_GEN == null) {
            throw new NTLMEngineException("Random generator not available");
        }
        byte[] bArr = new byte[24];
        synchronized (RND_GEN) {
            RND_GEN.nextBytes(bArr);
        }
        Arrays.fill(bArr, 8, 24, (byte) 0);
        return bArr;
    }

    private static byte[] makeRandomChallenge() {
        if (RND_GEN == null) {
            throw new NTLMEngineException("Random generator not available");
        }
        byte[] bArr = new byte[8];
        synchronized (RND_GEN) {
            RND_GEN.nextBytes(bArr);
        }
        return bArr;
    }

    private static byte[] ntlmHash(String str) {
        try {
            byte[] bytes = str.getBytes("UnicodeLittleUnmarked");
            MD4 md4 = new MD4();
            md4.update(bytes);
            return md4.getOutput();
        } catch (UnsupportedEncodingException e) {
            throw new NTLMEngineException("Unicode not supported: " + e.getMessage(), e);
        }
    }

    private static byte[] ntlmv2Hash(String str, String str2, String str3) {
        try {
            HMACMD5 hmacmd5 = new HMACMD5(ntlmHash(str3));
            hmacmd5.update(str2.toUpperCase().getBytes("UnicodeLittleUnmarked"));
            hmacmd5.update(str.getBytes("UnicodeLittleUnmarked"));
            return hmacmd5.getOutput();
        } catch (UnsupportedEncodingException e) {
            throw new NTLMEngineException("Unicode not supported! " + e.getMessage(), e);
        }
    }

    private static void oddParity(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            if (((((b >>> 1) ^ ((((((b >>> 7) ^ (b >>> 6)) ^ (b >>> 5)) ^ (b >>> 4)) ^ (b >>> 3)) ^ (b >>> 2))) & 1) == 0 ? 1 : null) != null) {
                bArr[i] = (byte) (bArr[i] | 1);
            } else {
                bArr[i] = (byte) (bArr[i] & -2);
            }
        }
    }

    private static byte[] readSecurityBuffer(byte[] bArr, int i) {
        int readUShort = readUShort(bArr, i);
        int readULong = readULong(bArr, i + 4);
        if (bArr.length < readULong + readUShort) {
            throw new NTLMEngineException("NTLM authentication - buffer too small for data item");
        }
        byte[] bArr2 = new byte[readUShort];
        System.arraycopy(bArr, readULong, bArr2, 0, readUShort);
        return bArr2;
    }

    private static int readULong(byte[] bArr, int i) {
        if (bArr.length >= i + 4) {
            return (((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8)) | ((bArr[i + 2] & 255) << 16)) | ((bArr[i + 3] & 255) << 24);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for DWORD");
    }

    private static int readUShort(byte[] bArr, int i) {
        if (bArr.length >= i + 2) {
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for WORD");
    }

    static int rotintlft(int i, int i2) {
        return (i << i2) | (i >>> (32 - i2));
    }

    private static String stripDotSuffix(String str) {
        int indexOf = str.indexOf(".");
        return indexOf != -1 ? str.substring(0, indexOf) : str;
    }

    static void writeULong(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
        bArr[i2 + 2] = (byte) ((i >> 16) & 255);
        bArr[i2 + 3] = (byte) ((i >> 24) & 255);
    }

    public String generateType1Msg(String str, String str2) {
        return getType1Message(str2, str);
    }

    public String generateType3Msg(String str, String str2, String str3, String str4, String str5) {
        Type2Message type2Message = new Type2Message(str5);
        return getType3Message(str, str2, str4, str3, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }

    /* Access modifiers changed, original: 0000 */
    public String getCredentialCharset() {
        return this.credentialCharset;
    }

    /* Access modifiers changed, original: final */
    public final String getResponseFor(String str, String str2, String str3, String str4, String str5) {
        if (str == null || str.trim().equals("")) {
            return getType1Message(str4, str5);
        }
        Type2Message type2Message = new Type2Message(str);
        return getType3Message(str2, str3, str4, str5, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }

    /* Access modifiers changed, original: 0000 */
    public String getType1Message(String str, String str2) {
        return new Type1Message(str2, str).getResponse();
    }

    /* Access modifiers changed, original: 0000 */
    public String getType3Message(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) {
        return new Type3Message(str4, str3, str, str2, bArr, i, str5, bArr2).getResponse();
    }

    /* Access modifiers changed, original: 0000 */
    public void setCredentialCharset(String str) {
        this.credentialCharset = str;
    }
}
