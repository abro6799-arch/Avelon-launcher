package com.mcport.b173;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FileWriter;
import mcport.GameBridge;
import mcport.Platform;
import mcport.PortConfig;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class GameActivity extends Activity implements SurfaceHolder.Callback, TouchOverlay.Host {
    private volatile GameBridge bridge;
    private TouchOverlay overlay;
    private ControllerInput pad;
    private AndroidPlatform platform;
    private Prefs prefs;
    private boolean started;
    private SurfaceView surface;
    private int surfW = 1;
    private int surfH = 1;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.prefs = new Prefs(this);
        requestWindowFeature(1);
        getWindow().addFlags(1152);
        getWindow().setSoftInputMode(50);
        if (Build.VERSION.SDK_INT >= 28) {
            getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        }
        FrameLayout frameLayout = new FrameLayout(this);
        SurfaceView surfaceView = new SurfaceView(this);
        this.surface = surfaceView;
        surfaceView.getHolder().addCallback(this);
        this.pad = new ControllerInput(this);
        this.overlay = new TouchOverlay(this, this, false);
        frameLayout.addView(this.surface, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(this.overlay, new FrameLayout.LayoutParams(-1, -1));
        setContentView(frameLayout);
        immersive();
        this.platform = new AndroidPlatform(this, this.pad);
    }

    private void immersive() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            immersive();
        }
        AndroidPlatform androidPlatform = this.platform;
        if (androidPlatform != null) {
            androidPlatform.setFocused(z);
        }
    }

    private void startGame() {
        if (this.started) {
            return;
        }
        this.started = true;
        final File fileDataDir = Prefs.dataDir(this);
        PortConfig.dataDir = fileDataDir;
        PortConfig.username = this.prefs.username();
        String strSkin = this.prefs.skin();
        PortConfig.localSkin = strSkin.isEmpty() ? null : new File(Prefs.skinsDir(this), strSkin);
        PortConfig.exitHandler = new Runnable() { // from class: com.mcport.b173.GameActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m2lambda$startGame$0$commcportb173GameActivity();
            }
        };
        PortConfig.crashSink = new PortConfig.CrashSink() { // from class: com.mcport.b173.GameActivity$$ExternalSyntheticLambda2
            @Override // mcport.PortConfig.CrashSink
            public final void onCrash(String str) {
                this.f$0.m4lambda$startGame$2$commcportb173GameActivity(str);
            }
        };
        Platform.set(this.platform);
        final String stringExtra = getIntent().getStringExtra("host");
        final int intExtra = getIntent().getIntExtra("port", 25565);
        new Thread(new Runnable() { // from class: com.mcport.b173.GameActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m5lambda$startGame$3$commcportb173GameActivity(fileDataDir, stringExtra, intExtra);
            }
        }, "mcport-start").start();
    }

    /* JADX INFO: renamed from: lambda$startGame$0$com-mcport-b173-GameActivity, reason: not valid java name */
    /* synthetic */ void m2lambda$startGame$0$commcportb173GameActivity() {
        this.platform.wakeForExit();
        runOnUiThread(new Runnable() { // from class: com.mcport.b173.GameActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finishAndRemoveTaskCompat();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$startGame$2$com-mcport-b173-GameActivity, reason: not valid java name */
    /* synthetic */ void m4lambda$startGame$2$commcportb173GameActivity(final String str) {
        runOnUiThread(new Runnable() { // from class: com.mcport.b173.GameActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m3lambda$startGame$1$commcportb173GameActivity(str);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$startGame$3$com-mcport-b173-GameActivity, reason: not valid java name */
    /* synthetic */ void m5lambda$startGame$3$commcportb173GameActivity(File file, String str, int i) {
        try {
            AssetInstaller.ensureInstalled(this, file);
        } catch (Exception e) {
            Log.e(Prefs.FILE, "asset install", e);
        }
        FirstRun.ensureOptions(file);
        this.bridge = PortConfig.launch(str, i);
        this.platform.bridge = this.bridge;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishAndRemoveTaskCompat() {
        finish();
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public void openProfile() {
        GameBridge gameBridge = this.bridge;
        if (gameBridge == null || !gameBridge.isTitleScreen()) {
            return;
        }
        startActivity(new Intent(this, (Class<?>) LauncherActivity.class).setAction("com.mcport.b173.PROFILE"));
        finish();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Toast.makeText(this, "The game is already running. Use Profile on the title screen to change username, skin or server.", 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showCrash, reason: merged with bridge method [inline-methods] */
    public void m3lambda$startGame$1$commcportb173GameActivity(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextIsSelectable(true);
        textView.setTextSize(11.0f);
        textView.setPadding(24, 24, 24, 24);
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(textView);
        new AlertDialog.Builder(this).setTitle("Minecraft has crashed").setView(scrollView).setCancelable(false).setPositiveButton("Close", new DialogInterface.OnClickListener() { // from class: com.mcport.b173.GameActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m1lambda$showCrash$4$commcportb173GameActivity(dialogInterface, i);
            }
        }).show();
        try {
            FileWriter fileWriter = new FileWriter(new File(Prefs.dataDir(this), "crash-report.txt"));
            fileWriter.write(str);
            fileWriter.close();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: lambda$showCrash$4$com-mcport-b173-GameActivity, reason: not valid java name */
    /* synthetic */ void m1lambda$showCrash$4$commcportb173GameActivity(DialogInterface dialogInterface, int i) {
        finish();
        System.exit(0);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        applyRenderScale(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (applyRenderScale(surfaceHolder)) {
            this.surfW = i2;
            this.surfH = i3;
            this.platform.surfaceAvailable(surfaceHolder.getSurface(), i2, i3);
            startGame();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.platform.surfaceDestroyed();
    }

    private boolean applyRenderScale(SurfaceHolder surfaceHolder) {
        float fRenderScale = this.prefs.renderScale();
        int width = this.surface.getWidth();
        int height = this.surface.getHeight();
        if (width == 0 || height == 0) {
            return true;
        }
        if (fRenderScale >= 0.99f) {
            surfaceHolder.setSizeFromLayout();
            return true;
        }
        int iMax = Math.max(320, Math.round(width * fRenderScale));
        int iMax2 = Math.max(240, Math.round(height * fRenderScale));
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        if (surfaceFrame.width() == iMax && surfaceFrame.height() == iMax2) {
            return true;
        }
        surfaceHolder.setFixedSize(iMax, iMax2);
        return false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.overlay.releaseGameplay();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        immersive();
        this.overlay.reloadPrefs();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.overlay.stop();
        if (isFinishing()) {
            System.exit(0);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.pad.onKey(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        char c = 0;
        c = 0;
        if (keyCode == 4) {
            if (keyEvent.getAction() == 1) {
                Keyboard.postTap(1, (char) 0);
            }
            return true;
        }
        if (keyCode == 24 || keyCode == 25 || keyCode == 164) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int lwjgl = KeyMap.toLwjgl(keyCode);
        if (keyEvent.getAction() == 2 && keyEvent.getCharacters() != null) {
            for (char c2 : keyEvent.getCharacters().toCharArray()) {
                TouchOverlay.typeChar(c2);
            }
            return true;
        }
        if (lwjgl == 0 && keyEvent.getUnicodeChar() == 0) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean z = keyEvent.getAction() == 0;
        int unicodeChar = keyEvent.getUnicodeChar(keyEvent.getMetaState());
        if (lwjgl == 28) {
            unicodeChar = 13;
        }
        if (lwjgl == 14) {
            unicodeChar = 8;
        }
        if (z && unicodeChar > 0) {
            c = (char) unicodeChar;
        }
        Keyboard.postKey(lwjgl, z, c);
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if (!this.pad.onMotion(motionEvent)) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        this.overlay.invalidate();
        return true;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public GameBridge bridge() {
        return this.bridge;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public int surfaceW() {
        return this.surfW;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public int surfaceH() {
        return this.surfH;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public Prefs prefs() {
        return this.prefs;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public boolean padActive() {
        return this.pad.recentlyUsed();
    }
}
