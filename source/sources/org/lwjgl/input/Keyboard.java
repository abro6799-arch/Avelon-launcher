package org.lwjgl.input;

import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public final class Keyboard {
    public static final int CHAR_NONE = 0;
    public static final int KEY_0 = 11;
    public static final int KEY_1 = 2;
    public static final int KEY_2 = 3;
    public static final int KEY_3 = 4;
    public static final int KEY_4 = 5;
    public static final int KEY_5 = 6;
    public static final int KEY_6 = 7;
    public static final int KEY_7 = 8;
    public static final int KEY_8 = 9;
    public static final int KEY_9 = 10;
    public static final int KEY_A = 30;
    public static final int KEY_APOSTROPHE = 40;
    public static final int KEY_B = 48;
    public static final int KEY_BACK = 14;
    public static final int KEY_BACKSLASH = 43;
    public static final int KEY_C = 46;
    public static final int KEY_CAPITAL = 58;
    public static final int KEY_COMMA = 51;
    public static final int KEY_D = 32;
    public static final int KEY_DELETE = 211;
    public static final int KEY_DIVIDE = 181;
    public static final int KEY_DOWN = 208;
    public static final int KEY_E = 18;
    public static final int KEY_END = 207;
    public static final int KEY_EQUALS = 13;
    public static final int KEY_ESCAPE = 1;
    public static final int KEY_F = 33;
    public static final int KEY_F1 = 59;
    public static final int KEY_F10 = 68;
    public static final int KEY_F11 = 87;
    public static final int KEY_F12 = 88;
    public static final int KEY_F2 = 60;
    public static final int KEY_F3 = 61;
    public static final int KEY_F4 = 62;
    public static final int KEY_F5 = 63;
    public static final int KEY_F6 = 64;
    public static final int KEY_F7 = 65;
    public static final int KEY_F8 = 66;
    public static final int KEY_F9 = 67;
    public static final int KEY_G = 34;
    public static final int KEY_GRAVE = 41;
    public static final int KEY_H = 35;
    public static final int KEY_HOME = 199;
    public static final int KEY_I = 23;
    public static final int KEY_INSERT = 210;
    public static final int KEY_J = 36;
    public static final int KEY_K = 37;
    public static final int KEY_L = 38;
    public static final int KEY_LBRACKET = 26;
    public static final int KEY_LCONTROL = 29;
    public static final int KEY_LEFT = 203;
    public static final int KEY_LMENU = 56;
    public static final int KEY_LSHIFT = 42;
    public static final int KEY_M = 50;
    public static final int KEY_MINUS = 12;
    public static final int KEY_MULTIPLY = 55;
    public static final int KEY_N = 49;
    public static final int KEY_NEXT = 209;
    public static final int KEY_NONE = 0;
    public static final int KEY_NUMLOCK = 69;
    public static final int KEY_NUMPADENTER = 156;
    public static final int KEY_O = 24;
    public static final int KEY_P = 25;
    public static final int KEY_PAUSE = 197;
    public static final int KEY_PERIOD = 52;
    public static final int KEY_PRIOR = 201;
    public static final int KEY_Q = 16;
    public static final int KEY_R = 19;
    public static final int KEY_RBRACKET = 27;
    public static final int KEY_RCONTROL = 157;
    public static final int KEY_RETURN = 28;
    public static final int KEY_RIGHT = 205;
    public static final int KEY_RMENU = 184;
    public static final int KEY_RSHIFT = 54;
    public static final int KEY_S = 31;
    public static final int KEY_SCROLL = 70;
    public static final int KEY_SEMICOLON = 39;
    public static final int KEY_SLASH = 53;
    public static final int KEY_SPACE = 57;
    public static final int KEY_T = 20;
    public static final int KEY_TAB = 15;
    public static final int KEY_U = 22;
    public static final int KEY_UP = 200;
    public static final int KEY_V = 47;
    public static final int KEY_W = 17;
    public static final int KEY_X = 45;
    public static final int KEY_Y = 21;
    public static final int KEY_Z = 44;
    private static boolean created;
    private static int[] current;
    private static int cursorIdx;
    private static final boolean[] down;
    private static int[][] events;
    private static int nEvents;
    private static final ConcurrentLinkedQueue<int[]> pending;
    private static boolean repeat;
    public static final int KEYBOARD_SIZE = 256;
    private static final String[] NAMES = new String[KEYBOARD_SIZE];

    public static int getKeyCount() {
        return KEYBOARD_SIZE;
    }

    public static boolean isRepeatEvent() {
        return false;
    }

    static {
        String[][] strArr = {new String[]{"1", "ESCAPE"}, new String[]{"2", "1"}, new String[]{"3", "2"}, new String[]{"4", "3"}, new String[]{"5", "4"}, new String[]{"6", "5"}, new String[]{"7", "6"}, new String[]{"8", "7"}, new String[]{"9", "8"}, new String[]{"10", "9"}, new String[]{"11", "0"}, new String[]{"12", "MINUS"}, new String[]{"13", "EQUALS"}, new String[]{"14", "BACK"}, new String[]{"15", "TAB"}, new String[]{"16", "Q"}, new String[]{"17", "W"}, new String[]{"18", "E"}, new String[]{"19", "R"}, new String[]{"20", "T"}, new String[]{"21", "Y"}, new String[]{"22", "U"}, new String[]{"23", "I"}, new String[]{"24", "O"}, new String[]{"25", "P"}, new String[]{"26", "LBRACKET"}, new String[]{"27", "RBRACKET"}, new String[]{"28", "RETURN"}, new String[]{"29", "LCONTROL"}, new String[]{"30", "A"}, new String[]{"31", "S"}, new String[]{"32", "D"}, new String[]{"33", "F"}, new String[]{"34", "G"}, new String[]{"35", "H"}, new String[]{"36", "J"}, new String[]{"37", "K"}, new String[]{"38", "L"}, new String[]{"39", "SEMICOLON"}, new String[]{"40", "APOSTROPHE"}, new String[]{"41", "GRAVE"}, new String[]{"42", "LSHIFT"}, new String[]{"43", "BACKSLASH"}, new String[]{"44", "Z"}, new String[]{"45", "X"}, new String[]{"46", "C"}, new String[]{"47", "V"}, new String[]{"48", "B"}, new String[]{"49", "N"}, new String[]{"50", "M"}, new String[]{"51", "COMMA"}, new String[]{"52", "PERIOD"}, new String[]{"53", "SLASH"}, new String[]{"54", "RSHIFT"}, new String[]{"55", "MULTIPLY"}, new String[]{"56", "LMENU"}, new String[]{"57", "SPACE"}, new String[]{"58", "CAPITAL"}, new String[]{"59", "F1"}, new String[]{"60", "F2"}, new String[]{"61", "F3"}, new String[]{"62", "F4"}, new String[]{"63", "F5"}, new String[]{"64", "F6"}, new String[]{"65", "F7"}, new String[]{"66", "F8"}, new String[]{"67", "F9"}, new String[]{"68", "F10"}, new String[]{"69", "NUMLOCK"}, new String[]{"70", "SCROLL"}, new String[]{"71", "NUMPAD7"}, new String[]{"72", "NUMPAD8"}, new String[]{"73", "NUMPAD9"}, new String[]{"74", "SUBTRACT"}, new String[]{"75", "NUMPAD4"}, new String[]{"76", "NUMPAD5"}, new String[]{"77", "NUMPAD6"}, new String[]{"78", "ADD"}, new String[]{"79", "NUMPAD1"}, new String[]{"80", "NUMPAD2"}, new String[]{"81", "NUMPAD3"}, new String[]{"82", "NUMPAD0"}, new String[]{"83", "DECIMAL"}, new String[]{"87", "F11"}, new String[]{"88", "F12"}, new String[]{"156", "NUMPADENTER"}, new String[]{"157", "RCONTROL"}, new String[]{"181", "DIVIDE"}, new String[]{"184", "RMENU"}, new String[]{"197", "PAUSE"}, new String[]{"199", "HOME"}, new String[]{"200", "UP"}, new String[]{"201", "PRIOR"}, new String[]{"203", "LEFT"}, new String[]{"205", "RIGHT"}, new String[]{"207", "END"}, new String[]{"208", "DOWN"}, new String[]{"209", "NEXT"}, new String[]{"210", "INSERT"}, new String[]{"211", "DELETE"}};
        for (int i = 0; i < 100; i++) {
            String[] strArr2 = strArr[i];
            NAMES[Integer.parseInt(strArr2[0])] = strArr2[1];
        }
        pending = new ConcurrentLinkedQueue<>();
        events = new int[KEYBOARD_SIZE][];
        cursorIdx = -1;
        down = new boolean[KEYBOARD_SIZE];
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

    public static boolean areRepeatEventsEnabled() {
        return repeat;
    }

    public static void enableRepeatEvents(boolean z) {
        repeat = z;
    }

    public static void postKey(int i, boolean z, char c) {
        pending.add(new int[]{i, z ? 1 : 0, c});
    }

    public static void postTap(int i, char c) {
        postKey(i, true, c);
        postKey(i, false, (char) 0);
    }

    public static void poll() {
        int i = nEvents;
        int i2 = cursorIdx;
        int i3 = i - (i2 + 1);
        if (i3 > 0 && i2 >= 0) {
            int[][] iArr = events;
            System.arraycopy(iArr, i2 + 1, iArr, 0, i3);
        }
        int iMax = Math.max(0, i3);
        nEvents = iMax;
        cursorIdx = -1;
        if (iMax > 4096) {
            nEvents = 0;
        }
        while (true) {
            int[] iArrPoll = pending.poll();
            if (iArrPoll == null) {
                return;
            }
            int i4 = iArrPoll[0];
            if (i4 > 0 && i4 < 256) {
                down[i4] = iArrPoll[1] != 0;
            }
            int i5 = nEvents;
            int[][] iArr2 = events;
            if (i5 == iArr2.length) {
                int[][] iArr3 = new int[iArr2.length * 2][];
                System.arraycopy(iArr2, 0, iArr3, 0, i5);
                events = iArr3;
            }
            int[][] iArr4 = events;
            int i6 = nEvents;
            nEvents = i6 + 1;
            iArr4[i6] = iArrPoll;
        }
    }

    public static boolean next() {
        int i = cursorIdx;
        if (i + 1 >= nEvents) {
            return false;
        }
        int[][] iArr = events;
        int i2 = i + 1;
        cursorIdx = i2;
        current = iArr[i2];
        return true;
    }

    public static int getEventKey() {
        int[] iArr = current;
        if (iArr == null) {
            return 0;
        }
        return iArr[0];
    }

    public static char getEventCharacter() {
        int[] iArr = current;
        if (iArr == null) {
            return (char) 0;
        }
        return (char) iArr[2];
    }

    public static boolean getEventKeyState() {
        int[] iArr = current;
        return (iArr == null || iArr[1] == 0) ? false : true;
    }

    public static long getEventNanoseconds() {
        return System.nanoTime();
    }

    public static boolean isKeyDown(int i) {
        return i > 0 && i < 256 && down[i];
    }

    public static String getKeyName(int i) {
        if (i < 0 || i >= 256) {
            return null;
        }
        return NAMES[i];
    }

    public static int getKeyIndex(String str) {
        for (int i = 0; i < 256; i++) {
            if (str.equals(NAMES[i])) {
                return i;
            }
        }
        return 0;
    }

    public static void releaseAll() {
        for (int i = 1; i < 256; i++) {
            if (down[i]) {
                postKey(i, false, (char) 0);
            }
        }
    }
}
