package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ab extends ke {
    private final ht i;

    public ab(int i, int i2, int i3, String str) {
        this(i, i2, i3, null, str);
    }

    public ab(int i, int i2, int i3, int i4, int i5, String str) {
        super(i, i2, i3, i4, i5, str);
        this.i = null;
    }

    public ab(int i, int i2, int i3, ht htVar, String str) {
        super(i, i2, i3, 150, 20, str);
        this.i = htVar;
    }

    public ht a() {
        return this.i;
    }
}
