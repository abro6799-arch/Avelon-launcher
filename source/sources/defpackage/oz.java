package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class oz extends da {
    private int a = 0;
    private int i = 0;

    @Override // defpackage.da
    public void b() {
        this.a = 0;
        this.e.clear();
        this.e.add(new ke(1, (this.c / 2) - 100, ((this.d / 4) + 120) - 16, "Save and quit to title"));
        if (this.b.l()) {
            ((ke) this.e.get(0)).e = "Disconnect";
        }
        this.e.add(new ke(4, (this.c / 2) - 100, ((this.d / 4) + 24) - 16, "Back to game"));
        this.e.add(new ke(0, (this.c / 2) - 100, ((this.d / 4) + 96) - 16, "Options..."));
        this.e.add(new ke(5, (this.c / 2) - 100, ((this.d / 4) + 48) - 16, 98, 20, Cdo.a("gui.achievements")));
        this.e.add(new ke(6, (this.c / 2) + 2, ((this.d / 4) + 48) - 16, 98, 20, Cdo.a("gui.stats")));
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.f == 0) {
            this.b.a(new co(this, this.b.z));
        }
        if (keVar.f == 1) {
            this.b.I.a(jl.j, 1);
            if (this.b.l()) {
                this.b.f.q();
            }
            this.b.a((fd) null);
            this.b.a(new fu());
        }
        if (keVar.f == 4) {
            this.b.a((da) null);
            this.b.g();
        }
        if (keVar.f == 5) {
            this.b.a(new xm(this.b.I));
        }
        if (keVar.f == 6) {
            this.b.a(new dv(this, this.b.I));
        }
    }

    @Override // defpackage.da
    public void a() {
        super.a();
        this.i++;
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        fd fdVar = this.b.f;
        int i3 = this.a;
        this.a = i3 + 1;
        if ((!fdVar.a(i3)) || this.i < 20) {
            int iA = (int) (((in.a((((this.i % 10) + f) / 10.0f) * 3.1415927f * 2.0f) * 0.2f) + 0.8f) * 255.0f);
            b(this.g, "Saving level..", 8, this.d - 16, (iA << 16) | (iA << 8) | iA);
        }
        a(this.g, "Game menu", this.c / 2, 40, 16777215);
        super.a(i, i2, f);
    }
}
