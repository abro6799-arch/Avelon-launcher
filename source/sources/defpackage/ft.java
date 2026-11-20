package defpackage;

import java.io.File;
import net.minecraft.client.Minecraft;
import org.lwjgl.Sys;

/* JADX INFO: loaded from: classes.dex */
public class ft extends da {
    protected da a;
    private int i = -1;
    private String j = "";
    private de l;

    public ft(da daVar) {
        this.a = daVar;
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        this.e.add(new ab(5, (this.c / 2) - 154, this.d - 48, nhVarA.a("texturePack.openFolder")));
        this.e.add(new ab(6, (this.c / 2) + 4, this.d - 48, nhVarA.a("gui.done")));
        this.b.D.a();
        this.j = new File(Minecraft.b(), "texturepacks").getAbsolutePath();
        de deVar = new de(this);
        this.l = deVar;
        deVar.a(this.e, 7, 8);
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.g) {
            if (keVar.f == 5) {
                Sys.openURL("file://" + this.j);
            } else if (keVar.f == 6) {
                this.b.p.b();
                this.b.a(this.a);
            } else {
                this.l.a(keVar);
            }
        }
    }

    @Override // defpackage.da
    protected void a(int i, int i2, int i3) {
        super.a(i, i2, i3);
    }

    @Override // defpackage.da
    protected void b(int i, int i2, int i3) {
        super.b(i, i2, i3);
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        this.l.a(i, i2, f);
        if (this.i <= 0) {
            this.b.D.a();
            this.i += 20;
        }
        nh nhVarA = nh.a();
        a(this.g, nhVarA.a("texturePack.title"), this.c / 2, 16, 16777215);
        a(this.g, nhVarA.a("texturePack.folderInfo"), (this.c / 2) - 77, this.d - 26, 8421504);
        super.a(i, i2, f);
    }

    @Override // defpackage.da
    public void a() {
        super.a();
        this.i--;
    }
}
