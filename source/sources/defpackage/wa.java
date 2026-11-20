package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wa extends gm {
    private static final int[] bn = {3, 8, 6, 3};
    private static final int[] bo = {11, 16, 15, 13};
    public final int a;
    public final int bk;
    public final int bl;
    public final int bm;

    public wa(int i, int i2, int i3, int i4) {
        super(i);
        this.a = i2;
        this.bk = i4;
        this.bm = i3;
        this.bl = bn[i4];
        e((bo[i4] * 3) << i2);
        this.bg = 1;
    }
}
