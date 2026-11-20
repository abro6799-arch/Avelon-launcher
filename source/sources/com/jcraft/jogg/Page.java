package com.jcraft.jogg;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class Page {
    private static int[] crc_lookup = new int[Keyboard.KEYBOARD_SIZE];
    public int body;
    public byte[] body_base;
    public int body_len;
    public int header;
    public byte[] header_base;
    public int header_len;

    private static int crc_entry(int i) {
        int i2 = i << 24;
        for (int i3 = 0; i3 < 8; i3++) {
            i2 = (Integer.MIN_VALUE & i2) != 0 ? (i2 << 1) ^ 79764919 : i2 << 1;
        }
        return i2 & (-1);
    }

    static {
        int i = 0;
        while (true) {
            int[] iArr = crc_lookup;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = crc_entry(i);
            i++;
        }
    }

    int version() {
        return this.header_base[this.header + 4] & 255;
    }

    int continued() {
        return this.header_base[this.header + 5] & 1;
    }

    public int bos() {
        return this.header_base[this.header + 5] & 2;
    }

    public int eos() {
        return this.header_base[this.header + 5] & 4;
    }

    public long granulepos() {
        byte[] bArr = this.header_base;
        int i = this.header;
        return ((long) (bArr[i + 6] & 255)) | (((((((((((((((long) (bArr[i + 13] & 255)) << 8) | ((long) (bArr[i + 12] & 255))) << 8) | ((long) (bArr[i + 11] & 255))) << 8) | ((long) (bArr[i + 10] & 255))) << 8) | ((long) (bArr[i + 9] & 255))) << 8) | ((long) (bArr[i + 8] & 255))) << 8) | ((long) (bArr[i + 7] & 255))) << 8);
    }

    public int serialno() {
        byte[] bArr = this.header_base;
        int i = this.header;
        return ((bArr[i + 17] & 255) << 24) | (bArr[i + 14] & 255) | ((bArr[i + 15] & 255) << 8) | ((bArr[i + 16] & 255) << 16);
    }

    int pageno() {
        byte[] bArr = this.header_base;
        int i = this.header;
        return ((bArr[i + 21] & 255) << 24) | (bArr[i + 18] & 255) | ((bArr[i + 19] & 255) << 8) | ((bArr[i + 20] & 255) << 16);
    }

    void checksum() {
        int i = 0;
        for (int i2 = 0; i2 < this.header_len; i2++) {
            i = crc_lookup[((i >>> 24) & 255) ^ (this.header_base[this.header + i2] & 255)] ^ (i << 8);
        }
        for (int i3 = 0; i3 < this.body_len; i3++) {
            i = crc_lookup[((i >>> 24) & 255) ^ (this.body_base[this.body + i3] & 255)] ^ (i << 8);
        }
        byte[] bArr = this.header_base;
        int i4 = this.header;
        bArr[i4 + 22] = (byte) i;
        bArr[i4 + 23] = (byte) (i >>> 8);
        bArr[i4 + 24] = (byte) (i >>> 16);
        bArr[i4 + 25] = (byte) (i >>> 24);
    }

    public Page copy() {
        return copy(new Page());
    }

    public Page copy(Page page) {
        int i = this.header_len;
        byte[] bArr = new byte[i];
        System.arraycopy(this.header_base, this.header, bArr, 0, i);
        page.header_len = this.header_len;
        page.header_base = bArr;
        page.header = 0;
        int i2 = this.body_len;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(this.body_base, this.body, bArr2, 0, i2);
        page.body_len = this.body_len;
        page.body_base = bArr2;
        page.body = 0;
        return page;
    }
}
