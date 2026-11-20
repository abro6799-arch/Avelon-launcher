package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wq extends ls {
    @Override // defpackage.ls, defpackage.sn
    protected void b(float f) {
    }

    @Override // defpackage.ls
    public boolean p() {
        return false;
    }

    public wq(fd fdVar) {
        super(fdVar);
    }

    @Override // defpackage.ls
    public void a_(float f, float f2) {
        float f3;
        if (ag()) {
            a(f, f2, 0.02f);
            b(this.aP, this.aQ, this.aR);
            this.aP *= 0.800000011920929d;
            this.aQ *= 0.800000011920929d;
            this.aR *= 0.800000011920929d;
        } else if (ah()) {
            a(f, f2, 0.02f);
            b(this.aP, this.aQ, this.aR);
            this.aP *= 0.5d;
            this.aQ *= 0.5d;
            this.aR *= 0.5d;
        } else {
            float f4 = 0.54600006f;
            if (this.aX) {
                int iA = this.aI.a(in.b(this.aM), in.b(this.aW.b) - 1, in.b(this.aO));
                f3 = iA > 0 ? uu.m[iA].bB * 0.91f : 0.54600006f;
            } else {
                f3 = 0.91f;
            }
            a(f, f2, this.aX ? 0.1f * (0.16277136f / ((f3 * f3) * f3)) : 0.02f);
            if (this.aX) {
                int iA2 = this.aI.a(in.b(this.aM), in.b(this.aW.b) - 1, in.b(this.aO));
                if (iA2 > 0) {
                    f4 = uu.m[iA2].bB * 0.91f;
                }
            } else {
                f4 = 0.91f;
            }
            b(this.aP, this.aQ, this.aR);
            double d = f4;
            this.aP *= d;
            this.aQ *= d;
            this.aR *= d;
        }
        this.ak = this.al;
        double d2 = this.aM - this.aJ;
        double d3 = this.aO - this.aL;
        float fA = in.a((d2 * d2) + (d3 * d3)) * 4.0f;
        if (fA > 1.0f) {
            fA = 1.0f;
        }
        this.al += (fA - this.al) * 0.4f;
        this.am += this.al;
    }
}
