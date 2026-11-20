package defpackage;

/* JADX INFO: loaded from: classes.dex */
class wm {
    final int a;
    Object b;
    wm c;
    final int d;

    wm(int i, int i2, Object obj, wm wmVar) {
        this.b = obj;
        this.c = wmVar;
        this.a = i2;
        this.d = i;
    }

    public final int a() {
        return this.a;
    }

    public final Object b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wm)) {
            return false;
        }
        wm wmVar = (wm) obj;
        Integer numValueOf = Integer.valueOf(a());
        Integer numValueOf2 = Integer.valueOf(wmVar.a());
        if (numValueOf == numValueOf2 || (numValueOf != null && numValueOf.equals(numValueOf2))) {
            Object objB = b();
            Object objB2 = wmVar.b();
            if (objB == objB2) {
                return true;
            }
            if (objB != null && objB.equals(objB2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return jx.e(this.a);
    }

    public final String toString() {
        return a() + "=" + b();
    }
}
