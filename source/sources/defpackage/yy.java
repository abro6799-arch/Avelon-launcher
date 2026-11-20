package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class yy {
    public final int a;
    public final int b;

    public static int a(int i, int i2) {
        return ((i & 32767) << 16) | (i < 0 ? Integer.MIN_VALUE : 0) | (i2 < 0 ? 32768 : 0) | (i2 & 32767);
    }

    public yy(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public int hashCode() {
        return a(this.a, this.b);
    }

    public boolean equals(Object obj) {
        yy yyVar = (yy) obj;
        return yyVar.a == this.a && yyVar.b == this.b;
    }
}
