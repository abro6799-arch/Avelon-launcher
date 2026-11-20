package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ok implements cl {
    private lm b;
    private cl c;
    private bf d;
    private fd g;
    private Set a = new HashSet();
    private Map e = new HashMap();
    private List f = new ArrayList();

    @Override // defpackage.cl
    public boolean b() {
        return true;
    }

    public ok(fd fdVar, bf bfVar, cl clVar) {
        this.b = new li(fdVar, new byte[32768], 0, 0);
        this.g = fdVar;
        this.d = bfVar;
        this.c = clVar;
    }

    @Override // defpackage.cl
    public boolean a(int i, int i2) {
        return this.e.containsKey(Integer.valueOf(yy.a(i, i2)));
    }

    @Override // defpackage.cl
    public lm c(int i, int i2) {
        int iA = yy.a(i, i2);
        this.a.remove(Integer.valueOf(iA));
        lm lmVarD = (lm) this.e.get(Integer.valueOf(iA));
        if (lmVarD == null) {
            lmVarD = d(i, i2);
            if (lmVarD == null) {
                cl clVar = this.c;
                if (clVar == null) {
                    lmVarD = this.b;
                } else {
                    lmVarD = clVar.b(i, i2);
                }
            }
            this.e.put(Integer.valueOf(iA), lmVarD);
            this.f.add(lmVarD);
            if (lmVarD != null) {
                lmVarD.d();
                lmVarD.e();
            }
            if (!lmVarD.n) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (a(i3, i4) && a(i, i4) && a(i3, i2)) {
                    a(this, i, i2);
                }
            }
            int i5 = i - 1;
            if (a(i5, i2) && !b(i5, i2).n) {
                int i6 = i2 + 1;
                if (a(i5, i6) && a(i, i6) && a(i5, i2)) {
                    a(this, i5, i2);
                }
            }
            int i7 = i2 - 1;
            if (a(i, i7) && !b(i, i7).n) {
                int i8 = i + 1;
                if (a(i8, i7) && a(i, i7) && a(i8, i2)) {
                    a(this, i, i7);
                }
            }
            if (a(i5, i7) && !b(i5, i7).n && a(i5, i7) && a(i, i7) && a(i5, i2)) {
                a(this, i5, i7);
            }
        }
        return lmVarD;
    }

    @Override // defpackage.cl
    public lm b(int i, int i2) {
        lm lmVar = (lm) this.e.get(Integer.valueOf(yy.a(i, i2)));
        return lmVar == null ? c(i, i2) : lmVar;
    }

    private lm d(int i, int i2) {
        bf bfVar = this.d;
        if (bfVar == null) {
            return null;
        }
        try {
            lm lmVarA = bfVar.a(this.g, i, i2);
            if (lmVarA != null) {
                lmVarA.r = this.g.t();
            }
            return lmVarA;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void a(lm lmVar) {
        bf bfVar = this.d;
        if (bfVar == null) {
            return;
        }
        try {
            bfVar.b(this.g, lmVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b(lm lmVar) {
        if (this.d == null) {
            return;
        }
        try {
            lmVar.r = this.g.t();
            this.d.a(this.g, lmVar);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // defpackage.cl
    public void a(cl clVar, int i, int i2) {
        lm lmVarB = b(i, i2);
        if (lmVarB.n) {
            return;
        }
        lmVarB.n = true;
        cl clVar2 = this.c;
        if (clVar2 != null) {
            clVar2.a(clVar, i, i2);
            lmVarB.g();
        }
    }

    @Override // defpackage.cl
    public boolean a(boolean z, yb ybVar) {
        bf bfVar;
        int i = 0;
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            lm lmVar = (lm) this.f.get(i2);
            if (z && !lmVar.p) {
                a(lmVar);
            }
            if (lmVar.a(z)) {
                b(lmVar);
                lmVar.o = false;
                i++;
                if (i == 8 && !z) {
                    return false;
                }
            }
        }
        if (!z || (bfVar = this.d) == null) {
            return true;
        }
        bfVar.b();
        return true;
    }

    @Override // defpackage.cl
    public boolean a() {
        for (int i = 0; i < 100; i++) {
            if (!this.a.isEmpty()) {
                Integer num = (Integer) this.a.iterator().next();
                lm lmVar = (lm) this.e.get(num);
                lmVar.f();
                b(lmVar);
                a(lmVar);
                this.a.remove(num);
                this.e.remove(num);
                this.f.remove(lmVar);
            }
        }
        bf bfVar = this.d;
        if (bfVar != null) {
            bfVar.a();
        }
        return this.c.a();
    }

    @Override // defpackage.cl
    public String c() {
        return "ServerChunkCache: " + this.e.size() + " Drop: " + this.a.size();
    }
}
