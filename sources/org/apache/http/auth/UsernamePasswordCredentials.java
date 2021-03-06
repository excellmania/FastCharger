package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.LangUtils;

@Immutable
public class UsernamePasswordCredentials implements Serializable, Credentials {
    private static final long serialVersionUID = 243343858802739403L;
    private final String password;
    private final BasicUserPrincipal principal;

    public UsernamePasswordCredentials(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Username:password string may not be null");
        }
        int indexOf = str.indexOf(58);
        if (indexOf >= 0) {
            this.principal = new BasicUserPrincipal(str.substring(0, indexOf));
            this.password = str.substring(indexOf + 1);
            return;
        }
        this.principal = new BasicUserPrincipal(str);
        this.password = null;
    }

    public UsernamePasswordCredentials(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Username may not be null");
        }
        this.principal = new BasicUserPrincipal(str);
        this.password = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsernamePasswordCredentials) {
            if (LangUtils.equals(this.principal, ((UsernamePasswordCredentials) obj).principal)) {
                return true;
            }
        }
        return false;
    }

    public String getPassword() {
        return this.password;
    }

    public String getUserName() {
        return this.principal.getName();
    }

    public Principal getUserPrincipal() {
        return this.principal;
    }

    public int hashCode() {
        return this.principal.hashCode();
    }

    public String toString() {
        return this.principal.toString();
    }
}
