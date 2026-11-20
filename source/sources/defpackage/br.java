package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class br implements Comparable {
    public int a;
    public int b;
    public int c;

    public br() {
    }

    public br(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public br(br brVar) {
        this.a = brVar.a;
        this.b = brVar.b;
        this.c = brVar.c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof br)) {
            return false;
        }
        br brVar = (br) obj;
        return this.a == brVar.a && this.b == brVar.b && this.c == brVar.c;
    }

    public int hashCode() {
        return ((this.a + this.c) << (this.b + 8)) << 16;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(br brVar) {
        int i = this.b;
        int i2 = brVar.b;
        if (i != i2) {
            return i - i2;
        }
        int i3 = this.c;
        int i4 = brVar.c;
        return i3 == i4 ? this.a - brVar.a : i3 - i4;
    }

    public double a(int i, int i2, int i3) {
        int i4 = this.a - i;
        int i5 = this.b - i2;
        int i6 = this.c - i3;
        return Math.sqrt((i4 * i4) + (i5 * i5) + (i6 * i6));
    }
}
