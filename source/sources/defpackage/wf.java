package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wf {
    public final int a;
    public final int b;
    public final int c;

    public wf(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof wf)) {
            return false;
        }
        wf wfVar = (wf) obj;
        return wfVar.a == this.a && wfVar.b == this.b && wfVar.c == this.c;
    }

    public int hashCode() {
        return (this.a * 8976890) + (this.b * 981131) + this.c;
    }
}
