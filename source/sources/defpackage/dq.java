package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class dq extends gm {
    protected bu a;
    private uu[] bk;
    private float bl;
    private int bm;

    @Override // defpackage.gm
    public boolean b() {
        return true;
    }

    protected dq(int i, int i2, bu buVar, uu[] uuVarArr) {
        super(i);
        this.bl = 4.0f;
        this.a = buVar;
        this.bk = uuVarArr;
        this.bg = 1;
        e(buVar.a());
        this.bl = buVar.b();
        this.bm = i2 + buVar.c();
    }

    @Override // defpackage.gm
    public float a(iz izVar, uu uuVar) {
        int i = 0;
        while (true) {
            uu[] uuVarArr = this.bk;
            if (i >= uuVarArr.length) {
                return 1.0f;
            }
            if (uuVarArr[i] == uuVar) {
                return this.bl;
            }
            i++;
        }
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, ls lsVar, ls lsVar2) {
        izVar.a(2, lsVar2);
        return true;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, int i, int i2, int i3, int i4, ls lsVar) {
        izVar.a(1, lsVar);
        return true;
    }

    @Override // defpackage.gm
    public int a(sn snVar) {
        return this.bm;
    }
}
