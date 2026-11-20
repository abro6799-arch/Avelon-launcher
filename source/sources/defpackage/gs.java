package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class gs extends ls {
    protected boolean A;
    public float B;
    public float C;
    public lx D;
    private int a;
    private br b;
    private br bN;
    private int bO;
    public ix c;
    public dw d;
    public dw e;
    public byte f;
    public int g;
    public float h;
    public float i;
    public boolean j;
    public int k;
    public String l;
    public int m;
    public String n;
    public double o;
    public double p;
    public double q;
    public double r;
    public double s;
    public double t;
    protected boolean u;
    public br v;
    public float w;
    public float x;
    public float y;
    public int z;

    protected boolean F() {
        return false;
    }

    public void a(int i, int i2, int i3) {
    }

    public void a(az azVar) {
    }

    public void a(lw lwVar) {
    }

    public void a(sk skVar) {
    }

    public void a(vr vrVar, int i) {
    }

    public void a(yk ykVar) {
    }

    public void b(iz izVar) {
    }

    public void b(String str) {
    }

    public void b(sn snVar, int i) {
    }

    public void p_() {
    }

    public abstract void v();

    @Override // defpackage.ls, defpackage.sn
    public float w() {
        return 0.12f;
    }

    public gs(fd fdVar) {
        super(fdVar);
        ix ixVar = new ix(this);
        this.c = ixVar;
        this.f = (byte) 0;
        this.g = 0;
        this.j = false;
        this.k = 0;
        this.z = 20;
        this.A = false;
        this.bO = 0;
        this.D = null;
        aa aaVar = new aa(ixVar, !fdVar.B);
        this.d = aaVar;
        this.e = aaVar;
        this.bf = 1.62f;
        br brVarU = fdVar.u();
        c(((double) brVarU.a) + 0.5d, brVarU.b + 1, ((double) brVarU.c) + 0.5d, 0.0f, 0.0f);
        this.Y = 20;
        this.R = "humanoid";
        this.Q = 180.0f;
        this.bu = 20;
        this.O = "/mob/char.png";
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b() {
        super.b();
        this.bD.a(16, (Object) (byte) 0);
    }

    @Override // defpackage.ls, defpackage.sn
    public void w_() {
        dw dwVar;
        if (N()) {
            int i = this.a + 1;
            this.a = i;
            if (i > 100) {
                this.a = 100;
            }
            if (!this.aI.B) {
                if (!am()) {
                    a(true, true, false);
                } else if (this.aI.f()) {
                    a(false, true, true);
                }
            }
        } else {
            int i2 = this.a;
            if (i2 > 0) {
                int i3 = i2 + 1;
                this.a = i3;
                if (i3 >= 110) {
                    this.a = 0;
                }
            }
        }
        super.w_();
        if (!this.aI.B && (dwVar = this.e) != null && !dwVar.b(this)) {
            r();
            this.e = this.d;
        }
        this.o = this.r;
        this.p = this.s;
        this.q = this.t;
        double d = this.aM - this.r;
        double d2 = this.aN - this.s;
        double d3 = this.aO - this.t;
        if (d > 10.0d) {
            double d4 = this.aM;
            this.r = d4;
            this.o = d4;
        }
        if (d3 > 10.0d) {
            double d5 = this.aO;
            this.t = d5;
            this.q = d5;
        }
        if (d2 > 10.0d) {
            double d6 = this.aN;
            this.s = d6;
            this.p = d6;
        }
        if (d < -10.0d) {
            double d7 = this.aM;
            this.r = d7;
            this.o = d7;
        }
        if (d3 < -10.0d) {
            double d8 = this.aO;
            this.t = d8;
            this.q = d8;
        }
        if (d2 < -10.0d) {
            double d9 = this.aN;
            this.s = d9;
            this.p = d9;
        }
        this.r += d * 0.25d;
        this.t += d3 * 0.25d;
        this.s += d2 * 0.25d;
        a(jl.k, 1);
        if (this.aH == null) {
            this.bN = null;
        }
    }

    @Override // defpackage.ls
    protected boolean y() {
        return this.Y <= 0 || N();
    }

    protected void r() {
        this.e = this.d;
    }

    @Override // defpackage.sn
    public void u_() {
        String str = "http://s3.amazonaws.com/MinecraftCloaks/" + this.l + ".png";
        this.n = str;
        this.bB = str;
    }

    @Override // defpackage.ls, defpackage.sn
    public void s_() {
        double d = this.aM;
        double d2 = this.aN;
        double d3 = this.aO;
        super.s_();
        this.h = this.i;
        this.i = 0.0f;
        j(this.aM - d, this.aN - d2, this.aO - d3);
    }

    @Override // defpackage.sn
    public void t_() {
        this.bf = 1.62f;
        b(0.6f, 1.8f);
        super.t_();
        this.Y = 20;
        this.ad = 0;
    }

    @Override // defpackage.ls
    protected void f_() {
        if (this.j) {
            int i = this.k + 1;
            this.k = i;
            if (i >= 8) {
                this.k = 0;
                this.j = false;
            }
        } else {
            this.k = 0;
        }
        this.X = this.k / 8.0f;
    }

    @Override // defpackage.ls
    public void o() {
        List listB;
        if (this.aI.q == 0 && this.Y < 20 && (this.bt % 20) * 12 == 0) {
            c(1);
        }
        this.c.e();
        this.h = this.i;
        super.o();
        float fA = in.a((this.aP * this.aP) + (this.aR * this.aR));
        float fAtan = ((float) Math.atan((-this.aQ) * 0.20000000298023224d)) * 15.0f;
        if (fA > 0.1f) {
            fA = 0.1f;
        }
        if (!this.aX || this.Y <= 0) {
            fA = 0.0f;
        }
        if (this.aX || this.Y <= 0) {
            fAtan = 0.0f;
        }
        float f = this.i;
        this.i = f + ((fA - f) * 0.4f);
        this.ag += (fAtan - this.ag) * 0.8f;
        if (this.Y <= 0 || (listB = this.aI.b(this, this.aW.b(1.0d, 0.0d, 1.0d))) == null) {
            return;
        }
        for (int i = 0; i < listB.size(); i++) {
            sn snVar = (sn) listB.get(i);
            if (!snVar.be) {
                j(snVar);
            }
        }
    }

    private void j(sn snVar) {
        snVar.b(this);
    }

    public int C() {
        return this.g;
    }

    @Override // defpackage.ls
    public void b(sn snVar) {
        super.b(snVar);
        b(0.2f, 0.2f);
        e(this.aM, this.aN, this.aO);
        this.aQ = 0.10000000149011612d;
        if (this.l.equals("Notch")) {
            a(new iz(gm.h, 1), true);
        }
        this.c.g();
        if (snVar != null) {
            this.aP = (-in.b(((this.ac + this.aS) * 3.1415927f) / 180.0f)) * 0.1f;
            this.aR = (-in.a(((this.ac + this.aS) * 3.1415927f) / 180.0f)) * 0.1f;
        } else {
            this.aR = 0.0d;
            this.aP = 0.0d;
        }
        this.bf = 0.1f;
        a(jl.y, 1);
    }

    @Override // defpackage.sn
    public void c(sn snVar, int i) {
        this.g += i;
        if (snVar instanceof gs) {
            a(jl.A, 1);
        } else {
            a(jl.z, 1);
        }
    }

    public void D() {
        ix ixVar = this.c;
        a(ixVar.a(ixVar.c, 1), false);
    }

    public void a(iz izVar) {
        a(izVar, false);
    }

    public void a(iz izVar, boolean z) {
        if (izVar == null) {
            return;
        }
        hl hlVar = new hl(this.aI, this.aM, (this.aN - 0.30000001192092896d) + ((double) w()), this.aO, izVar);
        hlVar.c = 40;
        if (z) {
            float fNextFloat = this.bs.nextFloat() * 0.5f;
            float fNextFloat2 = this.bs.nextFloat() * 3.1415927f * 2.0f;
            hlVar.aP = (-in.a(fNextFloat2)) * fNextFloat;
            hlVar.aR = in.b(fNextFloat2) * fNextFloat;
            hlVar.aQ = 0.20000000298023224d;
        } else {
            hlVar.aP = (-in.a((this.aS / 180.0f) * 3.1415927f)) * in.b((this.aT / 180.0f) * 3.1415927f) * 0.3f;
            hlVar.aR = in.b((this.aS / 180.0f) * 3.1415927f) * in.b((this.aT / 180.0f) * 3.1415927f) * 0.3f;
            hlVar.aQ = ((-in.a((this.aT / 180.0f) * 3.1415927f)) * 0.3f) + 0.1f;
            double dNextFloat = this.bs.nextFloat() * 3.1415927f * 2.0f;
            double dNextFloat2 = this.bs.nextFloat() * 0.02f;
            hlVar.aP += Math.cos(dNextFloat) * dNextFloat2;
            hlVar.aQ += (double) ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.1f);
            hlVar.aR += Math.sin(dNextFloat) * dNextFloat2;
        }
        a(hlVar);
        a(jl.v, 1);
    }

    protected void a(hl hlVar) {
        this.aI.b(hlVar);
    }

    public float a(uu uuVar) {
        float fA = this.c.a(uuVar);
        if (a(ln.g)) {
            fA /= 5.0f;
        }
        return !this.aX ? fA / 5.0f : fA;
    }

    public boolean b(uu uuVar) {
        return this.c.b(uuVar);
    }

    @Override // defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        this.c.b(nuVar.l("Inventory"));
        this.m = nuVar.e("Dimension");
        this.u = nuVar.m("Sleeping");
        this.a = nuVar.d("SleepTimer");
        if (this.u) {
            this.v = new br(in.b(this.aM), in.b(this.aN), in.b(this.aO));
            a(true, true, false);
        }
        if (nuVar.b("SpawnX") && nuVar.b("SpawnY") && nuVar.b("SpawnZ")) {
            this.b = new br(nuVar.e("SpawnX"), nuVar.e("SpawnY"), nuVar.e("SpawnZ"));
        }
    }

    @Override // defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Inventory", this.c.a(new sp()));
        nuVar.a("Dimension", this.m);
        nuVar.a("Sleeping", this.u);
        nuVar.a("SleepTimer", (short) this.a);
        br brVar = this.b;
        if (brVar != null) {
            nuVar.a("SpawnX", brVar.a);
            nuVar.a("SpawnY", this.b.b);
            nuVar.a("SpawnZ", this.b.c);
        }
    }

    protected void E() {
        this.bf = 1.62f;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x004c  */
    @Override // defpackage.ls, defpackage.sn
    public boolean a(sn snVar, int i) {
        sn snVar2;
        this.av = 0;
        if (this.Y <= 0) {
            return false;
        }
        if (N() && !this.aI.B) {
            a(true, true, false);
        }
        if ((snVar instanceof gz) || (snVar instanceof sl)) {
            if (this.aI.q == 0) {
                i = 0;
            }
            if (this.aI.q == 1) {
                i = (i / 3) + 1;
            }
            if (this.aI.q == 3) {
                i = (i * 3) / 2;
            }
        }
        if (i == 0) {
            return false;
        }
        if (snVar instanceof sl) {
            sl slVar = (sl) snVar;
            if (slVar.c != null) {
                snVar2 = slVar.c;
            } else {
                snVar2 = snVar;
            }
        } else {
            snVar2 = snVar;
        }
        if (snVar2 instanceof ls) {
            a((ls) snVar2, false);
        }
        a(jl.x, i);
        return super.a(snVar, i);
    }

    protected void a(ls lsVar, boolean z) {
        if ((lsVar instanceof gb) || (lsVar instanceof bp)) {
            return;
        }
        if (lsVar instanceof gi) {
            gi giVar = (gi) lsVar;
            if (giVar.D() && this.l.equals(giVar.A())) {
                return;
            }
        }
        if (!(lsVar instanceof gs) || F()) {
            Iterator it = this.aI.a(gi.class, eq.b(this.aM, this.aN, this.aO, this.aM + 1.0d, this.aN + 1.0d, this.aO + 1.0d).b(16.0d, 4.0d, 16.0d)).iterator();
            while (it.hasNext()) {
                gi giVar2 = (gi) ((sn) it.next());
                if (giVar2.D() && giVar2.G() == null && this.l.equals(giVar2.A()) && (!z || !giVar2.B())) {
                    giVar2.b(false);
                    giVar2.c(lsVar);
                }
            }
        }
    }

    @Override // defpackage.ls
    protected void b(int i) {
        int iF = ((25 - this.c.f()) * i) + this.bO;
        this.c.e(i);
        this.bO = iF % 25;
        super.b(iF / 25);
    }

    public void c(sn snVar) {
        iz izVarG;
        if (snVar.a(this) || (izVarG = G()) == null || !(snVar instanceof ls)) {
            return;
        }
        izVarG.a((ls) snVar);
        if (izVarG.a <= 0) {
            izVarG.a(this);
            H();
        }
    }

    public iz G() {
        return this.c.b();
    }

    public void H() {
        ix ixVar = this.c;
        ixVar.a(ixVar.c, (iz) null);
    }

    @Override // defpackage.sn
    public double I() {
        return this.bf - 0.5f;
    }

    public void J() {
        this.k = -1;
        this.j = true;
    }

    public void d(sn snVar) {
        int iA = this.c.a(snVar);
        if (iA > 0) {
            if (this.aQ < 0.0d) {
                iA++;
            }
            snVar.a(this, iA);
            iz izVarG = G();
            if (izVarG != null && (snVar instanceof ls)) {
                izVarG.a((ls) snVar, this);
                if (izVarG.a <= 0) {
                    izVarG.a(this);
                    H();
                }
            }
            if (snVar instanceof ls) {
                if (snVar.W()) {
                    a((ls) snVar, true);
                }
                a(jl.w, iA);
            }
        }
    }

    @Override // defpackage.sn
    public void K() {
        super.K();
        this.d.a(this);
        dw dwVar = this.e;
        if (dwVar != null) {
            dwVar.a(this);
        }
    }

    @Override // defpackage.sn
    public boolean L() {
        return !this.u && super.L();
    }

    public cw b(int i, int i2, int i3) {
        if (!this.aI.B) {
            if (N() || !W()) {
                return cw.OTHER_PROBLEM;
            }
            if (this.aI.t.c) {
                return cw.NOT_POSSIBLE_HERE;
            }
            if (this.aI.f()) {
                return cw.NOT_POSSIBLE_NOW;
            }
            if (Math.abs(this.aM - ((double) i)) > 3.0d || Math.abs(this.aN - ((double) i2)) > 2.0d || Math.abs(this.aO - ((double) i3)) > 3.0d) {
                return cw.TOO_FAR_AWAY;
            }
        }
        b(0.2f, 0.2f);
        this.bf = 0.2f;
        float f = 0.5f;
        if (this.aI.i(i, i2, i3)) {
            int iD = ve.d(this.aI.e(i, i2, i3));
            float f2 = 0.9f;
            if (iD != 0) {
                if (iD == 1) {
                    f2 = 0.5f;
                    f = 0.1f;
                } else if (iD == 2) {
                    f2 = 0.1f;
                } else if (iD != 3) {
                    f2 = 0.5f;
                } else {
                    f2 = 0.5f;
                    f = 0.9f;
                }
            }
            e(iD);
            e(i + f, i2 + 0.9375f, i3 + f2);
        } else {
            e(i + 0.5f, i2 + 0.9375f, i3 + 0.5f);
        }
        this.u = true;
        this.a = 0;
        this.v = new br(i, i2, i3);
        this.aQ = 0.0d;
        this.aR = 0.0d;
        this.aP = 0.0d;
        if (!this.aI.B) {
            this.aI.y();
        }
        return cw.OK;
    }

    private void e(int i) {
        this.w = 0.0f;
        this.y = 0.0f;
        if (i == 0) {
            this.y = -1.8f;
            return;
        }
        if (i == 1) {
            this.w = 1.8f;
        } else if (i == 2) {
            this.y = 1.8f;
        } else {
            if (i != 3) {
                return;
            }
            this.w = -1.8f;
        }
    }

    public void a(boolean z, boolean z2, boolean z3) {
        b(0.6f, 1.8f);
        E();
        br brVar = this.v;
        if (brVar != null && this.aI.a(brVar.a, brVar.b, brVar.c) == uu.T.bn) {
            ve.a(this.aI, brVar.a, brVar.b, brVar.c, false);
            br brVarF = ve.f(this.aI, brVar.a, brVar.b, brVar.c, 0);
            if (brVarF == null) {
                brVarF = new br(brVar.a, brVar.b + 1, brVar.c);
            }
            e(brVarF.a + 0.5f, brVarF.b + this.bf + 0.1f, brVarF.c + 0.5f);
        }
        this.u = false;
        if (!this.aI.B && z2) {
            this.aI.y();
        }
        if (z) {
            this.a = 0;
        } else {
            this.a = 100;
        }
        if (z3) {
            a(this.v);
        }
    }

    private boolean am() {
        return this.aI.a(this.v.a, this.v.b, this.v.c) == uu.T.bn;
    }

    public static br a(fd fdVar, br brVar) {
        cl clVarW = fdVar.w();
        clVarW.c((brVar.a - 3) >> 4, (brVar.c - 3) >> 4);
        clVarW.c((brVar.a + 3) >> 4, (brVar.c - 3) >> 4);
        clVarW.c((brVar.a - 3) >> 4, (brVar.c + 3) >> 4);
        clVarW.c((brVar.a + 3) >> 4, (brVar.c + 3) >> 4);
        if (fdVar.a(brVar.a, brVar.b, brVar.c) != uu.T.bn) {
            return null;
        }
        return ve.f(fdVar, brVar.a, brVar.b, brVar.c, 0);
    }

    public float M() {
        if (this.v == null) {
            return 0.0f;
        }
        int iD = ve.d(this.aI.e(this.v.a, this.v.b, this.v.c));
        if (iD == 0) {
            return 90.0f;
        }
        if (iD != 2) {
            return iD != 3 ? 0.0f : 180.0f;
        }
        return 270.0f;
    }

    @Override // defpackage.ls
    public boolean N() {
        return this.u;
    }

    public boolean O() {
        return this.u && this.a >= 100;
    }

    public int P() {
        return this.a;
    }

    public br Q() {
        return this.b;
    }

    public void a(br brVar) {
        if (brVar != null) {
            this.b = new br(brVar);
        } else {
            this.b = null;
        }
    }

    public void a(vr vrVar) {
        a(vrVar, 1);
    }

    @Override // defpackage.ls
    protected void R() {
        super.R();
        a(jl.u, 1);
    }

    @Override // defpackage.ls
    public void a_(float f, float f2) {
        double d = this.aM;
        double d2 = this.aN;
        double d3 = this.aO;
        super.a_(f, f2);
        i(this.aM - d, this.aN - d2, this.aO - d3);
    }

    private void i(double d, double d2, double d3) {
        if (this.aH != null) {
            return;
        }
        if (a(ln.g)) {
            int iRound = Math.round(in.a((d * d) + (d2 * d2) + (d3 * d3)) * 100.0f);
            if (iRound > 0) {
                a(jl.q, iRound);
                return;
            }
            return;
        }
        if (ag()) {
            int iRound2 = Math.round(in.a((d * d) + (d3 * d3)) * 100.0f);
            if (iRound2 > 0) {
                a(jl.m, iRound2);
                return;
            }
            return;
        }
        if (p()) {
            if (d2 > 0.0d) {
                a(jl.o, (int) Math.round(d2 * 100.0d));
            }
        } else {
            if (this.aX) {
                int iRound3 = Math.round(in.a((d * d) + (d3 * d3)) * 100.0f);
                if (iRound3 > 0) {
                    a(jl.l, iRound3);
                    return;
                }
                return;
            }
            int iRound4 = Math.round(in.a((d * d) + (d3 * d3)) * 100.0f);
            if (iRound4 > 25) {
                a(jl.p, iRound4);
            }
        }
    }

    private void j(double d, double d2, double d3) {
        int iRound;
        if (this.aH == null || (iRound = Math.round(in.a((d * d) + (d2 * d2) + (d3 * d3)) * 100.0f)) <= 0) {
            return;
        }
        if (this.aH instanceof yl) {
            a(jl.r, iRound);
            br brVar = this.bN;
            if (brVar == null) {
                this.bN = new br(in.b(this.aM), in.b(this.aN), in.b(this.aO));
                return;
            } else {
                if (brVar.a(in.b(this.aM), in.b(this.aN), in.b(this.aO)) >= 1000.0d) {
                    a(ep.q, 1);
                    return;
                }
                return;
            }
        }
        if (this.aH instanceof fz) {
            a(jl.s, iRound);
        } else if (this.aH instanceof wh) {
            a(jl.t, iRound);
        }
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b(float f) {
        if (f >= 2.0f) {
            a(jl.n, (int) Math.round(((double) f) * 100.0d));
        }
        super.b(f);
    }

    @Override // defpackage.sn
    public void a(ls lsVar) {
        if (lsVar instanceof gz) {
            a(ep.s);
        }
    }

    @Override // defpackage.ls
    public int c(iz izVar) {
        int iC = super.c(izVar);
        return (izVar.c != gm.aP.bf || this.D == null) ? iC : izVar.b() + 16;
    }

    @Override // defpackage.sn
    public void S() {
        if (this.z > 0) {
            this.z = 10;
        } else {
            this.A = true;
        }
    }
}
