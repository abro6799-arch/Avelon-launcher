package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qh extends da {
    private int a = 0;

    @Override // defpackage.da
    public void a() {
        this.a++;
    }

    @Override // defpackage.da
    public void b() {
        this.e.clear();
        this.e.add(new ke(0, (this.c / 2) - 100, (this.d / 4) + 120 + 12, "Back to title screen"));
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.g && keVar.f == 0) {
            this.b.a(new fu());
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        a(this.g, "Level save conflict", this.c / 2, ((this.d / 4) - 60) + 20, 16777215);
        b(this.g, "Minecraft detected a conflict in the level save data.", (this.c / 2) - 140, ((this.d / 4) - 60) + 60 + 0, 10526880);
        b(this.g, "This could be caused by two copies of the game", (this.c / 2) - 140, ((this.d / 4) - 60) + 60 + 18, 10526880);
        b(this.g, "accessing the same level.", (this.c / 2) - 140, ((this.d / 4) - 60) + 60 + 27, 10526880);
        b(this.g, "To prevent level corruption, the current game has quit.", (this.c / 2) - 140, ((this.d / 4) - 60) + 60 + 45, 10526880);
        super.a(i, i2, f);
    }
}
