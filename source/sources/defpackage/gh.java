package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class gh extends gc {
    @Override // defpackage.gc, defpackage.da
    public void b() {
        Keyboard.enableRepeatEvents(true);
        this.e.add(new ke(1, (this.c / 2) - 100, this.d - 40, nh.a().a("multiplayer.stopSleeping")));
    }

    @Override // defpackage.gc, defpackage.da
    public void h() {
        Keyboard.enableRepeatEvents(false);
    }

    @Override // defpackage.gc, defpackage.da
    protected void a(char c, int i) {
        if (i == 1) {
            k();
        } else {
            if (i == 28) {
                if (this.a.trim().length() > 0) {
                    this.b.h.a(this.a.trim());
                }
                this.a = "";
                return;
            }
            super.a(c, i);
        }
    }

    @Override // defpackage.gc, defpackage.da
    public void a(int i, int i2, float f) {
        super.a(i, i2, f);
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.f == 1) {
            k();
        } else {
            super.a(keVar);
        }
    }

    private void k() {
        if (this.b.h instanceof tk) {
            ((tk) this.b.h).bN.b(new ts(this.b.h, 3));
        }
    }
}
