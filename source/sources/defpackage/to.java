package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class to implements bf {
    private File a;
    private boolean b;

    @Override // defpackage.bf
    public void a() {
    }

    @Override // defpackage.bf
    public void b() {
    }

    @Override // defpackage.bf
    public void b(fd fdVar, lm lmVar) {
    }

    public to(File file, boolean z) {
        this.a = file;
        this.b = z;
    }

    private File a(int i, int i2) {
        String str = "c." + Integer.toString(i, 36) + "." + Integer.toString(i2, 36) + ".dat";
        String string = Integer.toString(i & 63, 36);
        String string2 = Integer.toString(i2 & 63, 36);
        File file = new File(this.a, string);
        if (!file.exists()) {
            if (!this.b) {
                return null;
            }
            file.mkdir();
        }
        File file2 = new File(file, string2);
        if (!file2.exists()) {
            if (!this.b) {
                return null;
            }
            file2.mkdir();
        }
        File file3 = new File(file2, str);
        if (file3.exists() || this.b) {
            return file3;
        }
        return null;
    }

    @Override // defpackage.bf
    public lm a(fd fdVar, int i, int i2) {
        File fileA = a(i, i2);
        if (fileA != null && fileA.exists()) {
            try {
                nu nuVarA = as.a(new FileInputStream(fileA));
                if (!nuVarA.b("Level")) {
                    System.out.println("Chunk file at " + i + "," + i2 + " is missing level data, skipping");
                    return null;
                }
                if (!nuVarA.k("Level").b("Blocks")) {
                    System.out.println("Chunk file at " + i + "," + i2 + " is missing block data, skipping");
                    return null;
                }
                lm lmVarA = a(fdVar, nuVarA.k("Level"));
                if (!lmVarA.a(i, i2)) {
                    System.out.println("Chunk file at " + i + "," + i2 + " is in the wrong location; relocating. (Expected " + i + ", " + i2 + ", got " + lmVarA.j + ", " + lmVarA.k + ")");
                    nuVarA.a("xPos", i);
                    nuVarA.a("zPos", i2);
                    lmVarA = a(fdVar, nuVarA.k("Level"));
                }
                lmVarA.i();
                return lmVarA;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // defpackage.bf
    public void a(fd fdVar, lm lmVar) {
        fdVar.r();
        File fileA = a(lmVar.j, lmVar.k);
        if (fileA.exists()) {
            ei eiVarX = fdVar.x();
            eiVarX.b(eiVarX.g() - fileA.length());
        }
        try {
            File file = new File(this.a, "tmp_chunk.dat");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            nu nuVar = new nu();
            nu nuVar2 = new nu();
            nuVar.a("Level", (ij) nuVar2);
            a(lmVar, fdVar, nuVar2);
            as.a(nuVar, fileOutputStream);
            fileOutputStream.close();
            if (fileA.exists()) {
                fileA.delete();
            }
            file.renameTo(fileA);
            ei eiVarX2 = fdVar.x();
            eiVarX2.b(eiVarX2.g() + fileA.length());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void a(lm lmVar, fd fdVar, nu nuVar) {
        fdVar.r();
        nuVar.a("xPos", lmVar.j);
        nuVar.a("zPos", lmVar.k);
        nuVar.a("LastUpdate", fdVar.t());
        nuVar.a("Blocks", lmVar.b);
        nuVar.a("Data", lmVar.e.a);
        nuVar.a("SkyLight", lmVar.f.a);
        nuVar.a("BlockLight", lmVar.g.a);
        nuVar.a("HeightMap", lmVar.h);
        nuVar.a("TerrainPopulated", lmVar.n);
        lmVar.q = false;
        sp spVar = new sp();
        for (int i = 0; i < lmVar.m.length; i++) {
            for (sn snVar : lmVar.m[i]) {
                lmVar.q = true;
                nu nuVar2 = new nu();
                if (snVar.c(nuVar2)) {
                    spVar.a(nuVar2);
                }
            }
        }
        nuVar.a("Entities", spVar);
        sp spVar2 = new sp();
        for (ow owVar : lmVar.l.values()) {
            nu nuVar3 = new nu();
            owVar.b(nuVar3);
            spVar2.a(nuVar3);
        }
        nuVar.a("TileEntities", spVar2);
    }

    public static lm a(fd fdVar, nu nuVar) {
        lm lmVar = new lm(fdVar, nuVar.e("xPos"), nuVar.e("zPos"));
        lmVar.b = nuVar.j("Blocks");
        lmVar.e = new wi(nuVar.j("Data"));
        lmVar.f = new wi(nuVar.j("SkyLight"));
        lmVar.g = new wi(nuVar.j("BlockLight"));
        lmVar.h = nuVar.j("HeightMap");
        lmVar.n = nuVar.m("TerrainPopulated");
        if (!lmVar.e.a()) {
            lmVar.e = new wi(lmVar.b.length);
        }
        if (lmVar.h == null || !lmVar.f.a()) {
            lmVar.h = new byte[Keyboard.KEYBOARD_SIZE];
            lmVar.f = new wi(lmVar.b.length);
            lmVar.c();
        }
        if (!lmVar.g.a()) {
            lmVar.g = new wi(lmVar.b.length);
            lmVar.a();
        }
        sp spVarL = nuVar.l("Entities");
        if (spVarL != null) {
            for (int i = 0; i < spVarL.c(); i++) {
                sn snVarA = jc.a((nu) spVarL.a(i), fdVar);
                lmVar.q = true;
                if (snVarA != null) {
                    lmVar.a(snVarA);
                }
            }
        }
        sp spVarL2 = nuVar.l("TileEntities");
        if (spVarL2 != null) {
            for (int i2 = 0; i2 < spVarL2.c(); i2++) {
                ow owVarC = ow.c((nu) spVarL2.a(i2));
                if (owVarC != null) {
                    lmVar.a(owVarC);
                }
            }
        }
        return lmVar;
    }
}
