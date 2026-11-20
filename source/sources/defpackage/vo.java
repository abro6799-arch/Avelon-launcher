package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class vo {
    final /* synthetic */ pc a;
    private fd b;
    private int c;
    private int d;
    private int e;
    private final boolean f;
    private List g = new ArrayList();

    public vo(pc pcVar, fd fdVar, int i, int i2, int i3) {
        this.a = pcVar;
        this.b = fdVar;
        this.c = i;
        this.d = i2;
        this.e = i3;
        int iA = fdVar.a(i, i2, i3);
        int iE = fdVar.e(i, i2, i3);
        if (((pc) uu.m[iA]).a) {
            this.f = true;
            iE &= -9;
        } else {
            this.f = false;
        }
        a(iE);
    }

    private void a(int i) {
        this.g.clear();
        if (i == 0) {
            this.g.add(new wf(this.c, this.d, this.e - 1));
            this.g.add(new wf(this.c, this.d, this.e + 1));
            return;
        }
        if (i == 1) {
            this.g.add(new wf(this.c - 1, this.d, this.e));
            this.g.add(new wf(this.c + 1, this.d, this.e));
            return;
        }
        if (i == 2) {
            this.g.add(new wf(this.c - 1, this.d, this.e));
            this.g.add(new wf(this.c + 1, this.d + 1, this.e));
            return;
        }
        if (i == 3) {
            this.g.add(new wf(this.c - 1, this.d + 1, this.e));
            this.g.add(new wf(this.c + 1, this.d, this.e));
            return;
        }
        if (i == 4) {
            this.g.add(new wf(this.c, this.d + 1, this.e - 1));
            this.g.add(new wf(this.c, this.d, this.e + 1));
            return;
        }
        if (i == 5) {
            this.g.add(new wf(this.c, this.d, this.e - 1));
            this.g.add(new wf(this.c, this.d + 1, this.e + 1));
            return;
        }
        if (i == 6) {
            this.g.add(new wf(this.c + 1, this.d, this.e));
            this.g.add(new wf(this.c, this.d, this.e + 1));
            return;
        }
        if (i == 7) {
            this.g.add(new wf(this.c - 1, this.d, this.e));
            this.g.add(new wf(this.c, this.d, this.e + 1));
        } else if (i == 8) {
            this.g.add(new wf(this.c - 1, this.d, this.e));
            this.g.add(new wf(this.c, this.d, this.e - 1));
        } else if (i == 9) {
            this.g.add(new wf(this.c + 1, this.d, this.e));
            this.g.add(new wf(this.c, this.d, this.e - 1));
        }
    }

    private void a() {
        int i = 0;
        while (i < this.g.size()) {
            vo voVarA = a((wf) this.g.get(i));
            if (voVarA == null || !voVarA.b(this)) {
                this.g.remove(i);
                i--;
            } else {
                this.g.set(i, new wf(voVarA.c, voVarA.d, voVarA.e));
            }
            i++;
        }
    }

    private boolean a(int i, int i2, int i3) {
        return pc.h(this.b, i, i2, i3) || pc.h(this.b, i, i2 + 1, i3) || pc.h(this.b, i, i2 - 1, i3);
    }

    private vo a(wf wfVar) {
        if (pc.h(this.b, wfVar.a, wfVar.b, wfVar.c)) {
            return new vo(this.a, this.b, wfVar.a, wfVar.b, wfVar.c);
        }
        if (pc.h(this.b, wfVar.a, wfVar.b + 1, wfVar.c)) {
            return new vo(this.a, this.b, wfVar.a, wfVar.b + 1, wfVar.c);
        }
        if (pc.h(this.b, wfVar.a, wfVar.b - 1, wfVar.c)) {
            return new vo(this.a, this.b, wfVar.a, wfVar.b - 1, wfVar.c);
        }
        return null;
    }

    private boolean b(vo voVar) {
        for (int i = 0; i < this.g.size(); i++) {
            wf wfVar = (wf) this.g.get(i);
            if (wfVar.a == voVar.c && wfVar.c == voVar.e) {
                return true;
            }
        }
        return false;
    }

    private boolean b(int i, int i2, int i3) {
        for (int i4 = 0; i4 < this.g.size(); i4++) {
            wf wfVar = (wf) this.g.get(i4);
            if (wfVar.a == i && wfVar.c == i3) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    public int b() {
        ?? A = a(this.c, this.d, this.e - 1);
        int i = A;
        if (a(this.c, this.d, this.e + 1)) {
            i = A + 1;
        }
        int i2 = i;
        if (a(this.c - 1, this.d, this.e)) {
            i2 = i + 1;
        }
        return a(this.c + 1, this.d, this.e) ? i2 + 1 : i2;
    }

    private boolean c(vo voVar) {
        if (b(voVar)) {
            return true;
        }
        if (this.g.size() == 2) {
            return false;
        }
        if (this.g.size() == 0) {
            return true;
        }
        wf wfVar = (wf) this.g.get(0);
        if (voVar.d == this.d) {
            int i = wfVar.b;
        }
        return true;
    }

    private void d(vo voVar) {
        this.g.add(new wf(voVar.c, voVar.d, voVar.e));
        boolean zB = b(this.c, this.d, this.e - 1);
        boolean zB2 = b(this.c, this.d, this.e + 1);
        boolean zB3 = b(this.c - 1, this.d, this.e);
        boolean zB4 = b(this.c + 1, this.d, this.e);
        int i = (zB || zB2) ? 0 : -1;
        if (zB3 || zB4) {
            i = 1;
        }
        if (!this.f) {
            if (zB2 && zB4 && !zB && !zB3) {
                i = 6;
            }
            if (zB2 && zB3 && !zB && !zB4) {
                i = 7;
            }
            if (zB && zB3 && !zB2 && !zB4) {
                i = 8;
            }
            if (zB && zB4 && !zB2 && !zB3) {
                i = 9;
            }
        }
        if (i == 0) {
            if (pc.h(this.b, this.c, this.d + 1, this.e - 1)) {
                i = 4;
            }
            if (pc.h(this.b, this.c, this.d + 1, this.e + 1)) {
                i = 5;
            }
        }
        if (i == 1) {
            if (pc.h(this.b, this.c + 1, this.d + 1, this.e)) {
                i = 2;
            }
            if (pc.h(this.b, this.c - 1, this.d + 1, this.e)) {
                i = 3;
            }
        }
        int iE = i >= 0 ? i : 0;
        if (this.f) {
            iE |= this.b.e(this.c, this.d, this.e) & 8;
        }
        this.b.d(this.c, this.d, this.e, iE);
    }

    private boolean c(int i, int i2, int i3) {
        vo voVarA = a(new wf(i, i2, i3));
        if (voVarA == null) {
            return false;
        }
        voVarA.a();
        return voVarA.c(this);
    }

    /* JADX WARN: Code duplicated, block: B:76:0x00b3 A[PHI: r7
      0x00b3: PHI (r7v5 int) = (r7v4 int), (r7v9 int) binds: [B:36:0x0071, B:43:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    public void a(boolean z, boolean z2) {
        boolean zC = c(this.c, this.d, this.e - 1);
        boolean zC2 = c(this.c, this.d, this.e + 1);
        boolean zC3 = c(this.c - 1, this.d, this.e);
        boolean zC4 = c(this.c + 1, this.d, this.e);
        int i = ((!zC && !zC2) || zC3 || zC4) ? -1 : 0;
        if ((zC3 || zC4) && !zC && !zC2) {
            i = 1;
        }
        boolean z3 = this.f;
        int iE = 6;
        if (!z3) {
            if (zC2 && zC4 && !zC && !zC3) {
                i = 6;
            }
            if (zC2 && zC3 && !zC && !zC4) {
                i = 7;
            }
            if (zC && zC3 && !zC2 && !zC4) {
                i = 8;
            }
            if (zC && zC4 && !zC2 && !zC3) {
                i = 9;
            }
        }
        if (i != -1) {
            iE = i;
        } else {
            if (zC || zC2) {
                i = 0;
            }
            if (zC3 || zC4) {
                i = 1;
            }
            if (z3) {
                iE = i;
            } else if (z) {
                iE = (zC && zC3) ? 8 : (zC4 && zC) ? 9 : (zC3 && zC2) ? 7 : (zC2 && zC4) ? 6 : i;
            } else {
                if (zC && zC3) {
                    i = 8;
                }
                int i2 = (zC3 && zC2) ? 7 : (zC4 && zC) ? 9 : i;
                if (!zC2 || !zC4) {
                    iE = i2;
                }
            }
        }
        if (iE == 0) {
            if (pc.h(this.b, this.c, this.d + 1, this.e - 1)) {
                iE = 4;
            }
            if (pc.h(this.b, this.c, this.d + 1, this.e + 1)) {
                iE = 5;
            }
        }
        if (iE == 1) {
            if (pc.h(this.b, this.c + 1, this.d + 1, this.e)) {
                iE = 2;
            }
            if (pc.h(this.b, this.c - 1, this.d + 1, this.e)) {
                iE = 3;
            }
        }
        if (iE < 0) {
            iE = 0;
        }
        a(iE);
        if (this.f) {
            iE |= this.b.e(this.c, this.d, this.e) & 8;
        }
        if (z2 || this.b.e(this.c, this.d, this.e) != iE) {
            this.b.d(this.c, this.d, this.e, iE);
            for (int i3 = 0; i3 < this.g.size(); i3++) {
                vo voVarA = a((wf) this.g.get(i3));
                if (voVarA != null) {
                    voVarA.a();
                    if (voVarA.c(this)) {
                        voVarA.d(this);
                    }
                }
            }
        }
    }
}
