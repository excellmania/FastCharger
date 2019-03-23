package com.facebook.ads.internal.g.b;

import android.text.TextUtils;
import com.facebook.ads.internal.g.b.a.b;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import org.apache.http.protocol.HTTP;

class e extends k {
    private final h a;
    private final b b;
    private b c;

    public e(h hVar, b bVar) {
        super(hVar, bVar);
        this.b = bVar;
        this.a = hVar;
    }

    private void a(OutputStream outputStream, long j) {
        byte[] bArr = new byte[8192];
        while (true) {
            int a = a(bArr, j, bArr.length);
            if (a != -1) {
                outputStream.write(bArr, 0, a);
                j += (long) a;
            } else {
                outputStream.flush();
                return;
            }
        }
    }

    private boolean a(d dVar) {
        int a = this.a.a();
        boolean z = a > 0;
        int a2 = this.b.a();
        if (z && dVar.c) {
            if (((float) dVar.b) > (((float) a) * 0.2f) + ((float) a2)) {
                return false;
            }
        }
        return true;
    }

    private String b(d dVar) {
        int i = !TextUtils.isEmpty(this.a.c()) ? 1 : 0;
        int a = this.b.d() ? this.b.a() : this.a.a();
        int i2 = a >= 0 ? 1 : 0;
        long j = dVar.c ? ((long) a) - dVar.b : (long) a;
        int i3 = (i2 == 0 || !dVar.c) ? 0 : 1;
        return (dVar.c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n") + "Accept-Ranges: bytes\n" + (i2 != 0 ? String.format("Content-Length: %d\n", new Object[]{Long.valueOf(j)}) : "") + (i3 != 0 ? String.format("Content-Range: bytes %d-%d/%d\n", new Object[]{Long.valueOf(dVar.b), Integer.valueOf(a - 1), Integer.valueOf(a)}) : "") + (i != 0 ? String.format("Content-Type: %s\n", new Object[]{r9}) : "") + "\n";
    }

    private void b(OutputStream outputStream, long j) {
        try {
            h hVar = new h(this.a);
            hVar.a((int) j);
            byte[] bArr = new byte[8192];
            while (true) {
                int a = hVar.a(bArr);
                if (a == -1) {
                    break;
                }
                outputStream.write(bArr, 0, a);
                j += (long) a;
            }
            outputStream.flush();
        } finally {
            this.a.b();
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(int i) {
        if (this.c != null) {
            this.c.a(this.b.a, this.a.a, i);
        }
    }

    public void a(b bVar) {
        this.c = bVar;
    }

    public void a(d dVar, Socket socket) {
        OutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(dVar).getBytes(HTTP.UTF_8));
        long j = dVar.b;
        if (a(dVar)) {
            a(bufferedOutputStream, j);
        } else {
            b(bufferedOutputStream, j);
        }
    }
}
