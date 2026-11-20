package defpackage;

import java.util.ArrayList;
import java.util.List;
import mcshim.awt.Toolkit;
import mcshim.awt.datatransfer.DataFlavor;
import mcshim.awt.datatransfer.Transferable;
import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class da extends ub {
    protected Minecraft b;
    public int c;
    public int d;
    protected sj g;
    public du h;
    protected List e = new ArrayList();
    public boolean f = false;
    private ke a = null;

    public void a() {
    }

    protected void a(ke keVar) {
    }

    public void a(boolean z, int i) {
    }

    public void b() {
    }

    public boolean c() {
        return true;
    }

    public void h() {
    }

    public void j() {
    }

    public void a(int i, int i2, float f) {
        for (int i3 = 0; i3 < this.e.size(); i3++) {
            ((ke) this.e.get(i3)).a(this.b, i, i2);
        }
    }

    protected void a(char c, int i) {
        if (i == 1) {
            this.b.a((da) null);
            this.b.g();
        }
    }

    public static String d() {
        try {
            Transferable contents = Toolkit.getDefaultToolkit().getSystemClipboard().getContents(null);
            if (contents != null && contents.isDataFlavorSupported(DataFlavor.stringFlavor)) {
                return (String) contents.getTransferData(DataFlavor.stringFlavor);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    protected void a(int i, int i2, int i3) {
        if (i3 == 0) {
            for (int i4 = 0; i4 < this.e.size(); i4++) {
                ke keVar = (ke) this.e.get(i4);
                if (keVar.c(this.b, i, i2)) {
                    this.a = keVar;
                    this.b.B.a("random.click", 1.0f, 1.0f);
                    a(keVar);
                }
            }
        }
    }

    protected void b(int i, int i2, int i3) {
        ke keVar = this.a;
        if (keVar == null || i3 != 0) {
            return;
        }
        keVar.a(i, i2);
        this.a = null;
    }

    public void a(Minecraft minecraft, int i, int i2) {
        this.h = new du(minecraft);
        this.b = minecraft;
        this.g = minecraft.q;
        this.c = i;
        this.d = i2;
        this.e.clear();
        b();
    }

    public void e() {
        while (Mouse.next()) {
            f();
        }
        while (Keyboard.next()) {
            g();
        }
    }

    public void f() {
        if (Mouse.getEventButtonState()) {
            a((Mouse.getEventX() * this.c) / this.b.d, (this.d - ((Mouse.getEventY() * this.d) / this.b.e)) - 1, Mouse.getEventButton());
        } else {
            b((Mouse.getEventX() * this.c) / this.b.d, (this.d - ((Mouse.getEventY() * this.d) / this.b.e)) - 1, Mouse.getEventButton());
        }
    }

    public void g() {
        if (Keyboard.getEventKeyState()) {
            if (Keyboard.getEventKey() == 87) {
                this.b.j();
            } else {
                a(Keyboard.getEventCharacter(), Keyboard.getEventKey());
            }
        }
    }

    public void i() {
        a(0);
    }

    public void a(int i) {
        if (this.b.f != null) {
            a(0, 0, this.c, this.d, -1072689136, -804253680);
        } else {
            b(i);
        }
    }

    public void b(int i) {
        GL11.glDisable(2896);
        GL11.glDisable(2912);
        nw nwVar = nw.a;
        GL11.glBindTexture(3553, this.b.p.b("/gui/background.png"));
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        nwVar.b();
        nwVar.b(4210752);
        int i2 = this.d;
        float f = i;
        nwVar.a(0.0d, i2, 0.0d, 0.0d, (i2 / 32.0f) + f);
        int i3 = this.c;
        int i4 = this.d;
        nwVar.a(i3, i4, 0.0d, i3 / 32.0f, (i4 / 32.0f) + f);
        int i5 = this.c;
        double d = i + 0;
        nwVar.a(i5, 0.0d, 0.0d, i5 / 32.0f, d);
        nwVar.a(0.0d, 0.0d, 0.0d, 0.0d, d);
        nwVar.a();
    }
}
