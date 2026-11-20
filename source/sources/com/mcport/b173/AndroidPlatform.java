package com.mcport.b173;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.Surface;
import mcport.GameBridge;
import mcport.NativeDisplay;
import mcport.Platform;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;
import org.lwjgl.openal.AL;

/* JADX INFO: loaded from: classes.dex */
final class AndroidPlatform extends Platform {
    private final GameActivity act;
    volatile GameBridge bridge;
    private boolean eglAttached;
    volatile boolean exitRequested;
    private boolean inBackground;
    private final ControllerInput pad;
    private Surface surface;
    private boolean surfaceDirty;
    private final Object lock = new Object();
    private volatile int width = 1;
    private volatile int height = 1;
    private volatile boolean focused = true;

    AndroidPlatform(GameActivity gameActivity, ControllerInput controllerInput) {
        this.act = gameActivity;
        this.pad = controllerInput;
    }

    void surfaceAvailable(Surface surface, int i, int i2) {
        synchronized (this.lock) {
            this.width = Math.max(1, i);
            this.height = Math.max(1, i2);
            if (surface != this.surface) {
                this.surface = surface;
                this.surfaceDirty = true;
            }
            this.lock.notifyAll();
        }
    }

    void surfaceDestroyed() {
        synchronized (this.lock) {
            this.surface = null;
            this.surfaceDirty = true;
            this.lock.notifyAll();
            long jCurrentTimeMillis = System.currentTimeMillis() + 4000;
            while (this.eglAttached) {
                long jCurrentTimeMillis2 = jCurrentTimeMillis - System.currentTimeMillis();
                if (jCurrentTimeMillis2 <= 0) {
                    break;
                } else {
                    try {
                        this.lock.wait(jCurrentTimeMillis2);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    void setFocused(boolean z) {
        this.focused = z;
    }

    int height() {
        return this.height;
    }

    int width() {
        return this.width;
    }

    @Override // mcport.Platform
    public Object waitForSurface() {
        Surface surface;
        synchronized (this.lock) {
            while (true) {
                surface = this.surface;
                if (surface == null) {
                    try {
                        this.lock.wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    this.surfaceDirty = false;
                    this.eglAttached = true;
                }
            }
        }
        return surface;
    }

    @Override // mcport.Platform
    public int surfaceWidth() {
        return this.width;
    }

    @Override // mcport.Platform
    public int surfaceHeight() {
        return this.height;
    }

    @Override // mcport.Platform
    public int swapInterval() {
        return new Prefs(this.act).vsync() ? 1 : 0;
    }

    @Override // mcport.Platform
    public boolean isActive() {
        return this.focused && !this.inBackground;
    }

    @Override // mcport.Platform
    public void onFrame() {
        boolean z;
        Surface surface;
        this.pad.onFrame();
        synchronized (this.lock) {
            z = this.surfaceDirty;
            surface = this.surface;
            this.surfaceDirty = false;
        }
        if (z) {
            if (surface == null) {
                NativeDisplay.releaseSurface();
                enterBackground();
                synchronized (this.lock) {
                    this.eglAttached = false;
                    this.lock.notifyAll();
                }
            } else {
                if (!NativeDisplay.attachSurface(surface, this.width, this.height)) {
                    Log.e(Prefs.FILE, "attachSurface failed");
                }
                synchronized (this.lock) {
                    this.eglAttached = true;
                }
                leaveBackground();
            }
        }
        if (this.inBackground) {
            GameBridge gameBridge = this.bridge;
            if (gameBridge != null && gameBridge.isMultiplayer()) {
                try {
                    Thread.sleep(40L);
                    return;
                } catch (InterruptedException unused) {
                    return;
                }
            }
            synchronized (this.lock) {
                while (this.surface == null && !this.exitRequested) {
                    try {
                        this.lock.wait();
                    } catch (InterruptedException unused2) {
                    }
                }
                Surface surface2 = this.surface;
                if (surface2 != null) {
                    NativeDisplay.attachSurface(surface2, this.width, this.height);
                    this.eglAttached = true;
                    this.surfaceDirty = false;
                }
            }
            leaveBackground();
        }
    }

    private void enterBackground() {
        if (this.inBackground) {
            return;
        }
        this.inBackground = true;
        Mouse.releaseAll();
        Keyboard.releaseAll();
        GameBridge gameBridge = this.bridge;
        if (gameBridge != null) {
            gameBridge.onBackground();
        }
        AL.setPaused(true);
        if (gameBridge == null || !gameBridge.isMultiplayer()) {
            return;
        }
        NativeDisplay.attachPbuffer();
    }

    private void leaveBackground() {
        if (this.inBackground) {
            this.inBackground = false;
            AL.setPaused(false);
        }
    }

    void wakeForExit() {
        synchronized (this.lock) {
            this.exitRequested = true;
            this.lock.notifyAll();
        }
    }

    @Override // mcport.Platform
    public String getClipboard() {
        final String[] strArr = new String[1];
        final Object obj = new Object();
        this.act.runOnUiThread(new Runnable() { // from class: com.mcport.b173.AndroidPlatform$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m0lambda$getClipboard$0$commcportb173AndroidPlatform(strArr, obj);
            }
        });
        synchronized (obj) {
            try {
                obj.wait(500L);
            } catch (InterruptedException unused) {
            }
        }
        return strArr[0];
    }

    /* JADX INFO: renamed from: lambda$getClipboard$0$com-mcport-b173-AndroidPlatform, reason: not valid java name */
    /* synthetic */ void m0lambda$getClipboard$0$commcportb173AndroidPlatform(String[] strArr, Object obj) {
        try {
            ClipData primaryClip = ((ClipboardManager) this.act.getSystemService("clipboard")).getPrimaryClip();
            if (primaryClip != null && primaryClip.getItemCount() > 0) {
                CharSequence charSequenceCoerceToText = primaryClip.getItemAt(0).coerceToText(this.act);
                strArr[0] = charSequenceCoerceToText == null ? null : charSequenceCoerceToText.toString();
            }
        } catch (Throwable unused) {
        }
        synchronized (obj) {
            obj.notifyAll();
            String str = strArr[0];
            if (str == null) {
                str = "";
            }
            strArr[0] = str;
        }
    }

    @Override // mcport.Platform
    public void openURL(String str) {
        if (str != null && str.startsWith("file:") && str.contains("texturepacks")) {
            this.act.startActivity(new Intent(this.act, (Class<?>) ResourcePackActivity.class).putExtra("fromGame", true));
        }
    }

    @Override // mcport.Platform
    public void drawString(int[] iArr, int i, int i2, String str, int i3, int i4, int i5) {
        Bitmap bitmapCopy = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888).copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(bitmapCopy);
        Paint paint = new Paint();
        paint.setColor(i5);
        paint.setTextSize(10.0f);
        paint.setAntiAlias(false);
        canvas.drawText(str, i3, i4, paint);
        bitmapCopy.getPixels(iArr, 0, i, 0, 0, i, i2);
        bitmapCopy.recycle();
    }
}
