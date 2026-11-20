package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class rx extends gm {
    public rx(int i) {
        super(i);
        a(true);
        e(0);
    }

    @Override // defpackage.gm
    public String a(iz izVar) {
        return izVar.i() == 1 ? "item.charcoal" : "item.coal";
    }
}
