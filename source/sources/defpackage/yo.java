package defpackage;

import java.io.File;
import java.util.Random;
import org.lwjgl.input.Keyboard;
import paulscode.sound.SoundSystem;
import paulscode.sound.SoundSystemConfig;
import paulscode.sound.codecs.CodecJOrbis;
import paulscode.sound.codecs.CodecWav;
import paulscode.sound.libraries.LibraryLWJGLOpenAL;

/* JADX INFO: loaded from: classes.dex */
public class yo {
    private static SoundSystem a;
    private static boolean g;
    private hr b = new hr();
    private hr c = new hr();
    private hr d = new hr();
    private int e = 0;
    private kv f;
    private Random h;
    private int i;

    public yo() {
        Random random = new Random();
        this.h = random;
        this.i = random.nextInt(12000);
    }

    public void a(kv kvVar) {
        this.c.b = false;
        this.f = kvVar;
        if (g) {
            return;
        }
        if (kvVar != null && kvVar.b == 0.0f && kvVar.a == 0.0f) {
            return;
        }
        d();
    }

    private void d() {
        try {
            float f = this.f.b;
            float f2 = this.f.a;
            this.f.b = 0.0f;
            this.f.a = 0.0f;
            this.f.b();
            SoundSystemConfig.addLibrary(LibraryLWJGLOpenAL.class);
            SoundSystemConfig.setCodec("ogg", CodecJOrbis.class);
            SoundSystemConfig.setCodec("mus", io.class);
            SoundSystemConfig.setCodec("wav", CodecWav.class);
            a = new SoundSystem();
            this.f.b = f;
            this.f.a = f2;
            this.f.b();
        } catch (Throwable th) {
            th.printStackTrace();
            System.err.println("error linking with the LibraryJavaSound plug-in");
        }
        g = true;
    }

    public void a() {
        if (!g && (this.f.b != 0.0f || this.f.a != 0.0f)) {
            d();
        }
        if (g) {
            if (this.f.a == 0.0f) {
                a.stop("BgMusic");
            } else {
                a.setVolume("BgMusic", this.f.a);
            }
        }
    }

    public void b() {
        if (g) {
            a.cleanup();
        }
    }

    public void a(String str, File file) {
        this.b.a(str, file);
    }

    public void b(String str, File file) {
        this.c.a(str, file);
    }

    public void c(String str, File file) {
        this.d.a(str, file);
    }

    public void c() {
        if (!g || this.f.a == 0.0f || a.playing("BgMusic") || a.playing("streaming")) {
            return;
        }
        int i = this.i;
        if (i > 0) {
            this.i = i - 1;
            return;
        }
        bh bhVarA = this.d.a();
        if (bhVarA != null) {
            this.i = this.h.nextInt(12000) + 12000;
            a.backgroundMusic("BgMusic", bhVarA.b, bhVarA.a, false);
            a.setVolume("BgMusic", this.f.a);
            a.play("BgMusic");
        }
    }

    public void a(ls lsVar, float f) {
        if (!g || this.f.b == 0.0f || lsVar == null) {
            return;
        }
        float f2 = lsVar.aU + ((lsVar.aS - lsVar.aU) * f);
        double d = f;
        double d2 = lsVar.aJ + ((lsVar.aM - lsVar.aJ) * d);
        double d3 = lsVar.aK + ((lsVar.aN - lsVar.aK) * d);
        double d4 = lsVar.aL + ((lsVar.aO - lsVar.aL) * d);
        float f3 = ((-f2) * 0.017453292f) - 3.1415927f;
        float fB = in.b(f3);
        a.setListenerPosition((float) d2, (float) d3, (float) d4);
        a.setListenerOrientation(-in.a(f3), 0.0f, -fB, 0.0f, 1.0f, 0.0f);
    }

    public void a(String str, float f, float f2, float f3, float f4, float f5) {
        bh bhVarA;
        if (!g || this.f.b == 0.0f) {
            return;
        }
        if (a.playing("streaming")) {
            a.stop("streaming");
        }
        if (str == null || (bhVarA = this.c.a(str)) == null || f4 <= 0.0f) {
            return;
        }
        if (a.playing("BgMusic")) {
            a.stop("BgMusic");
        }
        a.newStreamingSource(true, "streaming", bhVarA.b, bhVarA.a, false, f, f2, f3, 2, 64.0f);
        a.setVolume("streaming", this.f.b * 0.5f);
        a.play("streaming");
    }

    public void b(String str, float f, float f2, float f3, float f4, float f5) {
        bh bhVarA;
        if (!g || this.f.b == 0.0f || (bhVarA = this.b.a(str)) == null || f4 <= 0.0f) {
            return;
        }
        this.e = (this.e + 1) % Keyboard.KEYBOARD_SIZE;
        String str2 = "sound_" + this.e;
        a.newSource(f4 > 1.0f, str2, bhVarA.b, bhVarA.a, false, f, f2, f3, 2, f4 > 1.0f ? 16.0f * f4 : 16.0f);
        a.setPitch(str2, f5);
        a.setVolume(str2, (f4 <= 1.0f ? f4 : 1.0f) * this.f.b);
        a.play(str2);
    }

    public void a(String str, float f, float f2) {
        bh bhVarA;
        if (!g || this.f.b == 0.0f || (bhVarA = this.b.a(str)) == null) {
            return;
        }
        this.e = (this.e + 1) % Keyboard.KEYBOARD_SIZE;
        String str2 = "sound_" + this.e;
        a.newSource(false, str2, bhVarA.b, bhVarA.a, false, 0.0f, 0.0f, 0.0f, 0, 0.0f);
        float f3 = f <= 1.0f ? f : 1.0f;
        a.setPitch(str2, f2);
        a.setVolume(str2, f3 * 0.25f * this.f.b);
        a.play(str2);
    }
}
