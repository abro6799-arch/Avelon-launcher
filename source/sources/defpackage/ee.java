package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ee extends uu {
    public static int d(int i) {
        return (~i) & 15;
    }

    public static int e(int i) {
        return (~i) & 15;
    }

    @Override // defpackage.uu
    protected int b_(int i) {
        return i;
    }

    public ee() {
        super(35, 64, ln.l);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i2 == 0) {
            return this.bm;
        }
        int i3 = ~(i2 & 15);
        return ((i3 & 8) >> 3) + 113 + ((i3 & 7) * 16);
    }
}
