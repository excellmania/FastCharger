package com.google.android.a;

import java.nio.ByteBuffer;

public final class u {
    public final d a = new d();
    public ByteBuffer b;
    public int c;
    public int d;
    public long e;
    private final int f;

    public u(int i) {
        this.f = i;
    }

    private ByteBuffer b(int i) {
        if (this.f == 1) {
            return ByteBuffer.allocate(i);
        }
        if (this.f == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        throw new IllegalStateException("Buffer too small (" + (this.b == null ? 0 : this.b.capacity()) + " < " + i + ")");
    }

    public void a(int i) {
        if (this.b == null) {
            this.b = b(i);
            return;
        }
        int capacity = this.b.capacity();
        int position = this.b.position();
        int i2 = position + i;
        if (capacity < i2) {
            ByteBuffer b = b(i2);
            if (position > 0) {
                this.b.position(0);
                this.b.limit(position);
                b.put(this.b);
            }
            this.b = b;
        }
    }

    public boolean a() {
        return (this.d & 2) != 0;
    }

    public boolean b() {
        return (this.d & 134217728) != 0;
    }

    public boolean c() {
        return (this.d & 1) != 0;
    }

    public void d() {
        if (this.b != null) {
            this.b.clear();
        }
    }
}
