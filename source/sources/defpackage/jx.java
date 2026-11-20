package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class jx {
    private transient int b;
    private volatile transient int e;
    private final float d = 0.75f;
    private int c = 12;
    private transient wm[] a = new wm[16];

    private static int a(int i, int i2) {
        return i & (i2 - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    public Object a(int i) {
        int iE = e(i);
        wm[] wmVarArr = this.a;
        for (wm wmVar = wmVarArr[a(iE, wmVarArr.length)]; wmVar != null; wmVar = wmVar.c) {
            if (wmVar.a == i) {
                return wmVar.b;
            }
        }
        return null;
    }

    public void a(int i, Object obj) {
        int iE = e(i);
        int iA = a(iE, this.a.length);
        for (wm wmVar = this.a[iA]; wmVar != null; wmVar = wmVar.c) {
            if (wmVar.a == i) {
                wmVar.b = obj;
            }
        }
        this.e++;
        a(iE, i, obj, iA);
    }

    private void f(int i) {
        if (this.a.length == 1073741824) {
            this.c = Integer.MAX_VALUE;
            return;
        }
        wm[] wmVarArr = new wm[i];
        a(wmVarArr);
        this.a = wmVarArr;
        this.c = (int) (i * this.d);
    }

    private void a(wm[] wmVarArr) {
        wm[] wmVarArr2 = this.a;
        int length = wmVarArr.length;
        for (int i = 0; i < wmVarArr2.length; i++) {
            wm wmVar = wmVarArr2[i];
            if (wmVar != null) {
                wmVarArr2[i] = null;
                while (true) {
                    wm wmVar2 = wmVar.c;
                    int iA = a(wmVar.d, length);
                    wmVar.c = wmVarArr[iA];
                    wmVarArr[iA] = wmVar;
                    if (wmVar2 == null) {
                        break;
                    } else {
                        wmVar = wmVar2;
                    }
                }
            }
        }
    }

    public Object b(int i) {
        wm wmVarC = c(i);
        if (wmVarC == null) {
            return null;
        }
        return wmVarC.b;
    }

    final wm c(int i) {
        int iA = a(e(i), this.a.length);
        wm wmVar = this.a[iA];
        wm wmVar2 = wmVar;
        while (wmVar != null) {
            wm wmVar3 = wmVar.c;
            if (wmVar.a == i) {
                this.e++;
                this.b--;
                if (wmVar2 == wmVar) {
                    this.a[iA] = wmVar3;
                } else {
                    wmVar2.c = wmVar3;
                }
                return wmVar;
            }
            wmVar2 = wmVar;
            wmVar = wmVar3;
        }
        return wmVar;
    }

    public void a() {
        this.e++;
        wm[] wmVarArr = this.a;
        for (int i = 0; i < wmVarArr.length; i++) {
            wmVarArr[i] = null;
        }
        this.b = 0;
    }

    private void a(int i, int i2, Object obj, int i3) {
        wm[] wmVarArr = this.a;
        wmVarArr[i3] = new wm(i, i2, obj, wmVarArr[i3]);
        int i4 = this.b;
        this.b = i4 + 1;
        if (i4 >= this.c) {
            f(this.a.length * 2);
        }
    }
}
