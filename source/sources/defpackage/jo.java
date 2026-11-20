package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class jo implements Comparator {
    private double a;
    private double b;
    private double c;

    public jo(sn snVar) {
        this.a = -snVar.aM;
        this.b = -snVar.aN;
        this.c = -snVar.aO;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(dk dkVar, dk dkVar2) {
        double d = ((double) dkVar.q) + this.a;
        double d2 = ((double) dkVar.r) + this.b;
        double d3 = ((double) dkVar.s) + this.c;
        double d4 = ((double) dkVar2.q) + this.a;
        double d5 = ((double) dkVar2.r) + this.b;
        double d6 = ((double) dkVar2.s) + this.c;
        return (int) (((((d * d) + (d2 * d2)) + (d3 * d3)) - (((d4 * d4) + (d5 * d5)) + (d6 * d6))) * 1024.0d);
    }
}
