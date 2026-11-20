package org.lwjgl.input;

import java.util.Arrays;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public final class Mouse {
    static final boolean DEBUG;
    private static int[] carry;
    private static boolean created;
    private static int[] current;
    private static int dwheel;
    private static int dx;
    private static int dy;
    private static volatile boolean grabbed;
    private static int nEvents;
    private static volatile int x;
    private static volatile int y;
    private static final ConcurrentLinkedQueue<int[]> pending = new ConcurrentLinkedQueue<>();
    private static int[][] events = new int[Keyboard.KEYBOARD_SIZE][];
    private static int cursor = -1;
    private static final boolean[] buttons = new boolean[8];

    public static int getButtonCount() {
        return 3;
    }

    public static boolean hasWheel() {
        return true;
    }

    public static boolean isInsideWindow() {
        return true;
    }

    public static Cursor setNativeCursor(Cursor cursor2) {
        return null;
    }

    static {
        DEBUG = System.getProperty("mcport.debugInput") != null;
    }

    public static void create() {
        created = true;
    }

    public static void destroy() {
        created = false;
    }

    public static boolean isCreated() {
        return created;
    }

    public static void postMove(int i, int i2, int i3, int i4) {
        pending.add(new int[]{-1, 0, i, i2, 0, i3, i4});
    }

    public static void postButton(int i, boolean z, int i2, int i3) {
        pending.add(new int[]{i, z ? 1 : 0, i2, i3, 0, 0, 0});
    }

    public static void postWheel(int i) {
        pending.add(new int[]{-1, 0, Integer.MIN_VALUE, 0, i, 0, 0});
    }

    public static void poll() {
        int i = nEvents;
        int i2 = cursor;
        int i3 = i - (i2 + 1);
        if (i3 > 0 && i2 >= 0) {
            int[][] iArr = events;
            System.arraycopy(iArr, i2 + 1, iArr, 0, i3);
        }
        int iMax = Math.max(0, i3);
        nEvents = iMax;
        cursor = -1;
        if (iMax > 4096) {
            nEvents = 0;
        }
        int i4 = 0;
        while (true) {
            int[] iArrPoll = carry;
            if (iArrPoll == null) {
                iArrPoll = pending.poll();
            }
            if (iArrPoll == null) {
                return;
            }
            carry = null;
            int i5 = iArrPoll[0];
            if (i5 >= 0 && i5 < buttons.length) {
                if (iArrPoll[1] != 0) {
                    i4 |= 1 << i5;
                } else if (((1 << i5) & i4) != 0) {
                    carry = iArrPoll;
                    return;
                }
            }
            if (iArrPoll[2] == Integer.MIN_VALUE) {
                iArrPoll[2] = x;
                iArrPoll[3] = y;
            }
            int i6 = iArrPoll[0];
            if (i6 >= 0) {
                boolean[] zArr = buttons;
                if (i6 < zArr.length) {
                    zArr[i6] = iArrPoll[1] != 0;
                }
            }
            dx += iArrPoll[5];
            dy += iArrPoll[6];
            dwheel += iArrPoll[4];
            if (!grabbed || iArrPoll[0] >= 0) {
                x = iArrPoll[2];
                y = iArrPoll[3];
            }
            int i7 = nEvents;
            int[][] iArr2 = events;
            if (i7 == iArr2.length) {
                int[][] iArr3 = new int[iArr2.length * 2][];
                System.arraycopy(iArr2, 0, iArr3, 0, i7);
                events = iArr3;
            }
            int[][] iArr4 = events;
            int i8 = nEvents;
            nEvents = i8 + 1;
            iArr4[i8] = iArrPoll;
        }
    }

    public static boolean next() {
        int i = cursor;
        if (i + 1 >= nEvents) {
            return false;
        }
        int[][] iArr = events;
        int i2 = i + 1;
        cursor = i2;
        current = iArr[i2];
        if (DEBUG) {
            System.err.println("Mouse.next " + Arrays.toString(current) + " by " + new Throwable().getStackTrace()[1]);
        }
        return true;
    }

    public static int getEventButton() {
        int[] iArr = current;
        if (iArr == null) {
            return -1;
        }
        return iArr[0];
    }

    public static boolean getEventButtonState() {
        int[] iArr = current;
        return (iArr == null || iArr[1] == 0) ? false : true;
    }

    public static int getEventX() {
        int[] iArr = current;
        return iArr == null ? x : iArr[2];
    }

    public static int getEventY() {
        int[] iArr = current;
        return iArr == null ? y : iArr[3];
    }

    public static int getEventDWheel() {
        int[] iArr = current;
        if (iArr == null) {
            return 0;
        }
        return iArr[4];
    }

    public static int getEventDX() {
        int[] iArr = current;
        if (iArr == null) {
            return 0;
        }
        return iArr[5];
    }

    public static int getEventDY() {
        int[] iArr = current;
        if (iArr == null) {
            return 0;
        }
        return iArr[6];
    }

    public static int getX() {
        return x;
    }

    public static int getY() {
        return y;
    }

    public static int getDX() {
        int i = dx;
        dx = 0;
        return i;
    }

    public static int getDY() {
        int i = dy;
        dy = 0;
        return i;
    }

    public static int getDWheel() {
        int i = dwheel;
        dwheel = 0;
        return i;
    }

    public static boolean isButtonDown(int i) {
        if (i >= 0) {
            boolean[] zArr = buttons;
            if (i < zArr.length && zArr[i]) {
                return true;
            }
        }
        return false;
    }

    public static void setGrabbed(boolean z) {
        grabbed = z;
        dy = 0;
        dx = 0;
    }

    public static boolean isGrabbed() {
        return grabbed;
    }

    public static void setCursorPosition(int i, int i2) {
        x = i;
        y = i2;
    }

    public static void releaseAll() {
        int i = 0;
        while (true) {
            boolean[] zArr = buttons;
            if (i >= zArr.length) {
                return;
            }
            if (zArr[i]) {
                postButton(i, false, x, y);
            }
            i++;
        }
    }
}
