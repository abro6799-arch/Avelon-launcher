package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class cs extends gm {
    @Override // defpackage.gm
    public boolean b() {
        return true;
    }

    @Override // defpackage.gm
    public boolean c() {
        return true;
    }

    public cs(int i) {
        super(i);
        e(64);
        d(1);
    }

    @Override // defpackage.gm
    public iz a(iz izVar, fd fdVar, gs gsVar) {
        if (gsVar.D != null) {
            izVar.a(gsVar.D.k(), gsVar);
            gsVar.J();
        } else {
            fdVar.a(gsVar, "random.bow", 0.5f, 0.4f / ((b.nextFloat() * 0.4f) + 0.8f));
            if (!fdVar.B) {
                fdVar.b(new lx(fdVar, gsVar));
            }
            gsVar.J();
        }
        return izVar;
    }
}
