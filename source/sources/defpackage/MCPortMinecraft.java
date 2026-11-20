package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;
import mcport.GameBridge;
import mcport.Platform;
import mcport.PortConfig;
import mcshim.awt.Canvas;
import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public final class MCPortMinecraft extends Minecraft implements GameBridge {
    public static volatile MCPortMinecraft instance;
    public static volatile String lastCrash;

    public MCPortMinecraft(Canvas canvas, int i, int i2) {
        super(null, canvas, null, i, i2, false);
    }

    @Override // net.minecraft.client.Minecraft
    public void a(mh mhVar) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        printWriter.println("Minecraft has crashed!");
        printWriter.println("----------------------");
        printWriter.println();
        printWriter.println("Minecraft has stopped running because it encountered a problem.");
        printWriter.println();
        printWriter.println("--- BEGIN ERROR REPORT ---");
        printWriter.println("Generated " + new Date());
        printWriter.println();
        printWriter.println("Minecraft: Minecraft Beta 1.7.3 (Android port)");
        printWriter.println("OS: Android/" + System.getProperty("os.arch") + " " + System.getProperty("os.version"));
        printWriter.println("Java: " + System.getProperty("java.vm.name") + " " + System.getProperty("java.vm.version"));
        printWriter.println();
        printWriter.println(mhVar.a);
        if (mhVar.b != null) {
            mhVar.b.printStackTrace(printWriter);
        }
        printWriter.println("--- END ERROR REPORT ---");
        printWriter.flush();
        lastCrash = stringWriter.toString();
        System.err.println(lastCrash);
        PortConfig.CrashSink crashSink = PortConfig.crashSink;
        if (crashSink != null) {
            crashSink.onCrash(lastCrash);
        }
    }

    public static MCPortMinecraft launch(String str, String str2, int i) {
        Platform platform = Platform.get();
        MCPortMinecraft mCPortMinecraft = new MCPortMinecraft(new Canvas(), Math.max(1, platform.surfaceWidth()), Math.max(1, platform.surfaceHeight()));
        mCPortMinecraft.k = new gr(str, "-");
        mCPortMinecraft.n = false;
        if (str2 != null && str2.length() > 0) {
            mCPortMinecraft.a(str2, i);
        }
        instance = mCPortMinecraft;
        Thread thread = new Thread(null, mCPortMinecraft, "Minecraft main thread", 67108864L);
        thread.setPriority(10);
        thread.start();
        return mCPortMinecraft;
    }

    @Override // mcport.GameBridge
    public void onBackground() {
        try {
            if (this.f != null && this.r == null) {
                j();
            }
            if (this.f == null || this.f.B) {
                return;
            }
            this.f.a(true, (yb) null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // mcport.GameBridge
    public boolean isInGameplay() {
        return this.f != null && this.r == null;
    }

    @Override // mcport.GameBridge
    public boolean isContainerScreen() {
        return this.r instanceof id;
    }

    @Override // mcport.GameBridge
    public boolean isRiding() {
        return (this.h == null || this.h.aH == null) ? false : true;
    }

    @Override // mcport.GameBridge
    public boolean isMultiplayer() {
        return this.f != null && this.f.B;
    }

    @Override // mcport.GameBridge
    public boolean isScreenOpen() {
        return this.r != null;
    }

    @Override // mcport.GameBridge
    public boolean isTitleScreen() {
        return this.f == null && (this.r instanceof fu);
    }

    @Override // mcport.GameBridge
    public boolean screenWantsText() {
        da daVar = this.r;
        return (daVar instanceof gc) || (daVar instanceof yc) || (daVar instanceof fj) || (daVar instanceof lq) || (daVar instanceof jk);
    }

    @Override // mcport.GameBridge
    public int[] hotbarRect() {
        if (this.f == null || this.r != null || this.z == null) {
            return null;
        }
        qq qqVar = new qq(this.z, this.d, this.e);
        int i = qqVar.c;
        return new int[]{((qqVar.a() / 2) - 91) * i, 0, i * 20, i * 22, i};
    }
}
