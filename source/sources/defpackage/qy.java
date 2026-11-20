package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class qy implements Comparable {
    private static long f;
    public int a;
    public int b;
    public int c;
    public int d;
    public long e;
    private long g;

    public qy(int i, int i2, int i3, int i4) {
        long j = f;
        f = 1 + j;
        this.g = j;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof qy)) {
            return false;
        }
        qy qyVar = (qy) obj;
        return this.a == qyVar.a && this.b == qyVar.b && this.c == qyVar.c && this.d == qyVar.d;
    }

    public int hashCode() {
        return (((this.a * 128 * 1024) + (this.c * 128) + this.b) * Keyboard.KEYBOARD_SIZE) + this.d;
    }

    public qy a(long j) {
        this.e = j;
        return this;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(qy qyVar) {
        long j = this.e;
        long j2 = qyVar.e;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        long j3 = this.g;
        long j4 = qyVar.g;
        if (j3 < j4) {
            return -1;
        }
        return j3 > j4 ? 1 : 0;
    }
}
