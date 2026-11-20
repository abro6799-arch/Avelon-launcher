package com.mcport.b173;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mcport.GameBridge;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

/* JADX INFO: loaded from: classes.dex */
public class TouchOverlay extends View {
    private float atkX;
    private float atkY;
    private final Ctl attack;
    private final Ctl chat;
    private final List<Ctl> ctls;
    private final Ctl dismount;
    private final float dp;
    private float dragOffX;
    private float dragOffY;
    private Ctl dragging;
    private final Ctl drop;
    private final boolean editMode;
    private final Paint fill;
    private final Host host;
    private boolean imeShown;
    private final Ctl inv;
    private final Ctl joy;
    private boolean[] joyKeys;
    private final Ctl jump;
    private final Ctl kbd;
    private float knobX;
    private float knobY;
    private int lastButtons;
    private int lastState;
    private final Runnable longPress;
    private boolean lookBreaking;
    private long lookDownT;
    private float lookDownX;
    private float lookDownY;
    private float lookLastX;
    private float lookLastY;
    private boolean lookMoved;
    private int lookPointer;
    private float lookRemX;
    private float lookRemY;
    private int menuPointer;
    private final Ctl pause;
    private final Runnable poll;
    private final Ctl profile;
    private final Ctl rclick;
    private boolean rclickMode;
    private final Ctl shift;
    private boolean shiftHeld;
    private final Ctl sneak;
    private final Paint stroke;
    private final Paint text;
    private final Handler ui;
    private final Ctl use;
    private final Ctl view;

    public interface Host {
        GameBridge bridge();

        void openProfile();

        boolean padActive();

        Prefs prefs();

        int surfaceH();

        int surfaceW();
    }

    private static void sq(Canvas canvas, float f, float f2, float f3, Paint paint) {
        float f4 = f - f3;
        float f5 = f2 - f3;
        float f6 = f + f3;
        float f7 = f2 + f3;
        RectF rectF = new RectF(f4, f5, f6, f7);
        float f8 = 0.2f * f3;
        canvas.drawRoundRect(rectF, f8, f8, paint);
        if (paint.getStyle() == Paint.Style.FILL) {
            Paint paint2 = new Paint();
            float f9 = 0.1f * f3;
            paint2.setColor(1895825407);
            rectF.set(f4 + f8, f5, f6 - f8, f5 + f9);
            canvas.drawRect(rectF, paint2);
            rectF.set(f4, f5 + f8, f4 + f9, f7 - f8);
            canvas.drawRect(rectF, paint2);
            paint2.setColor(1879048192);
            rectF.set(f4 + f8, f7 - f9, f6 - f8, f7);
            canvas.drawRect(rectF, paint2);
            rectF.set(f6 - f9, f5 + f8, f6, f7 - f8);
            canvas.drawRect(rectF, paint2);
        }
    }

    static final class Ctl {
        float cx;
        float cy;
        final float defX;
        final float defY;
        final String key;
        final int kind;
        final String label;
        int pointer = -1;
        boolean pressed;
        float r;
        final float sizeDp;
        boolean toggled;

        Ctl(String str, String str2, float f, float f2, float f3, int i) {
            this.key = str;
            this.label = str2;
            this.defX = f;
            this.defY = f2;
            this.sizeDp = f3;
            this.kind = i;
        }
    }

