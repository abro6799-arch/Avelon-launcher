package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class uv implements cl {
    private lm a;
    private Map b = new HashMap();
    private List c = new ArrayList();
    private fd d;

    @Override // defpackage.cl
    public void a(cl clVar, int i, int i2) {
    }

    @Override // defpackage.cl
    public boolean a() {
        return false;
    }

    @Override // defpackage.cl
    public boolean a(int i, int i2) {
        return true;
    }

    @Override // defpackage.cl
    public boolean a(boolean z, yb ybVar) {
        return true;
    }

    @Override // defpackage.cl
    public boolean b() {
        return false;
    }

    public uv(fd fdVar) {
        this.a = new li(fdVar, new byte[32768], 0, 0);
        this.d = fdVar;
    }

    public void d(int i, int i2) {
        lm lmVarB = b(i, i2);
        if (!lmVarB.h()) {
            lmVarB.f();
        }
        this.b.remove(new yy(i, i2));
        this.c.remove(lmVarB);
    }

    @Override // defpackage.cl
    public lm c(int i, int i2) {
        yy yyVar = new yy(i, i2);
        lm lmVar = new lm(this.d, new byte[32768], i, i2);
        Arrays.fill(lmVar.f.a, (byte) -1);
        this.b.put(yyVar, lmVar);
        lmVar.c = true;
        return lmVar;
    }

    @Override // defpackage.cl
    public lm b(int i, int i2) {
        lm lmVar = (lm) this.b.get(new yy(i, i2));
        return lmVar == null ? this.a : lmVar;
    }

    @Override // defpackage.cl
    public String c() {
        return "MultiplayerChunkCache: " + this.b.size();
    }
}
