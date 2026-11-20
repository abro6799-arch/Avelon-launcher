package com.mcport.b173;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
final class KeyMap {
    KeyMap() {
    }

    static int toLwjgl(int i) {
        if (i >= 29 && i <= 54) {
            return new int[]{30, 48, 46, 32, 18, 33, 34, 35, 23, 36, 37, 38, 50, 49, 24, 25, 16, 19, 31, 20, 22, 47, 17, 45, 21, 44}[i - 29];
        }
        if (i >= 8 && i <= 16) {
            return (i - 8) + 2;
        }
        if (i >= 131 && i <= 140) {
            return (i - 131) + 59;
        }
        if (i == 7) {
            return 11;
        }
        if (i == 160) {
            return Keyboard.KEY_NUMPADENTER;
        }
        if (i == 92) {
            return Keyboard.KEY_PRIOR;
        }
        if (i == 93) {
            return Keyboard.KEY_NEXT;
        }
        if (i == 141) {
            return 87;
        }
        if (i == 142) {
            return 88;
        }
        switch (i) {
            case 19:
                return Keyboard.KEY_UP;
            case Keyboard.KEY_T /* 20 */:
                return Keyboard.KEY_DOWN;
            case 21:
                return Keyboard.KEY_LEFT;
            case 22:
                return Keyboard.KEY_RIGHT;
            default:
                switch (i) {
                    case Keyboard.KEY_MULTIPLY /* 55 */:
                        return 51;
                    case Keyboard.KEY_LMENU /* 56 */:
                        return 52;
                    case Keyboard.KEY_SPACE /* 57 */:
                        return 56;
                    case Keyboard.KEY_CAPITAL /* 58 */:
                        return Keyboard.KEY_RMENU;
                    case Keyboard.KEY_F1 /* 59 */:
                        return 42;
                    case Keyboard.KEY_F2 /* 60 */:
                        return 54;
                    case Keyboard.KEY_F3 /* 61 */:
                        return 15;
                    case Keyboard.KEY_F4 /* 62 */:
                        return 57;
                    default:
                        switch (i) {
                            case Keyboard.KEY_F8 /* 66 */:
                                return 28;
                            case Keyboard.KEY_F9 /* 67 */:
                                return 14;
                            case Keyboard.KEY_F10 /* 68 */:
                                return 41;
                            case Keyboard.KEY_NUMLOCK /* 69 */:
                                return 12;
                            case Keyboard.KEY_SCROLL /* 70 */:
                                return 13;
                            case 71:
                                return 26;
                            case 72:
                                return 27;
                            case 73:
                                return 43;
                            case 74:
                                return 39;
                            case 75:
                                return 40;
                            case 76:
                                return 53;
                            default:
                                switch (i) {
                                    case 111:
                                        return 1;
                                    case 112:
                                        return Keyboard.KEY_DELETE;
                                    case 113:
                                        return 29;
                                    case 114:
                                        return Keyboard.KEY_RCONTROL;
                                    case 115:
                                        return 58;
                                    default:
                                        switch (i) {
                                            case 122:
                                                return Keyboard.KEY_HOME;
                                            case 123:
                                                return Keyboard.KEY_END;
                                            case 124:
                                                return Keyboard.KEY_INSERT;
                                            default:
                                                return 0;
                                        }
                                }
                        }
                }
        }
    }

    static int forChar(char c) {
        if (c >= 'a' && c <= 'z') {
            return toLwjgl((c - 'a') + 29);
        }
        if (c >= 'A' && c <= 'Z') {
            return toLwjgl((c - 'A') + 29);
        }
        if (c >= '1' && c <= '9') {
            return (c - '1') + 2;
        }
        if (c == ' ') {
            return 57;
        }
        if (c == '\'') {
            return 40;
        }
        if (c == ';') {
            return 39;
        }
        if (c == '=') {
            return 13;
        }
        switch (c) {
            case Keyboard.KEY_Z /* 44 */:
                return 51;
            case Keyboard.KEY_X /* 45 */:
                return 12;
            case Keyboard.KEY_C /* 46 */:
                return 52;
            case Keyboard.KEY_V /* 47 */:
                return 53;
            case Keyboard.KEY_B /* 48 */:
                return 11;
            default:
                return 0;
        }
    }
}
