package defpackage;

/* JADX INFO: loaded from: classes.dex */
final class bn implements wk {
    bn() {
    }

    @Override // defpackage.wk
    public String a(int i) {
        double d = ((double) i) / 100.0d;
        double d2 = d / 1000.0d;
        if (d2 > 0.5d) {
            return vr.c.format(d2) + " km";
        }
        if (d > 0.5d) {
            return vr.c.format(d) + " m";
        }
        return i + " cm";
    }
}
