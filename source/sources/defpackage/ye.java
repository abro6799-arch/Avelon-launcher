package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ye extends gm {
    public ye(int i) {
        super(i);
        this.bg = 1;
        e(64);
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        int i5 = i4 == 0 ? i2 - 1 : i2;
        if (i4 == 1) {
            i5++;
        }
        int i6 = i5;
        int i7 = i4 == 2 ? i3 - 1 : i3;
        if (i4 == 3) {
            i7++;
        }
        int i8 = i7;
        int i9 = i4 == 4 ? i - 1 : i;
        if (i4 == 5) {
            i9++;
        }
        int i10 = i9;
        if (fdVar.a(i10, i6, i8) == 0) {
            fdVar.a(((double) i10) + 0.5d, ((double) i6) + 0.5d, ((double) i8) + 0.5d, "fire.ignite", 1.0f, (b.nextFloat() * 0.4f) + 0.8f);
            fdVar.f(i10, i6, i8, uu.as.bn);
        }
        izVar.a(1, gsVar);
        return true;
    }
}
