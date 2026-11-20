package defpackage;

import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
final class lt implements wg {
    private final Stack a = new Stack();
    private lb b;

    @Override // defpackage.wg
    public void b() {
    }

    @Override // defpackage.wg
    public void c() {
    }

    lt() {
    }

    qe a() {
        return (qe) this.b.b();
    }

    @Override // defpackage.wg
    public void d() {
        ed edVarE = te.e();
        a(edVarE);
        this.a.push(new na(this, edVarE));
    }

    @Override // defpackage.wg
    public void e() {
        this.a.pop();
    }

    @Override // defpackage.wg
    public void f() {
        sx sxVarD = te.d();
        a(sxVarD);
        this.a.push(new my(this, sxVarD));
    }

    @Override // defpackage.wg
    public void g() {
        this.a.pop();
    }

    @Override // defpackage.wg
    public void a(String str) {
        pn pnVarA = pn.a().a(te.b(str));
        ((pu) this.a.peek()).a(pnVarA);
        this.a.push(new nc(this, pnVarA));
    }

    @Override // defpackage.wg
    public void h() {
        this.a.pop();
    }

    @Override // defpackage.wg
    public void b(String str) {
        b(te.a(str));
    }

    @Override // defpackage.wg
    public void i() {
        b(te.b());
    }

    @Override // defpackage.wg
    public void c(String str) {
        b(te.b(str));
    }

    @Override // defpackage.wg
    public void j() {
        b(te.c());
    }

    @Override // defpackage.wg
    public void k() {
        b(te.a());
    }

    private void a(lb lbVar) {
        if (this.b == null) {
            this.b = lbVar;
        } else {
            b(lbVar);
        }
    }

    private void b(lb lbVar) {
        ((pu) this.a.peek()).a(lbVar);
    }
}
