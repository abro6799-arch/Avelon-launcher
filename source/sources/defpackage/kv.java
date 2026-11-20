package defpackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class kv {
    private static final String[] J = {"options.renderDistance.far", "options.renderDistance.normal", "options.renderDistance.short", "options.renderDistance.tiny"};
    private static final String[] K = {"options.difficulty.peaceful", "options.difficulty.easy", "options.difficulty.normal", "options.difficulty.hard"};
    private static final String[] L = {"options.guiScale.auto", "options.guiScale.small", "options.guiScale.normal", "options.guiScale.large"};
    private static final String[] M = {"performance.max", "performance.balanced", "performance.powersaver"};
    public boolean A;
    public boolean B;
    public String C;
    public boolean D;
    public boolean E;
    public boolean F;
    public float G;
    public float H;
    public int I;
    private File N;
    public float a = 1.0f;
    public float b = 1.0f;
    public float c = 0.5f;
    public boolean d = false;
    public int e = 1;
    public boolean f = true;
    public boolean g = false;
    public boolean h = false;
    public int i = 1;
    public boolean j = false;
    public boolean k = false;
    public String l = "Default";
    public qb m = new qb("key.forward", 17);
    public qb n = new qb("key.left", 30);
    public qb o = new qb("key.back", 31);
    public qb p = new qb("key.right", 32);
    public qb q = new qb("key.jump", 57);
    public qb r = new qb("key.inventory", 18);
    public qb s = new qb("key.drop", 16);
    public qb t = new qb("key.chat", 20);
    public qb u = new qb("key.fog", 33);
    public qb v;
    public qb[] w;
    protected Minecraft x;
    public int y;
    public boolean z;

    public kv(Minecraft minecraft, File file) {
        qb qbVar = new qb("key.sneak", 42);
        this.v = qbVar;
        this.w = new qb[]{this.m, this.n, this.o, this.p, this.q, qbVar, this.s, this.r, this.t, this.u};
        this.y = 2;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = "";
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = 1.0f;
        this.H = 1.0f;
        this.I = 0;
        this.x = minecraft;
        this.N = new File(file, "options.txt");
        a();
    }

    public kv() {
        qb qbVar = new qb("key.sneak", 42);
        this.v = qbVar;
        this.w = new qb[]{this.m, this.n, this.o, this.p, this.q, qbVar, this.s, this.r, this.t, this.u};
        this.y = 2;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = "";
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = 1.0f;
        this.H = 1.0f;
        this.I = 0;
    }

    public String a(int i) {
        return nh.a().a(this.w[i].a);
    }

    public String b(int i) {
        return Keyboard.getKeyName(this.w[i].b);
    }

    public void a(int i, int i2) {
        this.w[i].b = i2;
        b();
    }

    public void a(ht htVar, float f) {
        if (htVar == ht.MUSIC) {
            this.a = f;
            this.x.B.a();
        }
        if (htVar == ht.SOUND) {
            this.b = f;
            this.x.B.a();
        }
        if (htVar == ht.SENSITIVITY) {
            this.c = f;
        }
    }

    public void a(ht htVar, int i) {
        if (htVar == ht.INVERT_MOUSE) {
            this.d = !this.d;
        }
        if (htVar == ht.RENDER_DISTANCE) {
            this.e = (this.e + i) & 3;
        }
        if (htVar == ht.GUI_SCALE) {
            this.I = (this.I + i) & 3;
        }
        if (htVar == ht.VIEW_BOBBING) {
            this.f = !this.f;
        }
        if (htVar == ht.ADVANCED_OPENGL) {
            this.h = !this.h;
            this.x.g.a();
        }
        if (htVar == ht.ANAGLYPH) {
            this.g = !this.g;
            this.x.p.b();
        }
        if (htVar == ht.FRAMERATE_LIMIT) {
            this.i = ((this.i + i) + 3) % 3;
        }
        if (htVar == ht.DIFFICULTY) {
            this.y = (this.y + i) & 3;
        }
        if (htVar == ht.GRAPHICS) {
            this.j = !this.j;
            this.x.g.a();
        }
        if (htVar == ht.AMBIENT_OCCLUSION) {
            this.k = !this.k;
            this.x.g.a();
        }
        b();
    }

    public float a(ht htVar) {
        if (htVar == ht.MUSIC) {
            return this.a;
        }
        if (htVar == ht.SOUND) {
            return this.b;
        }
        if (htVar == ht.SENSITIVITY) {
            return this.c;
        }
        return 0.0f;
    }

    public boolean b(ht htVar) {
        int i = fq.a[htVar.ordinal()];
        if (i == 1) {
            return this.d;
        }
        if (i == 2) {
            return this.f;
        }
        if (i == 3) {
            return this.g;
        }
        if (i == 4) {
            return this.h;
        }
        if (i != 5) {
            return false;
        }
        return this.k;
    }

    public String c(ht htVar) {
        nh nhVarA = nh.a();
        String str = nhVarA.a(htVar.d()) + ": ";
        if (htVar.a()) {
            float fA = a(htVar);
            if (htVar != ht.SENSITIVITY) {
                if (fA == 0.0f) {
                    return str + nhVarA.a("options.off");
                }
                return str + ((int) (fA * 100.0f)) + "%";
            }
            if (fA == 0.0f) {
                return str + nhVarA.a("options.sensitivity.min");
            }
            if (fA == 1.0f) {
                return str + nhVarA.a("options.sensitivity.max");
            }
            return str + ((int) (fA * 200.0f)) + "%";
        }
        if (htVar.b()) {
            if (b(htVar)) {
                return str + nhVarA.a("options.on");
            }
            return str + nhVarA.a("options.off");
        }
        if (htVar == ht.RENDER_DISTANCE) {
            return str + nhVarA.a(J[this.e]);
        }
        if (htVar == ht.DIFFICULTY) {
            return str + nhVarA.a(K[this.y]);
        }
        if (htVar == ht.GUI_SCALE) {
            return str + nhVarA.a(L[this.I]);
        }
        if (htVar == ht.FRAMERATE_LIMIT) {
            return str + Cdo.a(M[this.i]);
        }
        if (htVar != ht.GRAPHICS) {
            return str;
        }
        if (this.j) {
            return str + nhVarA.a("options.graphics.fancy");
        }
        return str + nhVarA.a("options.graphics.fast");
    }

    public void a() {
        try {
            if (this.N.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.N));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        try {
                            String[] strArrSplit = line.split(":");
                            if (strArrSplit[0].equals("music")) {
                                this.a = a(strArrSplit[1]);
                            }
                            if (strArrSplit[0].equals("sound")) {
                                this.b = a(strArrSplit[1]);
                            }
                            if (strArrSplit[0].equals("mouseSensitivity")) {
                                this.c = a(strArrSplit[1]);
                            }
                            if (strArrSplit[0].equals("invertYMouse")) {
                                this.d = strArrSplit[1].equals("true");
                            }
                            if (strArrSplit[0].equals("viewDistance")) {
                                this.e = Integer.parseInt(strArrSplit[1]);
                            }
                            if (strArrSplit[0].equals("guiScale")) {
                                this.I = Integer.parseInt(strArrSplit[1]);
                            }
                            if (strArrSplit[0].equals("bobView")) {
                                this.f = strArrSplit[1].equals("true");
                            }
                            if (strArrSplit[0].equals("anaglyph3d")) {
                                this.g = strArrSplit[1].equals("true");
                            }
                            if (strArrSplit[0].equals("advancedOpengl")) {
                                this.h = strArrSplit[1].equals("true");
                            }
                            if (strArrSplit[0].equals("fpsLimit")) {
                                this.i = Integer.parseInt(strArrSplit[1]);
                            }
                            if (strArrSplit[0].equals("difficulty")) {
                                this.y = Integer.parseInt(strArrSplit[1]);
                            }
                            if (strArrSplit[0].equals("fancyGraphics")) {
                                this.j = strArrSplit[1].equals("true");
                            }
                            if (strArrSplit[0].equals("ao")) {
                                this.k = strArrSplit[1].equals("true");
                            }
                            if (strArrSplit[0].equals("skin")) {
                                this.l = strArrSplit[1];
                            }
                            if (strArrSplit[0].equals("lastServer") && strArrSplit.length >= 2) {
                                this.C = strArrSplit[1];
                            }
                            for (int i = 0; i < this.w.length; i++) {
                                if (strArrSplit[0].equals("key_" + this.w[i].a)) {
                                    this.w[i].b = Integer.parseInt(strArrSplit[1]);
                                }
                            }
                        } catch (Exception unused) {
                            System.out.println("Skipping bad option: " + line);
                        }
                    } else {
                        bufferedReader.close();
                        return;
                    }
                    System.out.println("Failed to load options");
                    e.printStackTrace();
                }
            }
        } catch (Exception e) {
            System.out.println("Failed to load options");
            e.printStackTrace();
        }
    }

    private float a(String str) {
        if (str.equals("true")) {
            return 1.0f;
        }
        if (str.equals("false")) {
            return 0.0f;
        }
        return Float.parseFloat(str);
    }

    public void b() {
        try {
            PrintWriter printWriter = new PrintWriter(new FileWriter(this.N));
            printWriter.println("music:" + this.a);
            printWriter.println("sound:" + this.b);
            printWriter.println("invertYMouse:" + this.d);
            printWriter.println("mouseSensitivity:" + this.c);
            printWriter.println("viewDistance:" + this.e);
            printWriter.println("guiScale:" + this.I);
            printWriter.println("bobView:" + this.f);
            printWriter.println("anaglyph3d:" + this.g);
            printWriter.println("advancedOpengl:" + this.h);
            printWriter.println("fpsLimit:" + this.i);
            printWriter.println("difficulty:" + this.y);
            printWriter.println("fancyGraphics:" + this.j);
            printWriter.println("ao:" + this.k);
            printWriter.println("skin:" + this.l);
            printWriter.println("lastServer:" + this.C);
            for (int i = 0; i < this.w.length; i++) {
                printWriter.println("key_" + this.w[i].a + ":" + this.w[i].b);
            }
            printWriter.close();
        } catch (Exception e) {
            System.out.println("Failed to save options");
            e.printStackTrace();
        }
    }
}
