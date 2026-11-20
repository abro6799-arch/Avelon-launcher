package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class yk extends ow {
    public String[] a = {"", "", "", ""};
    public int b = -1;
    private boolean c = true;

    @Override // defpackage.ow
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Text1", this.a[0]);
        nuVar.a("Text2", this.a[1]);
        nuVar.a("Text3", this.a[2]);
        nuVar.a("Text4", this.a[3]);
    }

    @Override // defpackage.ow
    public void a(nu nuVar) {
        this.c = false;
        super.a(nuVar);
        int i = 0;
        while (i < 4) {
            String[] strArr = this.a;
            StringBuilder sb = new StringBuilder("Text");
            int i2 = i + 1;
            sb.append(i2);
            strArr[i] = nuVar.i(sb.toString());
            if (this.a[i].length() > 15) {
                String[] strArr2 = this.a;
                strArr2[i] = strArr2[i].substring(0, 15);
            }
            i = i2;
        }
    }
}
