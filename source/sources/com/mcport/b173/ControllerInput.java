package com.mcport.b173;

import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import mcport.GameBridge;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

/* JADX INFO: loaded from: classes.dex */
final class ControllerInput {
    private final GameActivity act;
    private float hatX;
    private float hatY;
    volatile long lastUse;
    private volatile float lt;
    private boolean ltDown;
    private volatile float lx;
    private volatile float ly;
    private volatile float rt;
    private boolean rtDown;
    private volatile float rx;
    private volatile float ry;
    private boolean[] wasd = new boolean[4];
    private float px = -1.0f;
    private float py = -1.0f;

    ControllerInput(GameActivity gameActivity) {
        this.act = gameActivity;
    }

    static boolean isPad(InputDevice inputDevice) {
        if (inputDevice == null) {
            return false;
        }
        int sources = inputDevice.getSources();
        return (sources & 1025) == 1025 || (sources & 16777232) == 16777232;
    }

    boolean recentlyUsed() {
        return System.currentTimeMillis() - this.lastUse < 15000;
    }

    boolean onMotion(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 16777232) != 16777232) {
            return false;
        }
        this.lx = dz(motionEvent.getAxisValue(0));
        this.ly = dz(motionEvent.getAxisValue(1));
        this.rx = dz(motionEvent.getAxisValue(11));
        this.ry = dz(motionEvent.getAxisValue(14));
        this.lt = Math.max(motionEvent.getAxisValue(17), motionEvent.getAxisValue(23));
        this.rt = Math.max(motionEvent.getAxisValue(18), motionEvent.getAxisValue(22));
        hat(motionEvent.getAxisValue(15), motionEvent.getAxisValue(16));
        if (this.lx != 0.0f || this.ly != 0.0f || this.rx != 0.0f || this.ry != 0.0f || this.lt > 0.1f || this.rt > 0.1f) {
            this.lastUse = System.currentTimeMillis();
        }
        return true;
    }

    private void hat(float f, float f2) {
        int i;
        char c;
        int i2;
        if (f != this.hatX) {
            if (f >= -0.5f) {
                i2 = f > 0.5f ? -120 : 120;
                this.hatX = f;
            }
            Mouse.postWheel(i2);
            this.hatX = f;
        }
        if (f2 != this.hatY) {
            if (f2 >= -0.5f) {
                if (f2 > 0.5f) {
                    i = 20;
                    c = 't';
                }
                this.hatY = f2;
            }
            i = 63;
            c = 0;
            Keyboard.postTap(i, c);
            this.hatY = f2;
        }
    }

    private static float dz(float f) {
        if (Math.abs(f) < 0.2f) {
            return 0.0f;
        }
        return f;
    }

    boolean onKey(KeyEvent keyEvent) {
        if (!isPad(keyEvent.getDevice()) && !KeyEvent.isGamepadButton(keyEvent.getKeyCode())) {
            return false;
        }
        boolean z = keyEvent.getAction() == 0;
        if (keyEvent.getRepeatCount() > 0) {
            return true;
        }
        this.lastUse = System.currentTimeMillis();
        GameBridge gameBridgeBridge = this.act.bridge();
        boolean z2 = gameBridgeBridge == null || !gameBridgeBridge.isInGameplay();
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 96) {
            if (z2) {
                pointerButton(0, z);
            } else {
                Keyboard.postKey(57, z, (char) 0);
            }
            return true;
        }
        if (keyCode == 97) {
            if (!z2) {
                Keyboard.postKey(42, z, (char) 0);
            } else if (z) {
                Keyboard.postTap(1, (char) 0);
            }
            return true;
        }
        if (keyCode == 99) {
            if (z) {
                Keyboard.postTap(18, 'e');
            }
            return true;
        }
        if (keyCode == 100) {
            if (z2) {
                pointerButton(1, z);
            } else if (z) {
                Keyboard.postTap(16, 'q');
            }
            return true;
        }
        switch (keyCode) {
            case 19:
                if (z) {
                    Keyboard.postTap(63, (char) 0);
                }
                return true;
            case Keyboard.KEY_T /* 20 */:
                if (z && !z2) {
                    Keyboard.postTap(20, 't');
                }
                return true;
            case 21:
                if (z) {
                    Mouse.postWheel(120);
                }
                return true;
            case 22:
                if (z) {
                    Mouse.postWheel(-120);
                }
                return true;
            default:
                switch (keyCode) {
                    case 102:
                    case 104:
                        mouseButton(1, z);
                        return true;
                    case 103:
                    case 105:
                        mouseButton(0, z);
                        return true;
                    case 108:
                        if (z) {
                            Keyboard.postTap(1, (char) 0);
                            break;
                        }
                    case 106:
                    case 107:
                        return true;
                    case 109:
                        if (z) {
                            Keyboard.postTap(61, (char) 0);
                        }
                        return true;
                    default:
                        return false;
                }
                break;
        }
    }

    private void mouseButton(int i, boolean z) {
        Mouse.postButton(i, z, Mouse.getX(), Mouse.getY());
    }

    private void pointerButton(int i, boolean z) {
        ensurePointer();
        Mouse.postButton(i, z, (int) this.px, (int) this.py);
    }

    private void ensurePointer() {
        if (this.px < 0.0f) {
            this.px = this.act.surfaceW() / 2.0f;
            this.py = this.act.surfaceH() / 2.0f;
        }
    }

    void onFrame() {
        GameBridge gameBridgeBridge = this.act.bridge();
        if (gameBridgeBridge == null) {
            return;
        }
        boolean zIsInGameplay = gameBridgeBridge.isInGameplay();
        boolean[] zArr = new boolean[4];
        if (zIsInGameplay) {
            zArr[0] = this.ly < -0.35f;
            zArr[2] = this.ly > 0.35f;
            zArr[1] = this.lx < -0.35f;
            zArr[3] = this.lx > 0.35f;
        }
        int[] iArr = {17, 30, 31, 32};
        for (int i = 0; i < 4; i++) {
            boolean z = zArr[i];
            if (z != this.wasd[i]) {
                Keyboard.postKey(iArr[i], z, (char) 0);
                this.wasd[i] = zArr[i];
            }
        }
        boolean z2 = this.rt > 0.5f;
        boolean z3 = this.lt > 0.5f;
        if (z2 != this.rtDown) {
            mouseButton(0, z2);
            this.rtDown = z2;
        }
        if (z3 != this.ltDown) {
            mouseButton(1, z3);
            this.ltDown = z3;
        }
        float fControllerLookSpeed = this.act.prefs().controllerLookSpeed();
        if (zIsInGameplay) {
            if (this.rx == 0.0f && this.ry == 0.0f) {
                return;
            }
            Mouse.postMove(Mouse.getX(), Mouse.getY(), Math.round(this.rx * Math.abs(this.rx) * 18.0f * fControllerLookSpeed), Math.round((-this.ry) * Math.abs(this.ry) * 18.0f * fControllerLookSpeed));
            return;
        }
        if (this.lx == 0.0f && this.ly == 0.0f && this.rx == 0.0f && this.ry == 0.0f) {
            return;
        }
        ensurePointer();
        float f = this.lx + this.rx;
        float f2 = this.ly + this.ry;
        float fSurfaceH = this.act.surfaceH() / 90.0f;
        this.px = Math.max(0.0f, Math.min(this.act.surfaceW() - 1, this.px + (f * fSurfaceH)));
        float fMax = Math.max(0.0f, Math.min(this.act.surfaceH() - 1, this.py - (f2 * fSurfaceH)));
        this.py = fMax;
        Mouse.postMove((int) this.px, (int) fMax, 0, 0);
    }

    float pointerX() {
        return this.px;
    }

    float pointerY() {
        return this.py;
    }
}
