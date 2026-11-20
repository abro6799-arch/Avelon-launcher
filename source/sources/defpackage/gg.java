package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class gg extends da {
    private nb a;
    private int i = 0;

    @Override // defpackage.da
    protected void a(char c, int i) {
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
    }

    public gg(nb nbVar) {
        this.a = nbVar;
    }

    @Override // defpackage.da
    public void b() {
        this.e.clear();
    }

    @Override // defpackage.da
    public void a() {
        int i = this.i + 1;
        this.i = i;
        if (i % 20 == 0) {
            this.a.b(new lz());
        }
        nb nbVar = this.a;
        if (nbVar != null) {
            nbVar.a();
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        b(0);
        a(this.g, nh.a().a("multiplayer.downloadingTerrain"), this.c / 2, (this.d / 2) - 50, 16777215);
        super.a(i, i2, f);
    }
}
