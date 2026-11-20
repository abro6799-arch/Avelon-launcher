package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class sy extends xd {
    public sy(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        super(fdVar, d, d2, d3);
        this.h = 0.04f;
        this.b++;
        if (d5 == 0.0d) {
            if (d4 == 0.0d && d6 == 0.0d) {
                return;
            }
            this.aP = d4;
            this.aQ = d5 + 0.1d;
            this.aR = d6;
        }
    }
}
