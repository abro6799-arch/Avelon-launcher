package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class nt extends gz {
    public nt(fd fdVar) {
        super(fdVar);
        this.O = "/mob/zombie.png";
        this.aB = 0.5f;
        this.c = 50;
        this.Y *= 10;
        this.bf *= 6.0f;
        b(this.bg * 6.0f, this.bh * 6.0f);
    }

    @Override // defpackage.gz, defpackage.ii
    protected float a(int i, int i2, int i3) {
        return this.aI.c(i, i2, i3) - 0.5f;
    }
}
