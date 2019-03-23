package org.apache.http.impl.cookie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.apache.http.annotation.Immutable;

@Immutable
public class PublicSuffixListParser {
    private static final int MAX_LINE_LEN = 256;
    private final PublicSuffixFilter filter;

    PublicSuffixListParser(PublicSuffixFilter publicSuffixFilter) {
        this.filter = publicSuffixFilter;
    }

    private boolean readLine(Reader reader, StringBuilder stringBuilder) {
        stringBuilder.setLength(0);
        int i = 0;
        do {
            int read = reader.read();
            if (read != -1) {
                char c = (char) read;
                if (c != 10) {
                    if (Character.isWhitespace(c)) {
                        i = 1;
                    }
                    if (i == 0) {
                        stringBuilder.append(c);
                    }
                }
            }
            return read != -1;
        } while (stringBuilder.length() <= 256);
        throw new IOException("Line too long");
    }

    public void parse(Reader reader) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(reader);
        StringBuilder stringBuilder = new StringBuilder(256);
        int i = 1;
        while (i != 0) {
            boolean readLine = readLine(bufferedReader, stringBuilder);
            Object stringBuilder2 = stringBuilder.toString();
            if (stringBuilder2.length() == 0) {
                i = readLine;
            } else if (stringBuilder2.startsWith("//")) {
                i = readLine;
            } else {
                if (stringBuilder2.startsWith(".")) {
                    stringBuilder2 = stringBuilder2.substring(1);
                }
                boolean startsWith = stringBuilder2.startsWith("!");
                if (startsWith) {
                    stringBuilder2 = stringBuilder2.substring(1);
                }
                if (startsWith) {
                    arrayList2.add(stringBuilder2);
                } else {
                    arrayList.add(stringBuilder2);
                }
                i = readLine;
            }
        }
        this.filter.setPublicSuffixes(arrayList);
        this.filter.setExceptions(arrayList2);
    }
}
