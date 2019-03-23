package org.apache.http.client.utils;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

@Immutable
public class URLEncodedUtils {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final String PARAMETER_SEPARATOR = "&";

    private static String decode(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    private static String encode(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (NameValuePair nameValuePair : list) {
            String encode = encode(nameValuePair.getName(), str);
            String value = nameValuePair.getValue();
            value = value != null ? encode(value, str) : "";
            if (stringBuilder.length() > 0) {
                stringBuilder.append(PARAMETER_SEPARATOR);
            }
            stringBuilder.append(encode);
            stringBuilder.append(NAME_VALUE_SEPARATOR);
            stringBuilder.append(value);
        }
        return stringBuilder.toString();
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType == null) {
            return false;
        }
        HeaderElement[] elements = contentType.getElements();
        return elements.length > 0 ? elements[0].getName().equalsIgnoreCase(CONTENT_TYPE) : false;
    }

    public static List<NameValuePair> parse(URI uri, String str) {
        List emptyList = Collections.emptyList();
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null || rawQuery.length() <= 0) {
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        parse(arrayList, new Scanner(rawQuery), str);
        return arrayList;
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) {
        String name;
        String str = null;
        List emptyList = Collections.emptyList();
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            HeaderElement[] elements = contentType.getElements();
            if (elements.length > 0) {
                HeaderElement headerElement = elements[0];
                name = headerElement.getName();
                NameValuePair parameterByName = headerElement.getParameterByName("charset");
                if (parameterByName != null) {
                    str = parameterByName.getValue();
                }
                if (name == null && name.equalsIgnoreCase(CONTENT_TYPE)) {
                    name = EntityUtils.toString(httpEntity, HTTP.ASCII);
                    if (name == null || name.length() <= 0) {
                        return emptyList;
                    }
                    ArrayList arrayList = new ArrayList();
                    parse(arrayList, new Scanner(name), str);
                    return arrayList;
                }
            }
        }
        name = null;
        return name == null ? emptyList : emptyList;
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        scanner.useDelimiter(PARAMETER_SEPARATOR);
        while (scanner.hasNext()) {
            String[] split = scanner.next().split(NAME_VALUE_SEPARATOR);
            if (split.length == 0 || split.length > 2) {
                throw new IllegalArgumentException("bad parameter");
            }
            String decode = decode(split[0], str);
            String str2 = null;
            if (split.length == 2) {
                str2 = decode(split[1], str);
            }
            list.add(new BasicNameValuePair(decode, str2));
        }
    }
}
