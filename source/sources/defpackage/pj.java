package defpackage;

import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class pj extends ob {
    @Override // defpackage.ob
    public void c() {
    }

    @Override // defpackage.ob
    public boolean d() {
        return false;
    }

    public pj(Minecraft minecraft) {
        super(minecraft);
        this.b = true;
    }

    @Override // defpackage.ob
    public void b(gs gsVar) {
        for (int i = 0; i < 9; i++) {
            if (gsVar.c.a[i] == null) {
                this.a.h.c.a[i] = new iz((uu) gr.a.get(i));
            } else {
                this.a.h.c.a[i].a = 1;
            }
        }
    }

    @Override // defpackage.ob
    public void a(fd fdVar) {
        super.a(fdVar);
    }
}
