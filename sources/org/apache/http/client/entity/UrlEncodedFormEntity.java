package org.apache.http.client.entity;

import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.StringEntity;

@NotThreadSafe
public class UrlEncodedFormEntity extends StringEntity {
    public UrlEncodedFormEntity(List<? extends NameValuePair> list) {
        this(list, "ISO-8859-1");
    }

    public UrlEncodedFormEntity(List<? extends NameValuePair> list, String str) {
        super(URLEncodedUtils.format(list, str), str);
        StringBuilder append = new StringBuilder().append("application/x-www-form-urlencoded; charset=");
        if (str == null) {
            str = "ISO-8859-1";
        }
        setContentType(append.append(str).toString());
    }
}
