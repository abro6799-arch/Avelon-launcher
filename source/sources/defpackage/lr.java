package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class lr extends uo {
    private boolean[] f = new boolean[10];
    private kv g;

    public lr(kv kvVar) {
        this.g = kvVar;
    }

    @Override // defpackage.uo
    public void a(int i, boolean z) {
        byte b = i == this.g.m.b ? (byte) 0 : (byte) -1;
        if (i == this.g.o.b) {
            b = 1;
        }
        if (i == this.g.n.b) {
            b = 2;
        }
        if (i == this.g.p.b) {
            b = 3;
        }
        if (i == this.g.q.b) {
            b = 4;
        }
        if (i == this.g.v.b) {
            b = 5;
        }
        if (b >= 0) {
            this.f[b] = z;
        }
    }

    @Override // defpackage.uo
    public void a() {
        for (int i = 0; i < 10; i++) {
            this.f[i] = false;
        }
    }

    @Override // defpackage.uo
    public void a(gs gsVar) {
        this.a = 0.0f;
        this.b = 0.0f;
        if (this.f[0]) {
            this.b += 1.0f;
        }
        if (this.f[1]) {
            this.b -= 1.0f;
        }
        if (this.f[2]) {
            this.a += 1.0f;
        }
        if (this.f[3]) {
            this.a -= 1.0f;
        }
        this.d = this.f[4];
        this.e = this.f[5];
        if (this.e) {
            this.a = (float) (((double) this.a) * 0.3d);
            this.b = (float) (((double) this.b) * 0.3d);
        }
    }
}
