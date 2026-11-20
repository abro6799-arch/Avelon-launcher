package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class dl extends bg {
    public static final float[][] a = {new float[]{1.0f, 1.0f, 1.0f}, new float[]{0.95f, 0.7f, 0.2f}, new float[]{0.9f, 0.5f, 0.85f}, new float[]{0.6f, 0.7f, 0.95f}, new float[]{0.9f, 0.9f, 0.2f}, new float[]{0.5f, 0.8f, 0.1f}, new float[]{0.95f, 0.7f, 0.8f}, new float[]{0.3f, 0.3f, 0.3f}, new float[]{0.6f, 0.6f, 0.6f}, new float[]{0.3f, 0.6f, 0.7f}, new float[]{0.7f, 0.4f, 0.9f}, new float[]{0.2f, 0.4f, 0.8f}, new float[]{0.5f, 0.4f, 0.3f}, new float[]{0.4f, 0.5f, 0.2f}, new float[]{0.8f, 0.3f, 0.3f}, new float[]{0.1f, 0.1f, 0.1f}};

    @Override // defpackage.ls
    protected String g() {
        return "mob.sheep";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.sheep";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.sheep";
    }

    public dl(fd fdVar) {
        super(fdVar);
        this.O = "/mob/sheep.png";
        b(0.9f, 1.3f);
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b() {
        super.b();
        this.bD.a(16, new Byte((byte) 0));
    }

    @Override // defpackage.ls, defpackage.sn
    public boolean a(sn snVar, int i) {
        return super.a(snVar, i);
    }

    @Override // defpackage.ls
    protected void q() {
        if (s()) {
            return;
        }
        a(new iz(uu.ac.bn, 1, r()), 0.0f);
    }

    @Override // defpackage.ls
    protected int j() {
        return uu.ac.bn;
    }

    @Override // defpackage.sn
    public boolean a(gs gsVar) {
        iz izVarB = gsVar.c.b();
        if (izVarB != null && izVarB.c == gm.bc.bf && !s()) {
            if (!this.aI.B) {
                a(true);
                int iNextInt = this.bs.nextInt(3) + 2;
                for (int i = 0; i < iNextInt; i++) {
                    hl hlVarA = a(new iz(uu.ac.bn, 1, r()), 1.0f);
                    hlVarA.aQ += (double) (this.bs.nextFloat() * 0.05f);
                    hlVarA.aP += (double) ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.1f);
                    hlVarA.aR += (double) ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.1f);
                }
            }
            izVarB.a(1, gsVar);
        }
        return false;
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Sheared", s());
        nuVar.a("Color", (byte) r());
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        a(nuVar.m("Sheared"));
        e_(nuVar.c("Color"));
    }

    public int r() {
        return this.bD.a(16) & 15;
    }

    public void e_(int i) {
        int i2 = i & 15;
        this.bD.b(16, Byte.valueOf((byte) (i2 | (this.bD.a(16) & 240))));
    }

    public boolean s() {
        return (this.bD.a(16) & 16) != 0;
    }

    public void a(boolean z) {
        byte bA = this.bD.a(16);
        if (z) {
            this.bD.b(16, Byte.valueOf((byte) (bA | 16)));
        } else {
            this.bD.b(16, Byte.valueOf((byte) (bA & (-17))));
        }
    }

    public static int a(Random random) {
        int iNextInt = random.nextInt(100);
        if (iNextInt < 5) {
            return 15;
        }
        if (iNextInt < 10) {
            return 7;
        }
        if (iNextInt < 15) {
            return 8;
        }
        if (iNextInt < 18) {
            return 12;
        }
        return random.nextInt(500) == 0 ? 6 : 0;
    }
}
