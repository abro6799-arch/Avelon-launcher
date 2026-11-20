package defpackage;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.URL;
import java.util.List;
import java.util.Random;
import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class nb extends ti {
    public String a;
    private pf e;
    private Minecraft f;
    private mm g;
    private boolean d = false;
    private boolean h = false;
    public hc b = new hc(null);
    Random c = new Random();

    @Override // defpackage.ti
    public boolean c() {
        return false;
    }

    public nb(Minecraft minecraft, String str, int i) {
        this.f = minecraft;
        this.e = new pf(MCPortHooks.openSocket(InetAddress.getByName(str), i), "Client", this);
    }

    public void a() {
        if (!this.d) {
            this.e.b();
        }
        this.e.a();
    }

    @Override // defpackage.ti
    public void a(nz nzVar) {
        Minecraft minecraft = this.f;
        minecraft.c = new xk(minecraft, this);
        this.f.I.a(jl.i, 1);
        mm mmVar = new mm(this, nzVar.c, nzVar.d);
        this.g = mmVar;
        mmVar.B = true;
        this.f.a(this.g);
        this.f.h.m = nzVar.d;
        this.f.a(new gg(this));
        this.f.h.aD = nzVar.a;
    }

    @Override // defpackage.ti
    public void a(nd ndVar) {
        hl hlVar = new hl(this.g, ((double) ndVar.b) / 32.0d, ((double) ndVar.c) / 32.0d, ((double) ndVar.d) / 32.0d, new iz(ndVar.h, ndVar.i, ndVar.l));
        hlVar.aP = ((double) ndVar.e) / 128.0d;
        hlVar.aQ = ((double) ndVar.f) / 128.0d;
        hlVar.aR = ((double) ndVar.g) / 128.0d;
        hlVar.bJ = ndVar.b;
        hlVar.bK = ndVar.c;
        hlVar.bL = ndVar.d;
        this.g.a(ndVar.a, hlVar);
    }

    @Override // defpackage.ti
    public void a(so soVar) {
        double d = ((double) soVar.b) / 32.0d;
        double d2 = ((double) soVar.c) / 32.0d;
        double d3 = ((double) soVar.d) / 32.0d;
        sn ylVar = soVar.h == 10 ? new yl(this.g, d, d2, d3, 0) : null;
        if (soVar.h == 11) {
            ylVar = new yl(this.g, d, d2, d3, 1);
        }
        if (soVar.h == 12) {
            ylVar = new yl(this.g, d, d2, d3, 2);
        }
        if (soVar.h == 90) {
            ylVar = new lx(this.g, d, d2, d3);
        }
        if (soVar.h == 60) {
            ylVar = new sl(this.g, d, d2, d3);
        }
        if (soVar.h == 61) {
            ylVar = new by(this.g, d, d2, d3);
        }
        if (soVar.h == 63) {
            cf cfVar = new cf(this.g, d, d2, d3, ((double) soVar.e) / 8000.0d, ((double) soVar.f) / 8000.0d, ((double) soVar.g) / 8000.0d);
            soVar.i = 0;
            ylVar = cfVar;
        }
        if (soVar.h == 62) {
            ylVar = new vv(this.g, d, d2, d3);
        }
        if (soVar.h == 1) {
            ylVar = new fz(this.g, d, d2, d3);
        }
        if (soVar.h == 50) {
            ylVar = new qw(this.g, d, d2, d3);
        }
        if (soVar.h == 70) {
            ylVar = new ju(this.g, d, d2, d3, uu.F.bn);
        }
        if (soVar.h == 71) {
            ylVar = new ju(this.g, d, d2, d3, uu.G.bn);
        }
        if (ylVar != null) {
            ylVar.bJ = soVar.b;
            ylVar.bK = soVar.c;
            ylVar.bL = soVar.d;
            ylVar.aS = 0.0f;
            ylVar.aT = 0.0f;
            ylVar.aD = soVar.a;
            this.g.a(soVar.a, ylVar);
            if (soVar.i > 0) {
                if (soVar.h == 60) {
                    sn snVarA = a(soVar.i);
                    if (snVarA instanceof ls) {
                        ((sl) ylVar).c = (ls) snVarA;
                    }
                }
                ylVar.a(((double) soVar.e) / 8000.0d, ((double) soVar.f) / 8000.0d, ((double) soVar.g) / 8000.0d);
            }
        }
    }

    @Override // defpackage.ti
    public void a(fa faVar) {
        c cVar = faVar.e == 1 ? new c(this.g, ((double) faVar.b) / 32.0d, ((double) faVar.c) / 32.0d, ((double) faVar.d) / 32.0d) : null;
        if (cVar != null) {
            cVar.bJ = faVar.b;
            cVar.bK = faVar.c;
            cVar.bL = faVar.d;
            cVar.aS = 0.0f;
            cVar.aT = 0.0f;
            cVar.aD = faVar.a;
            this.g.a(cVar);
        }
    }

    @Override // defpackage.ti
    public void a(vt vtVar) {
        this.g.a(vtVar.a, new qv(this.g, vtVar.b, vtVar.c, vtVar.d, vtVar.e, vtVar.f));
    }

    @Override // defpackage.ti
    public void a(gj gjVar) {
        sn snVarA = a(gjVar.a);
        if (snVarA == null) {
            return;
        }
        snVarA.a(((double) gjVar.b) / 8000.0d, ((double) gjVar.c) / 8000.0d, ((double) gjVar.d) / 8000.0d);
    }

    @Override // defpackage.ti
    public void a(ux uxVar) {
        sn snVarA = a(uxVar.a);
        if (snVarA == null || uxVar.b() == null) {
            return;
        }
        snVarA.ad().a(uxVar.b());
    }

    @Override // defpackage.ti
    public void a(mf mfVar) {
        double d = ((double) mfVar.c) / 32.0d;
        double d2 = ((double) mfVar.d) / 32.0d;
        double d3 = ((double) mfVar.e) / 32.0d;
        float f = (mfVar.f * 360) / 256.0f;
        float f2 = (mfVar.g * 360) / 256.0f;
        xz xzVar = new xz(this.f.f, mfVar.b);
        int i = mfVar.c;
        xzVar.bJ = i;
        double d4 = i;
        xzVar.bl = d4;
        xzVar.aJ = d4;
        int i2 = mfVar.d;
        xzVar.bK = i2;
        double d5 = i2;
        xzVar.bm = d5;
        xzVar.aK = d5;
        int i3 = mfVar.e;
        xzVar.bL = i3;
        double d6 = i3;
        xzVar.bn = d6;
        xzVar.aL = d6;
        int i4 = mfVar.h;
        if (i4 == 0) {
            xzVar.c.a[xzVar.c.c] = null;
        } else {
            xzVar.c.a[xzVar.c.c] = new iz(i4, 1, 0);
        }
        xzVar.b(d, d2, d3, f, f2);
        this.g.a(mfVar.a, xzVar);
    }

    @Override // defpackage.ti
    public void a(rg rgVar) {
        sn snVarA = a(rgVar.a);
        if (snVarA == null) {
            return;
        }
        snVarA.bJ = rgVar.b;
        snVarA.bK = rgVar.c;
        snVarA.bL = rgVar.d;
        snVarA.a(((double) snVarA.bJ) / 32.0d, (((double) snVarA.bK) / 32.0d) + 0.015625d, ((double) snVarA.bL) / 32.0d, (rgVar.e * 360) / 256.0f, (rgVar.f * 360) / 256.0f, 3);
    }

    @Override // defpackage.ti
    public void a(uh uhVar) {
        sn snVarA = a(uhVar.a);
        if (snVarA == null) {
            return;
        }
        snVarA.bJ += uhVar.b;
        snVarA.bK += uhVar.c;
        snVarA.bL += uhVar.d;
        snVarA.a(((double) snVarA.bJ) / 32.0d, ((double) snVarA.bK) / 32.0d, ((double) snVarA.bL) / 32.0d, uhVar.g ? (uhVar.e * 360) / 256.0f : snVarA.aS, uhVar.g ? (uhVar.f * 360) / 256.0f : snVarA.aT, 3);
    }

    @Override // defpackage.ti
    public void a(rv rvVar) {
        this.g.c(rvVar.a);
    }

    @Override // defpackage.ti
    public void a(ig igVar) {
        float f;
        float f2;
        dc dcVar = this.f.h;
        double d = dcVar.aM;
        double d2 = dcVar.aN;
        double d3 = dcVar.aO;
        float f3 = dcVar.aS;
        float f4 = dcVar.aT;
        if (igVar.h) {
            d = igVar.a;
            d2 = igVar.b;
            d3 = igVar.c;
        }
        double d4 = d3;
        double d5 = d2;
        double d6 = d;
        if (igVar.i) {
            f2 = igVar.e;
            f = igVar.f;
        } else {
            f = f4;
            f2 = f3;
        }
        dcVar.bo = 0.0f;
        dcVar.aR = 0.0d;
        dcVar.aQ = 0.0d;
        dcVar.aP = 0.0d;
        dcVar.b(d6, d5, d4, f2, f);
        igVar.a = dcVar.aM;
        igVar.b = dcVar.aW.b;
        igVar.c = dcVar.aO;
        igVar.d = dcVar.aN;
        this.e.a(igVar);
        if (this.h) {
            return;
        }
        this.f.h.aJ = this.f.h.aM;
        this.f.h.aK = this.f.h.aN;
        this.f.h.aL = this.f.h.aO;
        this.h = true;
        this.f.a((da) null);
    }

    @Override // defpackage.ti
    public void a(se seVar) {
        this.g.a(seVar.a, seVar.b, seVar.c);
    }

    @Override // defpackage.ti
    public void a(wu wuVar) {
        lm lmVarC = this.g.c(wuVar.a, wuVar.b);
        int i = wuVar.a * 16;
        int i2 = wuVar.b * 16;
        for (int i3 = 0; i3 < wuVar.f; i3++) {
            short s = wuVar.c[i3];
            int i4 = (s >> 12) & 15;
            int i5 = (s >> 8) & 15;
            int i6 = s & 255;
            lmVarC.a(i4, i6, i5, wuVar.d[i3] & 255, wuVar.e[i3]);
            int i7 = i4 + i;
            int i8 = i5 + i2;
            this.g.c(i7, i6, i8, i7, i6, i8);
            this.g.b(i7, i6, i8, i7, i6, i8);
        }
    }

    @Override // defpackage.ti
    public void a(ef efVar) {
        this.g.c(efVar.a, efVar.b, efVar.c, (efVar.a + efVar.d) - 1, (efVar.b + efVar.e) - 1, (efVar.c + efVar.f) - 1);
        this.g.a(efVar.a, efVar.b, efVar.c, efVar.d, efVar.e, efVar.f, efVar.g);
    }

    @Override // defpackage.ti
    public void a(tv tvVar) {
        this.g.f(tvVar.a, tvVar.b, tvVar.c, tvVar.d, tvVar.e);
    }

    @Override // defpackage.ti
    public void a(yr yrVar) {
        this.e.a("disconnect.kicked", new Object[0]);
        this.d = true;
        this.f.a((fd) null);
        this.f.a(new ex("disconnect.disconnected", "disconnect.genericReason", yrVar.a));
    }

    @Override // defpackage.ti
    public void a(String str, Object[] objArr) {
        if (this.d) {
            return;
        }
        this.d = true;
        this.f.a((fd) null);
        this.f.a(new ex("disconnect.lost", str, objArr));
    }

    public void a(ki kiVar) {
        if (this.d) {
            return;
        }
        this.e.a(kiVar);
        this.e.c();
    }

    public void b(ki kiVar) {
        if (this.d) {
            return;
        }
        this.e.a(kiVar);
    }

    @Override // defpackage.ti
    public void a(di diVar) {
        sn snVarA = a(diVar.a);
        sn snVar = (ls) a(diVar.b);
        if (snVar == null) {
            snVar = this.f.h;
        }
        if (snVarA != null) {
            this.g.a(snVarA, "random.pop", 0.2f, (((this.c.nextFloat() - this.c.nextFloat()) * 0.7f) + 1.0f) * 2.0f);
            this.f.j.a(new em(this.f.f, snVarA, snVar, -0.5f));
            this.g.c(diVar.a);
        }
    }

    @Override // defpackage.ti
    public void a(pe peVar) {
        this.f.v.a(peVar.a);
    }

    @Override // defpackage.ti
    public void a(nm nmVar) {
        sn snVarA = a(nmVar.a);
        if (snVarA == null) {
            return;
        }
        if (nmVar.b == 1) {
            ((gs) snVarA).J();
            return;
        }
        if (nmVar.b == 2) {
            snVarA.h();
        } else if (nmVar.b == 3) {
            ((gs) snVarA).a(false, false, false);
        } else if (nmVar.b == 4) {
            ((gs) snVarA).v();
        }
    }

    @Override // defpackage.ti
    public void a(jz jzVar) {
        sn snVarA = a(jzVar.a);
        if (snVarA != null && jzVar.e == 0) {
            ((gs) snVarA).b(jzVar.b, jzVar.c, jzVar.d);
        }
    }

    @Override // defpackage.ti
    public void a(mp mpVar) {
        if (mpVar.a.equals("-")) {
            b(new nz(this.f.k.b, 14));
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL("http://www.minecraft.net/game/joinserver.jsp?user=" + this.f.k.b + "&sessionId=" + this.f.k.c + "&serverId=" + mpVar.a).openStream()));
            String line = bufferedReader.readLine();
            bufferedReader.close();
            if (line.equalsIgnoreCase("ok")) {
                b(new nz(this.f.k.b, 14));
            } else {
                this.e.a("disconnect.loginFailedInfo", line);
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.e.a("disconnect.genericReason", "Internal client error: " + e.toString());
        }
    }

    public void b() {
        this.d = true;
        this.e.a();
        this.e.a("disconnect.closed", new Object[0]);
    }

    @Override // defpackage.ti
    public void a(jm jmVar) {
        double d = ((double) jmVar.c) / 32.0d;
        double d2 = ((double) jmVar.d) / 32.0d;
        double d3 = ((double) jmVar.e) / 32.0d;
        float f = (jmVar.f * 360) / 256.0f;
        float f2 = (jmVar.g * 360) / 256.0f;
        ls lsVar = (ls) jc.a(jmVar.b, this.f.f);
        lsVar.bJ = jmVar.c;
        lsVar.bK = jmVar.d;
        lsVar.bL = jmVar.e;
        lsVar.aD = jmVar.a;
        lsVar.b(d, d2, d3, f, f2);
        lsVar.V = true;
        this.g.a(jmVar.a, lsVar);
        List listB = jmVar.b();
        if (listB != null) {
            lsVar.ad().a(listB);
        }
    }

    @Override // defpackage.ti
    public void a(hg hgVar) {
        this.f.f.a(hgVar.a);
    }

    @Override // defpackage.ti
    public void a(rc rcVar) {
        this.f.h.a(new br(rcVar.a, rcVar.b, rcVar.c));
        this.f.f.x().a(rcVar.a, rcVar.b, rcVar.c);
    }

    @Override // defpackage.ti
    public void a(ns nsVar) {
        sn snVarA = a(nsVar.a);
        sn snVarA2 = a(nsVar.b);
        if (nsVar.a == this.f.h.aD) {
            snVarA = this.f.h;
        }
        if (snVarA == null) {
            return;
        }
        snVarA.i(snVarA2);
    }

    @Override // defpackage.ti
    public void a(jf jfVar) {
        sn snVarA = a(jfVar.a);
        if (snVarA != null) {
            snVarA.a(jfVar.b);
        }
    }

    private sn a(int i) {
        if (i == this.f.h.aD) {
            return this.f.h;
        }
        return this.g.b(i);
    }

    @Override // defpackage.ti
    public void a(eu euVar) {
        this.f.h.d_(euVar.a);
    }

    @Override // defpackage.ti
    public void a(ox oxVar) {
        if (oxVar.a != this.f.h.m) {
            this.h = false;
            mm mmVar = new mm(this, this.g.x().b(), oxVar.a);
            this.g = mmVar;
            mmVar.B = true;
            this.f.a(this.g);
            this.f.h.m = oxVar.a;
            this.f.a(new gg(this));
        }
        this.f.a(true, (int) oxVar.a);
    }

    @Override // defpackage.ti
    public void a(rm rmVar) {
        qx qxVar = new qx(this.f.f, null, rmVar.a, rmVar.b, rmVar.c, rmVar.d);
        qxVar.g = rmVar.e;
        qxVar.a(true);
    }

    @Override // defpackage.ti
    public void a(iw iwVar) {
        if (iwVar.b == 0) {
            this.f.h.a(new qo(iwVar.c, iwVar.d));
            this.f.h.e.f = iwVar.a;
            return;
        }
        if (iwVar.b == 2) {
            this.f.h.a(new sk());
            this.f.h.e.f = iwVar.a;
            return;
        }
        if (iwVar.b == 3) {
            this.f.h.a(new az());
            this.f.h.e.f = iwVar.a;
            return;
        }
        if (iwVar.b == 1) {
            dc dcVar = this.f.h;
            this.f.h.a(in.b(dcVar.aM), in.b(dcVar.aN), in.b(dcVar.aO));
            this.f.h.e.f = iwVar.a;
        }
    }

    @Override // defpackage.ti
    public void a(hq hqVar) {
        if (hqVar.a == -1) {
            this.f.h.c.b(hqVar.c);
            return;
        }
        if (hqVar.a == 0 && hqVar.b >= 36 && hqVar.b < 45) {
            iz izVarA = this.f.h.d.b(hqVar.b).a();
            if (hqVar.c != null && (izVarA == null || izVarA.a < hqVar.c.a)) {
                hqVar.c.b = 5;
            }
            this.f.h.d.a(hqVar.b, hqVar.c);
            return;
        }
        if (hqVar.a == this.f.h.e.f) {
            this.f.h.e.a(hqVar.b, hqVar.c);
        }
    }

    @Override // defpackage.ti
    public void a(oj ojVar) {
        dw dwVar;
        if (ojVar.a == 0) {
            dwVar = this.f.h.d;
        } else {
            dwVar = ojVar.a == this.f.h.e.f ? this.f.h.e : null;
        }
        if (dwVar != null) {
            if (ojVar.c) {
                dwVar.a(ojVar.b);
            } else {
                dwVar.b(ojVar.b);
                b(new oj(ojVar.a, ojVar.b, true));
            }
        }
    }

    @Override // defpackage.ti
    public void a(kb kbVar) {
        if (kbVar.a == 0) {
            this.f.h.d.a(kbVar.b);
        } else if (kbVar.a == this.f.h.e.f) {
            this.f.h.e.a(kbVar.b);
        }
    }

    @Override // defpackage.ti
    public void a(ui uiVar) {
        if (this.f.f.i(uiVar.a, uiVar.b, uiVar.c)) {
            ow owVarB = this.f.f.b(uiVar.a, uiVar.b, uiVar.c);
            if (owVarB instanceof yk) {
                yk ykVar = (yk) owVarB;
                for (int i = 0; i < 4; i++) {
                    ykVar.a[i] = uiVar.d[i];
                }
                ykVar.y_();
            }
        }
    }

    @Override // defpackage.ti
    public void a(mv mvVar) {
        c(mvVar);
        if (this.f.h.e == null || this.f.h.e.f != mvVar.a) {
            return;
        }
        this.f.h.e.a(mvVar.b, mvVar.c);
    }

    @Override // defpackage.ti
    public void a(s sVar) {
        sn snVarA = a(sVar.a);
        if (snVarA != null) {
            snVarA.c(sVar.b, sVar.c, sVar.d);
        }
    }

    @Override // defpackage.ti
    public void a(mn mnVar) {
        this.f.h.r();
    }

    @Override // defpackage.ti
    public void a(vw vwVar) {
        this.f.f.d(vwVar.a, vwVar.b, vwVar.c, vwVar.d, vwVar.e);
    }

    @Override // defpackage.ti
    public void a(ca caVar) {
        int i = caVar.b;
        if (i >= 0 && i < ca.a.length && ca.a[i] != null) {
            this.f.h.b(ca.a[i]);
        }
        if (i == 1) {
            this.g.x().b(true);
            this.g.h(1.0f);
        } else if (i == 2) {
            this.g.x().b(false);
            this.g.h(0.0f);
        }
    }

    @Override // defpackage.ti
    public void a(ai aiVar) {
        if (aiVar.a == gm.bb.bf) {
            wr.a(aiVar.b, this.f.f).a(aiVar.c);
            return;
        }
        System.out.println("Unknown itemid: " + ((int) aiVar.b));
    }

    @Override // defpackage.ti
    public void a(fn fnVar) {
        this.f.f.e(fnVar.a, fnVar.c, fnVar.d, fnVar.e, fnVar.b);
    }

    @Override // defpackage.ti
    public void a(of ofVar) {
        ((tk) this.f.h).b(jl.a(ofVar.a), ofVar.b);
    }
}
