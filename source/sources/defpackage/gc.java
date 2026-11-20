package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class gc extends da {
    private static final String j = fp.a;
    protected String a = "";
    private int i = 0;

    @Override // defpackage.da
    public void b() {
        Keyboard.enableRepeatEvents(true);
    }

    @Override // defpackage.da
    public void h() {
        Keyboard.enableRepeatEvents(false);
    }

    @Override // defpackage.da
    public void a() {
        this.i++;
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        if (i == 1) {
            this.b.a((da) null);
            return;
        }
        if (i == 28) {
            if (this.a.trim().length() > 0) {
                String strTrim = this.a.trim();
                if (!this.b.b(strTrim)) {
                    this.b.h.a(strTrim);
                }
            }
            this.b.a((da) null);
            return;
        }
        if (i == 14 && this.a.length() > 0) {
            String str = this.a;
            this.a = str.substring(0, str.length() - 1);
        }
        if (j.indexOf(c) < 0 || this.a.length() >= 100) {
            return;
        }
        this.a += c;
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        a(2, this.d - 14, this.c - 2, this.d - 2, Integer.MIN_VALUE);
        sj sjVar = this.g;
        StringBuilder sb = new StringBuilder("> ");
        sb.append(this.a);
        sb.append((this.i / 6) % 2 == 0 ? "_" : "");
        b(sjVar, sb.toString(), 4, this.d - 12, 14737632);
        super.a(i, i2, f);
    }

    @Override // defpackage.da
    protected void a(int i, int i2, int i3) {
        if (i3 == 0) {
            if (this.b.v.a != null) {
                if (this.a.length() > 0 && !this.a.endsWith(" ")) {
                    this.a += " ";
                }
                String str = this.a + this.b.v.a;
                this.a = str;
                if (str.length() > 100) {
                    this.a = this.a.substring(0, 100);
                    return;
                }
                return;
            }
            super.a(i, i2, i3);
        }
    }
}
