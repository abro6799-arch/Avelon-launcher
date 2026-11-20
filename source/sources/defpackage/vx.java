package defpackage;

import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class vx extends da {
    private nb a;
    private boolean i = false;

    @Override // defpackage.da
    protected void a(char c, int i) {
    }

    public vx(Minecraft minecraft, String str, int i) {
        System.out.println("Connecting to " + str + ", " + i);
        minecraft.a((fd) null);
        new wz(this, minecraft, str, i).start();
    }

    @Override // defpackage.da
    public void a() {
        nb nbVar = this.a;
        if (nbVar != null) {
            nbVar.a();
        }
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        this.e.clear();
        this.e.add(new ke(0, (this.c / 2) - 100, (this.d / 4) + 120 + 12, nhVarA.a("gui.cancel")));
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.f == 0) {
            this.i = true;
            nb nbVar = this.a;
            if (nbVar != null) {
                nbVar.b();
            }
            this.b.a(new fu());
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        nh nhVarA = nh.a();
        if (this.a == null) {
            a(this.g, nhVarA.a("connect.connecting"), this.c / 2, (this.d / 2) - 50, 16777215);
            a(this.g, "", this.c / 2, (this.d / 2) - 10, 16777215);
        } else {
            a(this.g, nhVarA.a("connect.authorizing"), this.c / 2, (this.d / 2) - 50, 16777215);
            a(this.g, this.a.a, this.c / 2, (this.d / 2) - 10, 16777215);
        }
        super.a(i, i2, f);
    }
}
