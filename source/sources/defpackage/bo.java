package defpackage;

/* JADX INFO: loaded from: classes.dex */
final class bo implements wk {
    bo() {
    }

    @Override // defpackage.wk
    public String a(int i) {
        double d = ((double) i) / 20.0d;
        double d2 = d / 60.0d;
        double d3 = d2 / 60.0d;
        double d4 = d3 / 24.0d;
        double d5 = d4 / 365.0d;
        if (d5 > 0.5d) {
            return vr.c.format(d5) + " y";
        }
        if (d4 > 0.5d) {
            return vr.c.format(d4) + " d";
        }
        if (d3 > 0.5d) {
            return vr.c.format(d3) + " h";
        }
        if (d2 > 0.5d) {
            return vr.c.format(d2) + " m";
        }
        return d + " s";
    }
}
