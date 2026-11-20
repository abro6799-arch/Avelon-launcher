package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class vi {
    private static byte[] a = new byte[Keyboard.KEYBOARD_SIZE];

    static {
        for (int i = 0; i < 256; i++) {
            byte b = (byte) i;
            if (b != 0) {
                try {
                    if (uu.m[b & 255] == null) {
                        b = 0;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            a[i] = b;
        }
    }

    public static void a(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = a[bArr[i] & 255];
        }
    }
}
