package defpackage;

import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class yc extends da {
    private static final String m = fp.a;
    private yk i;
    private int j;
    protected String a = "Edit sign message:";
    private int l = 0;

    public yc(yk ykVar) {
        this.i = ykVar;
    }

    @Override // defpackage.da
    public void b() {
        this.e.clear();
        Keyboard.enableRepeatEvents(true);
        this.e.add(new ke(0, (this.c / 2) - 100, (this.d / 4) + 120, "Done"));
    }

    @Override // defpackage.da
    public void h() {
        Keyboard.enableRepeatEvents(false);
        if (this.b.f.B) {
            this.b.s().b(new ui(this.i.e, this.i.f, this.i.g, this.i.a));
        }
    }

    @Override // defpackage.da
    public void a() {
        this.j++;
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.g && keVar.f == 0) {
            this.i.y_();
            this.b.a((da) null);
        }
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        if (i == 200) {
            this.l = (this.l - 1) & 3;
        }
        if (i == 208 || i == 28) {
            this.l = (this.l + 1) & 3;
        }
        if (i == 14 && this.i.a[this.l].length() > 0) {
            this.i.a[this.l] = this.i.a[this.l].substring(0, this.i.a[this.l].length() - 1);
        }
        if (m.indexOf(c) < 0 || this.i.a[this.l].length() >= 15) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = this.i.a;
        int i2 = this.l;
        sb.append(strArr[i2]);
        sb.append(c);
        strArr[i2] = sb.toString();
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        a(this.g, this.a, this.c / 2, 40, 16777215);
        GL11.glPushMatrix();
        GL11.glTranslatef(this.c / 2, 0.0f, 50.0f);
        GL11.glScalef(-93.75f, -93.75f, -93.75f);
        GL11.glRotatef(180.0f, 0.0f, 1.0f, 0.0f);
        if (this.i.f() == uu.aE) {
            GL11.glRotatef((this.i.e() * 360) / 16.0f, 0.0f, 1.0f, 0.0f);
            GL11.glTranslatef(0.0f, -1.0625f, 0.0f);
        } else {
            int iE = this.i.e();
            float f2 = iE != 2 ? 0.0f : 180.0f;
            if (iE == 4) {
                f2 = 90.0f;
            }
            if (iE == 5) {
                f2 = -90.0f;
            }
            GL11.glRotatef(f2, 0.0f, 1.0f, 0.0f);
            GL11.glTranslatef(0.0f, -1.0625f, 0.0f);
        }
        if ((this.j / 6) % 2 == 0) {
            this.i.b = this.l;
        }
        ll.a.a(this.i, -0.5d, -0.75d, -0.5d, 0.0f);
        this.i.b = -1;
        GL11.glPopMatrix();
        super.a(i, i2, f);
    }
}
