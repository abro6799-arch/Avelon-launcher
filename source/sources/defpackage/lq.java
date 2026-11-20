package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class lq extends da {
    private da a;
    private ro i;

    public lq(da daVar) {
        this.a = daVar;
    }

    @Override // defpackage.da
    public void a() {
        this.i.b();
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        Keyboard.enableRepeatEvents(true);
        this.e.clear();
        this.e.add(new ke(0, (this.c / 2) - 100, (this.d / 4) + 96 + 12, nhVarA.a("multiplayer.connect")));
        this.e.add(new ke(1, (this.c / 2) - 100, (this.d / 4) + 120 + 12, nhVarA.a("gui.cancel")));
        String strReplaceAll = this.b.z.C.replaceAll("_", ":");
        ((ke) this.e.get(0)).g = strReplaceAll.length() > 0;
        ro roVar = new ro(this, this.g, (this.c / 2) - 100, ((this.d / 4) - 10) + 50 + 18, Keyboard.KEY_UP, 20, strReplaceAll);
        this.i = roVar;
        roVar.a = true;
        this.i.a(128);
    }

    @Override // defpackage.da
    public void h() {
        Keyboard.enableRepeatEvents(false);
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        int iIndexOf;
        if (keVar.g) {
            if (keVar.f == 1) {
                this.b.a(this.a);
                return;
            }
            if (keVar.f == 0) {
                String strTrim = this.i.a().trim();
                this.b.z.C = strTrim.replaceAll(":", "_");
                this.b.z.b();
                String[] strArrSplit = strTrim.split(":");
                if (strTrim.startsWith("[") && (iIndexOf = strTrim.indexOf("]")) > 0) {
                    String strSubstring = strTrim.substring(1, iIndexOf);
                    String strTrim2 = strTrim.substring(iIndexOf + 1).trim();
                    strArrSplit = (!strTrim2.startsWith(":") || strTrim2.length() <= 0) ? new String[]{strSubstring} : new String[]{strSubstring, strTrim2.substring(1)};
                }
                if (strArrSplit.length > 2) {
                    strArrSplit = new String[]{strTrim};
                }
                this.b.a(new vx(this.b, strArrSplit[0], strArrSplit.length > 1 ? a(strArrSplit[1], 25565) : 25565));
            }
        }
    }

    private int a(String str, int i) {
        try {
            return Integer.parseInt(str.trim());
        } catch (Exception unused) {
            return i;
        }
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        this.i.a(c, i);
        if (c == '\r') {
            a((ke) this.e.get(0));
        }
        ((ke) this.e.get(0)).g = this.i.a().length() > 0;
    }

    @Override // defpackage.da
    protected void a(int i, int i2, int i3) {
        super.a(i, i2, i3);
        this.i.a(i, i2, i3);
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        nh nhVarA = nh.a();
        i();
        a(this.g, nhVarA.a("multiplayer.title"), this.c / 2, ((this.d / 4) - 60) + 20, 16777215);
        b(this.g, nhVarA.a("multiplayer.info1"), (this.c / 2) - 140, ((this.d / 4) - 60) + 60 + 0, 10526880);
        b(this.g, nhVarA.a("multiplayer.info2"), (this.c / 2) - 140, ((this.d / 4) - 60) + 60 + 9, 10526880);
        b(this.g, nhVarA.a("multiplayer.ipinfo"), (this.c / 2) - 140, ((this.d / 4) - 60) + 60 + 36, 10526880);
        this.i.c();
        super.a(i, i2, f);
    }
}
