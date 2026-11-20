package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qz extends gm {
    public qz(int i) {
        super(i);
        this.bg = 1;
    }

    @Override // defpackage.gm
    public iz a(iz izVar, fd fdVar, gs gsVar) {
        if (gsVar.c.c(gm.j.bf)) {
            fdVar.a(gsVar, "random.bow", 1.0f, 1.0f / ((b.nextFloat() * 0.4f) + 0.8f));
            if (!fdVar.B) {
                fdVar.b(new sl(fdVar, gsVar));
            }
        }
        return izVar;
    }
}
