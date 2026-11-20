package defpackage;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class ld implements bf {
    private final File a;

    @Override // defpackage.bf
    public void a() {
    }

    @Override // defpackage.bf
    public void b() {
    }

    @Override // defpackage.bf
    public void b(fd fdVar, lm lmVar) {
    }

    public ld(File file) {
        this.a = file;
    }

    @Override // defpackage.bf
    public lm a(fd fdVar, int i, int i2) {
        DataInputStream dataInputStreamC = rj.c(this.a, i, i2);
        lm lmVarA = null;
        if (dataInputStreamC != null) {
            nu nuVarA = as.a((DataInput) dataInputStreamC);
            if (!nuVarA.b("Level")) {
                System.out.println("Chunk file at " + i + "," + i2 + " is missing level data, skipping");
                return null;
            }
            if (!nuVarA.k("Level").b("Blocks")) {
                System.out.println("Chunk file at " + i + "," + i2 + " is missing block data, skipping");
                return null;
            }
            lmVarA = to.a(fdVar, nuVarA.k("Level"));
            if (!lmVarA.a(i, i2)) {
                System.out.println("Chunk file at " + i + "," + i2 + " is in the wrong location; relocating. (Expected " + i + ", " + i2 + ", got " + lmVarA.j + ", " + lmVarA.k + ")");
                nuVarA.a("xPos", i);
                nuVarA.a("zPos", i2);
                lmVarA = to.a(fdVar, nuVarA.k("Level"));
            }
            lmVarA.i();
        }
        return lmVarA;
    }

    @Override // defpackage.bf
    public void a(fd fdVar, lm lmVar) {
        fdVar.r();
        try {
            DataOutputStream dataOutputStreamD = rj.d(this.a, lmVar.j, lmVar.k);
            nu nuVar = new nu();
            nu nuVar2 = new nu();
            nuVar.a("Level", (ij) nuVar2);
            to.a(lmVar, fdVar, nuVar2);
            as.a(nuVar, (DataOutput) dataOutputStreamD);
            dataOutputStreamD.close();
            ei eiVarX = fdVar.x();
            eiVarX.b(eiVarX.g() + ((long) rj.b(this.a, lmVar.j, lmVar.k)));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
