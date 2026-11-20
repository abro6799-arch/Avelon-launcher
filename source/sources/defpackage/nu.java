package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class nu extends ij {
    private Map a = new HashMap();

    @Override // defpackage.ij
    public byte a() {
        return (byte) 10;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ij.a((ij) it.next(), dataOutput);
        }
        dataOutput.writeByte(0);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a.clear();
        while (true) {
            ij ijVarB = ij.b(dataInput);
            if (ijVarB.a() == 0) {
                return;
            } else {
                this.a.put(ijVarB.b(), ijVarB);
            }
        }
    }

    public Collection c() {
        return this.a.values();
    }

    public void a(String str, ij ijVar) {
        this.a.put(str, ijVar.a(str));
    }

    public void a(String str, byte b) {
        this.a.put(str, new qp(b).a(str));
    }

    public void a(String str, short s) {
        this.a.put(str, new ul(s).a(str));
    }

    public void a(String str, int i) {
        this.a.put(str, new pp(i).a(str));
    }

    public void a(String str, long j) {
        this.a.put(str, new mi(j).a(str));
    }

    public void a(String str, float f) {
        this.a.put(str, new p(f).a(str));
    }

    public void a(String str, double d) {
        this.a.put(str, new sz(d).a(str));
    }

    public void a(String str, String str2) {
        this.a.put(str, new xb(str2).a(str));
    }

    public void a(String str, byte[] bArr) {
        this.a.put(str, new hn(bArr).a(str));
    }

    public void a(String str, nu nuVar) {
        this.a.put(str, nuVar.a(str));
    }

    public void a(String str, boolean z) {
        a(str, z ? (byte) 1 : (byte) 0);
    }

    public boolean b(String str) {
        return this.a.containsKey(str);
    }

    public byte c(String str) {
        if (this.a.containsKey(str)) {
            return ((qp) this.a.get(str)).a;
        }
        return (byte) 0;
    }

    public short d(String str) {
        if (this.a.containsKey(str)) {
            return ((ul) this.a.get(str)).a;
        }
        return (short) 0;
    }

    public int e(String str) {
        if (this.a.containsKey(str)) {
            return ((pp) this.a.get(str)).a;
        }
        return 0;
    }

    public long f(String str) {
        if (this.a.containsKey(str)) {
            return ((mi) this.a.get(str)).a;
        }
        return 0L;
    }

    public float g(String str) {
        if (this.a.containsKey(str)) {
            return ((p) this.a.get(str)).a;
        }
        return 0.0f;
    }

    public double h(String str) {
        if (this.a.containsKey(str)) {
            return ((sz) this.a.get(str)).a;
        }
        return 0.0d;
    }

    public String i(String str) {
        return !this.a.containsKey(str) ? "" : ((xb) this.a.get(str)).a;
    }

    public byte[] j(String str) {
        return !this.a.containsKey(str) ? new byte[0] : ((hn) this.a.get(str)).a;
    }

    public nu k(String str) {
        return !this.a.containsKey(str) ? new nu() : (nu) this.a.get(str);
    }

    public sp l(String str) {
        return !this.a.containsKey(str) ? new sp() : (sp) this.a.get(str);
    }

    public boolean m(String str) {
        return c(str) != 0;
    }

    public String toString() {
        return "" + this.a.size() + " entries";
    }
}
