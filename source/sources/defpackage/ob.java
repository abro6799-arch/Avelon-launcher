package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class ob {
    protected final Minecraft a;
    public boolean b = false;

    public void a() {
    }

    public void a(float f) {
    }

    public void a(fd fdVar) {
    }

    public void a(gs gsVar) {
    }

    public float b() {
        return 5.0f;
    }

    public void b(gs gsVar) {
    }

    public void c() {
    }

    public void c(int i, int i2, int i3, int i4) {
    }

    public boolean d() {
        return true;
    }

    public ob(Minecraft minecraft) {
        this.a = minecraft;
    }

    public void a(int i, int i2, int i3, int i4) {
        this.a.f.a((gs) this.a.h, i, i2, i3, i4);
        b(i, i2, i3, i4);
    }

    public boolean b(int i, int i2, int i3, int i4) {
        fd fdVar = this.a.f;
        uu uuVar = uu.m[fdVar.a(i, i2, i3)];
        fdVar.e(2001, i, i2, i3, uuVar.bn + (fdVar.e(i, i2, i3) * Keyboard.KEYBOARD_SIZE));
        int iE = fdVar.e(i, i2, i3);
        boolean zF = fdVar.f(i, i2, i3, 0);
        if (uuVar != null && zF) {
            uuVar.c(fdVar, i, i2, i3, iE);
        }
        return zF;
    }

    public boolean a(gs gsVar, fd fdVar, iz izVar) {
        int i = izVar.a;
        iz izVarA = izVar.a(fdVar, gsVar);
        if (izVarA == izVar && (izVarA == null || izVarA.a == i)) {
            return false;
        }
        gsVar.c.a[gsVar.c.c] = izVarA;
        if (izVarA.a != 0) {
            return true;
        }
        gsVar.c.a[gsVar.c.c] = null;
        return true;
    }

    public boolean a(gs gsVar, fd fdVar, iz izVar, int i, int i2, int i3, int i4) {
        int iA = fdVar.a(i, i2, i3);
        if (iA > 0 && uu.m[iA].a(fdVar, i, i2, i3, gsVar)) {
            return true;
        }
        if (izVar == null) {
            return false;
        }
        return izVar.a(gsVar, fdVar, i, i2, i3, i4);
    }

    public gs b(fd fdVar) {
        Minecraft minecraft = this.a;
        return new dc(minecraft, fdVar, minecraft.k, fdVar.t.g);
    }

    public void a(gs gsVar, sn snVar) {
        gsVar.c(snVar);
    }

    public void b(gs gsVar, sn snVar) {
        gsVar.d(snVar);
    }

    public iz a(int i, int i2, int i3, boolean z, gs gsVar) {
        return gsVar.e.a(i2, i3, z, gsVar);
    }

    public void a(int i, gs gsVar) {
        gsVar.e.a(gsVar);
        gsVar.e = gsVar.d;
    }
}
