package defpackage;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class fu extends da {
    private static final Random a = new Random();
    private float i = 0.0f;
    private String j;
    private ke l;

    @Override // defpackage.da
    protected void a(char c, int i) {
    }

    public fu() {
        this.j = "missingno";
        try {
            ArrayList arrayList = new ArrayList();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fu.class.getResourceAsStream("/title/splashes.txt"), Charset.forName("UTF-8")));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    String strTrim = line.trim();
                    if (strTrim.length() > 0) {
                        arrayList.add(strTrim);
                    }
                } else {
                    this.j = (String) arrayList.get(a.nextInt(arrayList.size()));
                    return;
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.da
    public void a() {
        this.i += 1.0f;
    }

    @Override // defpackage.da
    public void b() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        if (calendar.get(2) + 1 == 11 && calendar.get(5) == 9) {
            this.j = "Happy birthday, ez!";
        } else if (calendar.get(2) + 1 == 6 && calendar.get(5) == 1) {
            this.j = "Happy birthday, Notch!";
        } else if (calendar.get(2) + 1 == 12 && calendar.get(5) == 24) {
            this.j = "Merry X-mas!";
        } else if (calendar.get(2) + 1 == 1 && calendar.get(5) == 1) {
            this.j = "Happy new year!";
        }
        nh nhVarA = nh.a();
        int i = (this.d / 4) + 48;
        this.e.add(new ke(1, (this.c / 2) - 100, i, nhVarA.a("menu.singleplayer")));
        List list = this.e;
        ke keVar = new ke(2, (this.c / 2) - 100, i + 24, nhVarA.a("menu.multiplayer"));
        this.l = keVar;
        list.add(keVar);
        this.e.add(new ke(3, (this.c / 2) - 100, i + 48, nhVarA.a("menu.mods")));
        if (this.b.n) {
            this.e.add(new ke(0, (this.c / 2) - 100, i + 72, nhVarA.a("menu.options")));
        } else {
            int i2 = i + 72 + 12;
            this.e.add(new ke(0, (this.c / 2) - 100, i2, 98, 20, nhVarA.a("menu.options")));
            this.e.add(new ke(4, (this.c / 2) + 2, i2, 98, 20, nhVarA.a("menu.quit")));
        }
        if (this.b.k == null) {
            this.l.g = false;
        }
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.f == 0) {
            this.b.a(new co(this, this.b.z));
        }
        if (keVar.f == 1) {
            this.b.a(new rq(this));
        }
        if (keVar.f == 2) {
            this.b.a(new lq(this));
        }
        if (keVar.f == 3) {
            this.b.a(new ft(this));
        }
        if (keVar.f == 4) {
            this.b.f();
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        nw nwVar = nw.a;
        int i3 = (this.c / 2) - 137;
        GL11.glBindTexture(3553, this.b.p.b("/title/mclogo.png"));
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        b(i3 + 0, 30, 0, 0, 155, 44);
        b(i3 + 155, 30, 0, 45, 155, 44);
        nwVar.b(16777215);
        GL11.glPushMatrix();
        GL11.glTranslatef((this.c / 2) + 90, 70.0f, 0.0f);
        GL11.glRotatef(-20.0f, 0.0f, 0.0f, 1.0f);
        float fE = ((1.8f - in.e(in.a((((System.currentTimeMillis() % 1000) / 1000.0f) * 3.1415927f) * 2.0f) * 0.1f)) * 100.0f) / (this.g.a(this.j) + 32);
        GL11.glScalef(fE, fE, fE);
        a(this.g, this.j, 0, -8, 16776960);
        GL11.glPopMatrix();
        b(this.g, "Minecraft Beta 1.7.3", 2, 2, 5263440);
        b(this.g, "Copyright Mojang AB. Do not distribute.", (this.c - this.g.a("Copyright Mojang AB. Do not distribute.")) - 2, this.d - 10, 16777215);
        super.a(i, i2, f);
    }
}
