package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ip extends gv {
    public ip(ko koVar, float f) {
        super(koVar, f);
    }

    @Override // defpackage.gv, defpackage.bw
    public void a(ww wwVar, double d, double d2, double d3, float f, float f2) {
        super.a((ls) wwVar, d, d2, d3, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public float c(ww wwVar, float f) {
        float f2 = wwVar.g + ((wwVar.b - wwVar.g) * f);
        return (in.a(f2) + 1.0f) * (wwVar.f + ((wwVar.c - wwVar.f) * f));
    }
}
