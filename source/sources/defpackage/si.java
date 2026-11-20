package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class si {
    public final gs a;
    final /* synthetic */ iu d;
    public int[] b = new int[128];
    public int[] c = new int[128];
    private int e = 0;
    private int f = 0;

    public si(iu iuVar, gs gsVar) {
        this.d = iuVar;
        this.a = gsVar;
        int i = 0;
        while (true) {
            int[] iArr = this.b;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = 0;
            this.c[i] = 127;
            i++;
        }
    }
}
