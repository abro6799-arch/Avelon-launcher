package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class mo extends gm {
    public mo(int i) {
        super(i);
        this.bg = 16;
    }

    @Override // defpackage.gm
    public iz a(iz izVar, fd fdVar, gs gsVar) {
        izVar.a--;
        fdVar.a(gsVar, "random.bow", 0.5f, 0.4f / ((b.nextFloat() * 0.4f) + 0.8f));
        if (!fdVar.B) {
            fdVar.b(new vv(fdVar, gsVar));
        }
        return izVar;
    }
}
