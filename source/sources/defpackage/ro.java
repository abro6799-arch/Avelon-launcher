package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ro extends ub {
    public boolean a = false;
    public boolean b = true;
    private final sj c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private String h;
    private int i;
    private int j;
    private da l;

    public ro(da daVar, sj sjVar, int i, int i2, int i3, int i4, String str) {
        this.l = daVar;
        this.c = sjVar;
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        a(str);
    }

    public void a(String str) {
        this.h = str;
    }

    public String a() {
        return this.h;
    }

    public void b() {
        this.j++;
    }

    public void a(char c, int i) {
        if (this.b && this.a) {
            if (c == '\t') {
                this.l.j();
            }
            if (c == 22) {
                String strD = da.d();
                if (strD == null) {
                    strD = "";
                }
                int length = 32 - this.h.length();
                if (length > strD.length()) {
                    length = strD.length();
                }
                if (length > 0) {
                    this.h += strD.substring(0, length);
                }
            }
            if (i == 14 && this.h.length() > 0) {
                String str = this.h;
                this.h = str.substring(0, str.length() - 1);
            }
            if (fp.a.indexOf(c) >= 0) {
                int length2 = this.h.length();
                int i2 = this.i;
                if (length2 < i2 || i2 == 0) {
                    this.h += c;
                }
            }
        }
    }

    public void a(int i, int i2, int i3) {
        int i4;
        int i5;
        a(this.b && i >= (i4 = this.d) && i < i4 + this.f && i2 >= (i5 = this.e) && i2 < i5 + this.g);
    }

    public void a(boolean z) {
        if (z && !this.a) {
            this.j = 0;
        }
        this.a = z;
    }

    public void c() {
        int i = this.d;
        int i2 = this.e;
        a(i - 1, i2 - 1, i + this.f + 1, i2 + this.g + 1, -6250336);
        int i3 = this.d;
        int i4 = this.e;
        a(i3, i4, i3 + this.f, i4 + this.g, -16777216);
        if (this.b) {
            boolean z = this.a && (this.j / 6) % 2 == 0;
            sj sjVar = this.c;
            StringBuilder sb = new StringBuilder();
            sb.append(this.h);
            sb.append(z ? "_" : "");
            b(sjVar, sb.toString(), this.d + 4, ((this.g - 8) / 2) + this.e, 14737632);
            return;
        }
        b(this.c, this.h, this.d + 4, this.e + ((this.g - 8) / 2), 7368816);
    }

    public void a(int i) {
        this.i = i;
    }
}
