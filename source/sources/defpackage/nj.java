package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class nj extends da {
    private static ht[] l = {ht.GRAPHICS, ht.RENDER_DISTANCE, ht.AMBIENT_OCCLUSION, ht.FRAMERATE_LIMIT, ht.ANAGLYPH, ht.VIEW_BOBBING, ht.GUI_SCALE, ht.ADVANCED_OPENGL};
    protected String a = "Video Settings";
    private da i;
    private kv j;

    public nj(da daVar, kv kvVar) {
        this.i = daVar;
        this.j = kvVar;
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        this.a = nhVarA.a("options.videoTitle");
        int i = 0;
        for (ht htVar : l) {
            if (!htVar.a()) {
                this.e.add(new ab(htVar.c(), ((i % 2) * 160) + ((this.c / 2) - 155), ((i >> 1) * 24) + (this.d / 6), htVar, this.j.c(htVar)));
            } else {
                this.e.add(new vz(htVar.c(), ((i % 2) * 160) + ((this.c / 2) - 155), ((i >> 1) * 24) + (this.d / 6), htVar, this.j.c(htVar), this.j.a(htVar)));
            }
            i++;
        }
        this.e.add(new ke(Keyboard.KEY_UP, (this.c / 2) - 100, (this.d / 6) + 168, nhVarA.a("gui.done")));
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.g) {
            if (keVar.f < 100 && (keVar instanceof ab)) {
                this.j.a(((ab) keVar).a(), 1);
                keVar.e = this.j.c(ht.a(keVar.f));
            }
            if (keVar.f == 200) {
                this.b.z.b();
                this.b.a(this.i);
            }
            qq qqVar = new qq(this.b.z, this.b.d, this.b.e);
            a(this.b, qqVar.a(), qqVar.b());
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        a(this.g, this.a, this.c / 2, 20, 16777215);
        super.a(i, i2, f);
    }
}