    public TouchOverlay(Context context, Host host, boolean z) {
        super(context);
        this.ctls = new ArrayList();
        this.fill = new Paint(1);
        Paint paint = new Paint(1);
        this.stroke = paint;
        Paint paint2 = new Paint(1);
        this.text = paint2;
        this.joyKeys = new boolean[4];
        this.lookPointer = -1;
        this.menuPointer = -1;
        Handler handler = new Handler(Looper.getMainLooper());
        this.ui = handler;
        this.lastState = -1;
        Runnable runnable = new Runnable() { // from class: com.mcport.b173.TouchOverlay.1
            @Override // java.lang.Runnable
            public void run() {
                int iState = TouchOverlay.this.state();
                if (iState != TouchOverlay.this.lastState) {
                    if ((iState & 1) == 0 && (TouchOverlay.this.lastState & 1) != 0) {
                        TouchOverlay.this.releaseGameplay();
                    }
                    if ((iState & 8) == 0) {
                        TouchOverlay.this.rclickMode = false;
                        if (TouchOverlay.this.shiftHeld) {
                            TouchOverlay.this.shiftHeld = false;
                            Keyboard.postKey(42, false, (char) 0);
                        }
                    }
                    boolean z2 = (iState & 4) != 0;
                    if (z2 != TouchOverlay.this.imeShown) {
                        TouchOverlay.this.setIme(z2);
                    }
                    TouchOverlay.this.lastState = iState;
                    TouchOverlay.this.invalidate();
                }
                TouchOverlay.this.ui.postDelayed(this, 120L);
            }
        };
        this.poll = runnable;
        this.longPress = new Runnable() { // from class: com.mcport.b173.TouchOverlay$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m33lambda$new$0$commcportb173TouchOverlay();
            }
        };
        this.host = host;
        this.editMode = z;
        float f = context.getResources().getDisplayMetrics().density;
        this.dp = f;
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.joy = add(new Ctl("joy", "", 0.13f, 0.76f, 62.0f, 1));
        this.jump = add(new Ctl("jump", "↑", 0.92f, 0.772f, 30.0f, 0));
        this.sneak = add(new Ctl("sneak", "↓", 0.81f, 0.86f, 24.0f, 0));
        this.attack = add(new Ctl("attack", "†", 0.8f, 0.64f, 30.0f, 0));
        this.use = add(new Ctl("use", "+", 0.92f, 0.52f, 30.0f, 0));
        this.pause = add(new Ctl("pause", "II", 0.5f, 0.055f, 14.0f, 2));
        this.inv = add(new Ctl("inv", "…", 0.7225f, 0.94f, 16.0f, 2));
        this.drop = add(new Ctl("drop", "×", 0.54f, 0.055f, 14.0f, 2));
        this.chat = add(new Ctl("chat", "Chat", 0.46f, 0.055f, 14.0f, 2));
        this.view = add(new Ctl("view", "v5", 0.58f, 0.055f, 14.0f, 2));
        this.dismount = add(new Ctl("dismount", "Exit", 0.66f, 0.88f, 24.0f, 0));
        this.kbd = add(new Ctl("kbd", "Keys", 0.965f, 0.08f, 20.0f, 2));
        this.rclick = add(new Ctl("rclick", "R-click", 0.05f, 0.3f, 24.0f, 2));
        this.shift = add(new Ctl("shift", "Shift", 0.05f, 0.45f, 24.0f, 2));
        this.profile = add(new Ctl("profile", "Profile", 0.06f, 0.08f, 22.0f, 2));
        paint2.setColor(-13948117);
        paint2.setTextAlign(Paint.Align.CENTER);
        paint2.setFakeBoldText(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f * 1.5f);
        paint.setColor(-11184811);
        if (z) {
            return;
        }
        handler.postDelayed(runnable, 100L);
    }

    private Ctl add(Ctl ctl) {
        this.ctls.add(ctl);
        return ctl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int state() {
        GameBridge gameBridgeBridge = this.host.bridge();
        if (gameBridgeBridge == null) {
            return 0;
        }
        int i = gameBridgeBridge.isInGameplay() ? 1 : 2;
        if (i == 2 && gameBridgeBridge.screenWantsText()) {
            i |= 4;
        }
        if (i == 2 && gameBridgeBridge.isContainerScreen()) {
            i |= 8;
        }
        if (i == 1 && gameBridgeBridge.isRiding()) {
            i |= 16;
        }
        if (gameBridgeBridge.isMultiplayer()) {
            i |= 32;
        }
        if (i == 2 && gameBridgeBridge.isTitleScreen()) {
            i |= 128;
        }
        return this.host.padActive() ? i | 64 : i;
    }

    void stop() {
        this.ui.removeCallbacks(this.poll);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIme(boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        if (z) {
            requestFocus();
            inputMethodManager.restartInput(this);
            inputMethodManager.showSoftInput(this, 0);
        } else {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
        this.imeShown = z;
    }

    private boolean visible(Ctl ctl, int i) {
        if (this.editMode) {
            return (ctl == this.kbd || ctl == this.rclick || ctl == this.shift || ctl == this.dismount || ctl == this.profile) ? false : true;
        }
        if (ctl == this.profile) {
            return (i & 128) != 0;
        }
        if ((i & 64) != 0 && this.host.prefs().hideTouchWithController()) {
            return false;
        }
        if ((i & 1) == 0) {
            if ((i & 2) != 0) {
                if (ctl == this.kbd) {
                    return true;
                }
                return (ctl == this.rclick || ctl == this.shift) && (i & 8) != 0;
            }
            return false;
        }
        if (ctl == this.kbd || ctl == this.rclick || ctl == this.shift) {
            return false;
        }
        if ((ctl == this.attack || ctl == this.use) && !this.host.prefs().showAttackUse()) {
            return false;
        }
        if (ctl == this.dismount) {
            return (i & 16) != 0;
        }
        return (ctl == this.chat && (i & 32) == 0) ? false : true;
    }

    private void layout() {
        float fControlScale = this.host.prefs().controlScale();
        int width = getWidth();
        int height = getHeight();
        for (Ctl ctl : this.ctls) {
            float[] fArrPos = this.host.prefs().pos(ctl.key, ctl.defX, ctl.defY);
            ctl.cx = fArrPos[0] * width;
            ctl.cy = fArrPos[1] * height;
            ctl.r = ctl.sizeDp * this.dp * fControlScale;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        layout();
    }

    void reloadPrefs() {
        layout();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        char c;
        float f;
        int i2 = 1;
        int iState = this.editMode ? 1 : state();
        if (iState == 0) {
            return;
        }
        float fControlOpacity = this.host.prefs().controlOpacity();
        char c2 = 2621;
        if (this.editMode) {
            canvas.drawColor(Color.argb(255, 40, 60, 40));
            this.text.setTextSize(this.dp * 14.0f);
            this.text.setAlpha(255);
            canvas.drawText("Drag controls to move them. Press Back to save.", getWidth() / 2.0f, getHeight() * 0.42f, this.text);
        }
        Iterator<Ctl> it = this.ctls.iterator();
        while (it.hasNext()) {
            Ctl next = it.next();
            if (visible(next, iState)) {
                int i3 = (next.pressed || (next == this.sneak && next.toggled) || ((next == this.rclick && this.rclickMode) || (next == this.shift && this.shiftHeld))) ? i2 : 0;
                this.fill.setColor(i3 != 0 ? -1 : -7631989);
                float f2 = fControlOpacity * 255.0f;
                this.fill.setAlpha((int) ((i3 != 0 ? 0.55f : 0.45f) * f2));
                this.stroke.setAlpha((int) f2);
                int i4 = 2;
                if (next.kind == i2 && this.host.prefs().controllerLayout()) {
                    float f3 = next.r * 0.36f;
                    int i5 = 0;
                    while (i5 < 4) {
                        float f4 = -1.0f;
                        if (i5 == i2) {
                            f = -1.0f;
                        } else {
                            f = i5 == 3 ? 1.0f : 0.0f;
                        }
                        if (i5 != 0) {
                            f4 = i5 == i4 ? 1.0f : 0.0f;
                        }
                        this.fill.setColor(this.joyKeys[i5] ? -1 : -7631989);
                        this.fill.setAlpha((int) ((this.joyKeys[i5] ? 0.55f : 0.45f) * f2));
                        RectF rectF = new RectF((next.cx + ((next.r * f) * 0.66f)) - f3, (next.cy + ((next.r * f4) * 0.66f)) - f3, next.cx + (f * next.r * 0.66f) + f3, next.cy + (f4 * next.r * 0.66f) + f3);
                        float f5 = this.dp;
                        canvas.drawRoundRect(rectF, f5 * 4.0f, f5 * 4.0f, this.fill);
                        float f6 = this.dp;
                        canvas.drawRoundRect(rectF, f6 * 4.0f, f6 * 4.0f, this.stroke);
                        this.text.setTextSize(f3);
                        this.text.setAlpha((int) (Math.min(1.0f, fControlOpacity + 0.3f) * 255.0f));
                        canvas.drawText(new String[]{"W", "A", "S", "D"}[i5], rectF.centerX(), rectF.centerY() + (0.35f * f3), this.text);
                        i5++;
                        i2 = 1;
                        c2 = 2621;
                        i4 = 2;
                    }
                    i = i2;
                    c = c2;
                } else {
                    i = 1;
                    if (next.kind == 1) {
                        sq(canvas, next.cx, next.cy, next.r, this.fill);
                        sq(canvas, next.cx, next.cy, next.r, this.stroke);
                        float f7 = next.pointer >= 0 ? this.knobX : next.cx;
                        float f8 = next.pointer >= 0 ? this.knobY : next.cy;
                        this.fill.setColor(-1);
                        this.fill.setAlpha((int) (f2 * 0.8f));
                        c = 2621;
                        sq(canvas, f7, f8, next.r * 0.42f, this.fill);
                    } else {
                        c = 2621;
                        if (next.kind == 2) {
                            RectF rectF2 = new RectF(next.cx - (next.r * 1.0f), next.cy - (next.r * 1.0f), next.cx + (next.r * 1.0f), next.cy + (next.r * 1.0f));
                            float f9 = this.dp;
                            canvas.drawRoundRect(rectF2, f9 * 6.0f, f9 * 6.0f, this.fill);
                            float f10 = this.dp;
                            canvas.drawRoundRect(rectF2, f10 * 6.0f, f10 * 6.0f, this.stroke);
                            this.text.setTextSize(next.r * 1.1f);
                            this.text.setAlpha((int) (Math.min(1.0f, fControlOpacity + 0.3f) * 255.0f));
                            canvas.drawText(next.label, next.cx, next.cy + (next.r * 0.22f), this.text);
                        } else {
                            sq(canvas, next.cx, next.cy, next.r, this.fill);
                            sq(canvas, next.cx, next.cy, next.r, this.stroke);
                            this.text.setTextSize(next.r * 0.8f);
                            this.text.setAlpha((int) (Math.min(1.0f, fControlOpacity + 0.3f) * 255.0f));
                            canvas.drawText(next.label, next.cx, next.cy + (next.r * 0.18f), this.text);
                        }
                    }
                }
                i2 = i;
                c2 = c;
            }
        }
    }

    private Ctl hit(float f, float f2, int i) {
        float f3;
        float f4;
        for (Ctl ctl : this.ctls) {
            if (visible(ctl, i)) {
                if (ctl.kind == 1) {
                    f3 = ctl.r;
                    f4 = 1.25f;
                } else if (ctl.kind == 2) {
                    f3 = ctl.r;
                    f4 = 1.4f;
                } else {
                    f3 = ctl.r;
                    f4 = 1.1f;
                }
                float f5 = f3 * f4;
                float f6 = f - ctl.cx;
                float f7 = f2 - ctl.cy;
                if ((f6 * f6) + (f7 * f7) <= f5 * f5) {
                    return ctl;
                }
            }
        }
        return null;
    }

    private int sx(float f) {
        return Math.round((f * this.host.surfaceW()) / Math.max(1, getWidth()));
    }

    private int syGL(float f) {
        return (this.host.surfaceH() - 1) - Math.round((f * this.host.surfaceH()) / Math.max(1, getHeight()));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0080  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.editMode) {
            return editTouch(motionEvent);
        }
        int iState = state();
        if (iState == 0) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        if (motionEvent.getToolType(actionIndex) == 3) {
            return mouseTouch(motionEvent);
        }
        if (actionMasked == 0) {
            down(pointerId, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), iState);
        } else if (actionMasked != 1) {
            if (actionMasked == 2) {
                for (int i = 0; i < motionEvent.getPointerCount(); i++) {
                    move(motionEvent.getPointerId(i), motionEvent.getX(i), motionEvent.getY(i), iState);
                }
            } else if (actionMasked == 3) {
                for (int i2 = 0; i2 < motionEvent.getPointerCount(); i2++) {
                    up(motionEvent.getPointerId(i2), motionEvent.getX(i2), motionEvent.getY(i2), iState, true);
                }
            } else if (actionMasked == 5) {
                down(pointerId, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), iState);
            } else if (actionMasked == 6) {
                up(pointerId, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), iState, false);
            }
        } else {
            up(pointerId, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), iState, false);
        }
        return true;
    }

    private void down(int i, float f, float f2, int i2) {
        Ctl ctlHit = hit(f, f2, i2);
        if (ctlHit != null) {
            press(ctlHit, i, f, f2);
            invalidate();
            return;
        }
        if ((i2 & 1) != 0) {
            if (!hotbarTap(f, f2) && this.lookPointer < 0) {
                this.lookPointer = i;
                this.lookDownX = f;
                this.lookLastX = f;
                this.lookDownY = f2;
                this.lookLastY = f2;
                this.lookDownT = System.currentTimeMillis();
                this.lookMoved = false;
                this.lookBreaking = false;
                if (this.host.prefs().tapToUse()) {
                    this.ui.postDelayed(this.longPress, 250L);
                    return;
                }
                return;
            }
            return;
        }
        if (this.menuPointer < 0) {
            this.menuPointer = i;
            int iSx = sx(f);
            int iSyGL = syGL(f2);
            Mouse.postMove(iSx, iSyGL, 0, 0);
            Mouse.postButton(this.rclickMode ? 1 : 0, true, iSx, iSyGL);
        }
    }

    /* JADX INFO: renamed from: lambda$new$0$com-mcport-b173-TouchOverlay, reason: not valid java name */
    /* synthetic */ void m33lambda$new$0$commcportb173TouchOverlay() {
        if (this.lookPointer < 0 || this.lookMoved) {
            return;
        }
        this.lookBreaking = true;
        Mouse.postButton(0, true, Mouse.getX(), Mouse.getY());
    }

    private void move(int i, float f, float f2, int i2) {
        if (this.attack.pointer == i) {
            float f3 = f - this.atkX;
            float f4 = f2 - this.atkY;
            this.atkX = f;
            this.atkY = f2;
            float fLookSensitivity = (this.host.prefs().lookSensitivity() * 1.6f) / this.dp;
            Mouse.postMove(Mouse.getX(), Mouse.getY(), Math.round(f3 * fLookSensitivity), Math.round((-f4) * fLookSensitivity));
            return;
        }
        for (Ctl ctl : this.ctls) {
            if (ctl.pointer == i && ctl == this.joy) {
                joystick(f, f2);
                invalidate();
                return;
            }
        }
        if (i == this.lookPointer) {
            float f5 = f - this.lookLastX;
            float f6 = f2 - this.lookLastY;
            this.lookLastX = f;
            this.lookLastY = f2;
            if (!this.lookMoved && Math.hypot(f - this.lookDownX, f2 - this.lookDownY) > this.dp * 16.0f) {
                this.lookMoved = true;
                this.ui.removeCallbacks(this.longPress);
            }
            float fLookSensitivity2 = (this.host.prefs().lookSensitivity() * 1.6f) / this.dp;
            float f7 = (f5 * fLookSensitivity2) + this.lookRemX;
            float f8 = ((-f6) * fLookSensitivity2) + this.lookRemY;
            int iRound = Math.round(f7);
            int iRound2 = Math.round(f8);
            this.lookRemX = f7 - iRound;
            this.lookRemY = f8 - iRound2;
            if (iRound == 0 && iRound2 == 0) {
                return;
            }
            Mouse.postMove(Mouse.getX(), Mouse.getY(), iRound, iRound2);
            return;
        }
        if (i == this.menuPointer) {
            Mouse.postMove(sx(f), syGL(f2), 0, 0);
        }
    }

    private void up(int i, float f, float f2, int i2, boolean z) {
        for (Ctl ctl : this.ctls) {
            if (ctl.pointer == i) {
                release(ctl);
                invalidate();
                return;
            }
        }
        if (i == this.lookPointer) {
            this.ui.removeCallbacks(this.longPress);
            if (this.lookBreaking) {
                Mouse.postButton(0, false, Mouse.getX(), Mouse.getY());
            } else if (!z && !this.lookMoved && this.host.prefs().tapToUse() && System.currentTimeMillis() - this.lookDownT < 300) {
                Mouse.postButton(1, true, Mouse.getX(), Mouse.getY());
                Mouse.postButton(1, false, Mouse.getX(), Mouse.getY());
            }
            this.lookPointer = -1;
            this.lookBreaking = false;
            return;
        }
        if (i == this.menuPointer) {
            int iSx = sx(f);
            int iSyGL = syGL(f2);
            Mouse.postMove(iSx, iSyGL, 0, 0);
            Mouse.postButton(this.rclickMode ? 1 : 0, false, iSx, iSyGL);
            this.menuPointer = -1;
        }
    }

    private boolean hotbarTap(float f, float f2) {
        int[] iArrHotbarRect;
        GameBridge gameBridgeBridge = this.host.bridge();
        if (gameBridgeBridge == null || (iArrHotbarRect = gameBridgeBridge.hotbarRect()) == null) {
            return false;
        }
        int iSx = sx(f);
        int iSyGL = syGL(f2);
        if (iSyGL >= 0 && iSyGL < iArrHotbarRect[3]) {
            int i = iArrHotbarRect[0];
            int i2 = ((iSx - i) - iArrHotbarRect[4]) / iArrHotbarRect[2];
            if (iSx >= i && i2 >= 0 && i2 <= 8) {
                Keyboard.postTap(i2 + 2, (char) (i2 + 49));
                return true;
            }
        }
        return false;
    }

    private void press(Ctl ctl, int i, float f, float f2) {
        if (ctl == this.attack) {
            this.atkX = f;
            this.atkY = f2;
        }
        ctl.pointer = i;
        ctl.pressed = true;
        if (ctl == this.joy) {
            joystick(f, f2);
            return;
        }
        if (ctl == this.jump) {
            Keyboard.postKey(57, true, ' ');
            return;
        }
        if (ctl == this.sneak) {
            ctl.toggled = true ^ ctl.toggled;
            Keyboard.postKey(42, ctl.toggled, (char) 0);
            return;
        }
        if (ctl == this.dismount) {
            Keyboard.postKey(42, true, (char) 0);
            return;
        }
        if (ctl == this.attack) {
            Mouse.postButton(0, true, Mouse.getX(), Mouse.getY());
            return;
        }
        if (ctl == this.use) {
            Mouse.postButton(1, true, Mouse.getX(), Mouse.getY());
            return;
        }
        if (ctl == this.inv) {
            Keyboard.postTap(18, 'e');
            return;
        }
        if (ctl == this.drop) {
            Keyboard.postTap(16, 'q');
            return;
        }
        if (ctl == this.chat) {
            Keyboard.postTap(20, 't');
            return;
        }
        if (ctl == this.view) {
            Keyboard.postTap(63, (char) 0);
            return;
        }
        if (ctl == this.pause) {
            Keyboard.postTap(1, (char) 0);
            return;
        }
        if (ctl == this.kbd) {
            setIme(!this.imeShown);
            return;
        }
        if (ctl == this.profile) {
            this.host.openProfile();
            return;
        }
        if (ctl == this.rclick) {
            this.rclickMode = !this.rclickMode;
        } else if (ctl == this.shift) {
            boolean z = !this.shiftHeld;
            this.shiftHeld = z;
            Keyboard.postKey(42, z, (char) 0);
        }
    }

    private void release(Ctl ctl) {
        ctl.pointer = -1;
        ctl.pressed = false;
        if (ctl == this.joy) {
            setJoy(false, false, false, false);
            return;
        }
        if (ctl == this.jump) {
            Keyboard.postKey(57, false, (char) 0);
            return;
        }
        if (ctl == this.dismount) {
            Keyboard.postKey(42, false, (char) 0);
        } else if (ctl == this.attack) {
            Mouse.postButton(0, false, Mouse.getX(), Mouse.getY());
        } else if (ctl == this.use) {
            Mouse.postButton(1, false, Mouse.getX(), Mouse.getY());
        }
    }

    private void joystick(float f, float f2) {
        float f3 = f - this.joy.cx;
        float f4 = f2 - this.joy.cy;
        float fHypot = (float) Math.hypot(f3, f4);
        float f5 = this.joy.r;
        if (fHypot > f5) {
            f3 = (f3 / fHypot) * f5;
            f4 = (f4 / fHypot) * f5;
        }
        this.knobX = this.joy.cx + f3;
        this.knobY = this.joy.cy + f4;
        if (fHypot < f5 * 0.22f) {
            setJoy(false, false, false, false);
            return;
        }
        double degrees = Math.toDegrees(Math.atan2(-f4, f3));
        if (degrees < 0.0d) {
            degrees += 360.0d;
        }
        int iFloor = (int) Math.floor(((degrees + 22.5d) % 360.0d) / 45.0d);
        setJoy(iFloor == 1 || iFloor == 2 || iFloor == 3, iFloor == 3 || iFloor == 4 || iFloor == 5, iFloor == 5 || iFloor == 6 || iFloor == 7, iFloor == 7 || iFloor == 0 || iFloor == 1);
    }

    private void setJoy(boolean z, boolean z2, boolean z3, boolean z4) {
        boolean[] zArr = {z, z2, z3, z4};
        int[] iArr = {17, 30, 31, 32};
        char[] cArr = {'w', 'a', 's', 'd'};
        for (int i = 0; i < 4; i++) {
            boolean z5 = zArr[i];
            if (z5 != this.joyKeys[i]) {
                Keyboard.postKey(iArr[i], z5, z5 ? cArr[i] : (char) 0);
                this.joyKeys[i] = zArr[i];
            }
        }
    }

    void releaseGameplay() {
        for (Ctl ctl : this.ctls) {
            if (ctl.pointer >= 0) {
                release(ctl);
            }
        }
        setJoy(false, false, false, false);
        if (this.lookBreaking) {
            Mouse.postButton(0, false, Mouse.getX(), Mouse.getY());
        }
        this.lookPointer = -1;
        this.lookBreaking = false;
        this.ui.removeCallbacks(this.longPress);
        invalidate();
    }

    private boolean mouseTouch(MotionEvent motionEvent) {
        int buttonState = motionEvent.getButtonState();
        int iSx = sx(motionEvent.getX());
        int iSyGL = syGL(motionEvent.getY());
        Mouse.postMove(iSx, iSyGL, 0, 0);
        if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 11 || motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 12) {
            syncButtons(buttonState, iSx, iSyGL);
        }
        return true;
    }

    void syncButtons(int i, int i2, int i3) {
        int[] iArr = {1, 2, 4};
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr[i4];
            boolean z = (i & i5) != 0;
            if (z != ((i5 & this.lastButtons) != 0)) {
                Mouse.postButton(i4, z, i2, i3);
            }
        }
        this.lastButtons = i;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 8194) == 8194) {
            if (motionEvent.getActionMasked() == 7) {
                Mouse.postMove(sx(motionEvent.getX()), syGL(motionEvent.getY()), 0, 0);
                return true;
            }
            if (motionEvent.getActionMasked() == 8) {
                float axisValue = motionEvent.getAxisValue(9);
                if (axisValue != 0.0f) {
                    Mouse.postWheel(axisValue > 0.0f ? 120 : -120);
                }
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onCapturedPointerEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        float historicalAxisValue = 0.0f;
        float historicalAxisValue2 = 0.0f;
        for (int i = 0; i < motionEvent.getHistorySize(); i++) {
            historicalAxisValue += motionEvent.getHistoricalAxisValue(27, i);
            historicalAxisValue2 += motionEvent.getHistoricalAxisValue(28, i);
        }
        float axisValue = historicalAxisValue + motionEvent.getAxisValue(27);
        float axisValue2 = historicalAxisValue2 + motionEvent.getAxisValue(28);
        if (axisValue != 0.0f || axisValue2 != 0.0f) {
            Mouse.postMove(Mouse.getX(), Mouse.getY(), Math.round(axisValue), Math.round(-axisValue2));
        }
        if (motionEvent.getActionMasked() == 8) {
            float axisValue3 = motionEvent.getAxisValue(9);
            if (axisValue3 != 0.0f) {
                Mouse.postWheel(axisValue3 > 0.0f ? 120 : -120);
            }
        }
        syncButtons(motionEvent.getButtonState(), Mouse.getX(), Mouse.getY());
        return true;
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return this.imeShown;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.inputType = 524433;
        editorInfo.imeOptions = 301989894;
        return new BaseInputConnection(this, false) { // from class: com.mcport.b173.TouchOverlay.2
            @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
            public boolean commitText(CharSequence charSequence, int i) {
                for (int i2 = 0; i2 < charSequence.length(); i2++) {
                    TouchOverlay.typeChar(charSequence.charAt(i2));
                }
                return true;
            }

            @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
            public boolean deleteSurroundingText(int i, int i2) {
                for (int i3 = 0; i3 < Math.max(1, i); i3++) {
                    Keyboard.postTap(14, '\b');
                }
                return true;
            }

            @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
            public boolean sendKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                if (keyEvent.getKeyCode() == 67) {
                    Keyboard.postTap(14, '\b');
                } else if (keyEvent.getKeyCode() == 66) {
                    Keyboard.postTap(28, '\r');
                } else {
                    int unicodeChar = keyEvent.getUnicodeChar();
                    if (unicodeChar > 0) {
                        TouchOverlay.typeChar((char) unicodeChar);
                    }
                }
                return true;
            }

            @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
            public boolean performEditorAction(int i) {
                Keyboard.postTap(28, '\r');
                return true;
            }
        };
    }

    static void typeChar(char c) {
        if (c == '\n') {
            Keyboard.postTap(28, '\r');
        } else {
            Keyboard.postTap(KeyMap.forChar(c), c);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0043  */
    private boolean editTouch(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            Ctl ctlHit = hit(x, y, 1);
            this.dragging = ctlHit;
            if (ctlHit != null) {
                this.dragOffX = ctlHit.cx - x;
                this.dragOffY = this.dragging.cy - y;
            }
        } else if (actionMasked == 1) {
            if (this.dragging != null) {
                this.host.prefs().setPos(this.dragging.key, this.dragging.cx / getWidth(), this.dragging.cy / getHeight());
            }
            this.dragging = null;
        } else if (actionMasked == 2) {
            Ctl ctl = this.dragging;
            if (ctl != null) {
                ctl.cx = clamp(x + this.dragOffX, 0.0f, getWidth());
                this.dragging.cy = clamp(y + this.dragOffY, 0.0f, getHeight());
                invalidate();
            }
        } else if (actionMasked == 3) {
            if (this.dragging != null) {
                this.host.prefs().setPos(this.dragging.key, this.dragging.cx / getWidth(), this.dragging.cy / getHeight());
            }
            this.dragging = null;
        }
        return true;
    }

    private static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }
}
