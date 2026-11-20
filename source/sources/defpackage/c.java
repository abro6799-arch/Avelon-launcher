package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends yu {
    public long a;
    private int b;
    private int c;

    @Override // defpackage.sn
    protected void a(nu nuVar) {
    }

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    protected void b(nu nuVar) {
    }

    public c(fd fdVar, double d, double d2, double d3) {
        super(fdVar);
        this.a = 0L;
        c(d, d2, d3, 0.0f, 0.0f);
        this.b = 2;
        this.a = this.bs.nextLong();
        this.c = this.bs.nextInt(3) + 1;
        if (fdVar.q < 2 || !fdVar.b(in.b(d), in.b(d2), in.b(d3), 10)) {
            return;
        }
        int iB = in.b(d);
        int iB2 = in.b(d2);
        int iB3 = in.b(d3);
        if (fdVar.a(iB, iB2, iB3) == 0 && uu.as.a(fdVar, iB, iB2, iB3)) {
            fdVar.f(iB, iB2, iB3, uu.as.bn);
        }
        for (int i = 0; i < 4; i++) {
            int iB4 = (in.b(d) + this.bs.nextInt(3)) - 1;
            int iB5 = (in.b(d2) + this.bs.nextInt(3)) - 1;
            int iB6 = (in.b(d3) + this.bs.nextInt(3)) - 1;
            if (fdVar.a(iB4, iB5, iB6) == 0 && uu.as.a(fdVar, iB4, iB5, iB6)) {
                fdVar.f(iB4, iB5, iB6, uu.as.bn);
            }
        }
    }

    @Override // defpackage.sn
    public void w_() {
        super.w_();
        if (this.b == 2) {
            this.aI.a(this.aM, this.aN, this.aO, "ambient.weather.thunder", 10000.0f, 0.8f + (this.bs.nextFloat() * 0.2f));
            this.aI.a(this.aM, this.aN, this.aO, "random.explode", 2.0f, (this.bs.nextFloat() * 0.2f) + 0.5f);
        }
        int i = this.b - 1;
        this.b = i;
        if (i < 0) {
            if (this.c == 0) {
                K();
            } else if (i < (-this.bs.nextInt(10))) {
                this.c--;
                this.b = 1;
                this.a = this.bs.nextLong();
                if (this.aI.b(in.b(this.aM), in.b(this.aN), in.b(this.aO), 10)) {
                    int iB = in.b(this.aM);
                    int iB2 = in.b(this.aN);
                    int iB3 = in.b(this.aO);
                    if (this.aI.a(iB, iB2, iB3) == 0 && uu.as.a(this.aI, iB, iB2, iB3)) {
                        this.aI.f(iB, iB2, iB3, uu.as.bn);
                    }
                }
            }
        }
        if (this.b >= 0) {
            List listB = this.aI.b(this, eq.b(this.aM - 3.0d, this.aN - 3.0d, this.aO - 3.0d, this.aM + 3.0d, this.aN + 6.0d + 3.0d, this.aO + 3.0d));
            for (int i2 = 0; i2 < listB.size(); i2++) {
                ((sn) listB.get(i2)).a(this);
            }
            this.aI.n = 2;
        }
    }

    @Override // defpackage.sn
    public boolean a(bt btVar) {
        return this.b >= 0;
    }
}
