package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class cy extends ow {
    public double b;
    public double c = 0.0d;
    private String i = "Pig";
    public int a = 20;

    public String a() {
        return this.i;
    }

    public void a(String str) {
        this.i = str;
    }

    public boolean b() {
        return this.d.a(((double) this.e) + 0.5d, ((double) this.f) + 0.5d, ((double) this.g) + 0.5d, 16.0d) != null;
    }

    @Override // defpackage.ow
    public void n_() {
        this.c = this.b;
        if (b()) {
            double dNextFloat = this.e + this.d.r.nextFloat();
            double dNextFloat2 = this.f + this.d.r.nextFloat();
            double dNextFloat3 = this.g + this.d.r.nextFloat();
            this.d.a("smoke", dNextFloat, dNextFloat2, dNextFloat3, 0.0d, 0.0d, 0.0d);
            this.d.a("flame", dNextFloat, dNextFloat2, dNextFloat3, 0.0d, 0.0d, 0.0d);
            this.b += (double) (1000.0f / (this.a + 200.0f));
            while (true) {
                double d = this.b;
                if (d <= 360.0d) {
                    break;
                }
                this.b = d - 360.0d;
                this.c -= 360.0d;
            }
            if (!this.d.B) {
                if (this.a == -1) {
                    d();
                }
                int i = this.a;
                if (i > 0) {
                    this.a = i - 1;
                    return;
                }
                int i2 = 0;
                while (i2 < 4) {
                    ls lsVar = (ls) jc.a(this.i, this.d);
                    if (lsVar == null) {
                        return;
                    }
                    int i3 = i2;
                    if (this.d.a(lsVar.getClass(), eq.b(this.e, this.f, this.g, this.e + 1, this.f + 1, this.g + 1).b(8.0d, 4.0d, 8.0d)).size() >= 6) {
                        d();
                        return;
                    }
                    if (lsVar != null) {
                        lsVar.c(((double) this.e) + ((this.d.r.nextDouble() - this.d.r.nextDouble()) * 4.0d), (this.f + this.d.r.nextInt(3)) - 1, ((this.d.r.nextDouble() - this.d.r.nextDouble()) * 4.0d) + ((double) this.g), this.d.r.nextFloat() * 360.0f, 0.0f);
                        if (lsVar.d()) {
                            this.d.b(lsVar);
                            for (int i4 = 0; i4 < 20; i4++) {
                                double dNextFloat4 = ((double) this.e) + 0.5d + ((((double) this.d.r.nextFloat()) - 0.5d) * 2.0d);
                                double dNextFloat5 = ((double) this.f) + 0.5d + ((((double) this.d.r.nextFloat()) - 0.5d) * 2.0d);
                                double dNextFloat6 = ((double) this.g) + 0.5d + ((((double) this.d.r.nextFloat()) - 0.5d) * 2.0d);
                                this.d.a("smoke", dNextFloat4, dNextFloat5, dNextFloat6, 0.0d, 0.0d, 0.0d);
                                this.d.a("flame", dNextFloat4, dNextFloat5, dNextFloat6, 0.0d, 0.0d, 0.0d);
                            }
                            lsVar.V();
                            d();
                        }
                    }
                    i2 = i3 + 1;
                }
            }
            super.n_();
        }
    }

    private void d() {
        this.a = this.d.r.nextInt(600) + Keyboard.KEY_UP;
    }

    @Override // defpackage.ow
    public void a(nu nuVar) {
        super.a(nuVar);
        this.i = nuVar.i("EntityId");
        this.a = nuVar.d("Delay");
    }

    @Override // defpackage.ow
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("EntityId", this.i);
        nuVar.a("Delay", (short) this.a);
    }
}
