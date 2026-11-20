package com.jcraft.jogg;

/* JADX INFO: loaded from: classes.dex */
public class Buffer {
    private static final int BUFFER_INCREMENT = 256;
    private static final int[] mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, Integer.MAX_VALUE, -1};
    int ptr = 0;
    byte[] buffer = null;
    int endbit = 0;
    int endbyte = 0;
    int storage = 0;

    public static int ilog(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public void writeinit() {
        byte[] bArr = new byte[256];
        this.buffer = bArr;
        this.ptr = 0;
        bArr[0] = 0;
        this.storage = 256;
    }

    public void write(byte[] bArr) {
        byte b;
        for (int i = 0; i < bArr.length && (b = bArr[i]) != 0; i++) {
            write(b, 8);
        }
    }

    public void read(byte[] bArr, int i) {
        int i2 = 0;
        while (true) {
            int i3 = i - 1;
            if (i == 0) {
                return;
            }
            bArr[i2] = (byte) read(8);
            i2++;
            i = i3;
        }
    }

    void reset() {
        this.ptr = 0;
        this.buffer[0] = 0;
        this.endbyte = 0;
        this.endbit = 0;
    }

    public void writeclear() {
        this.buffer = null;
    }

    public void readinit(byte[] bArr, int i) {
        readinit(bArr, 0, i);
    }

    public void readinit(byte[] bArr, int i, int i2) {
        this.ptr = i;
        this.buffer = bArr;
        this.endbyte = 0;
        this.endbit = 0;
        this.storage = i2;
    }

    public void write(int i, int i2) {
        int i3 = this.endbyte + 4;
        int i4 = this.storage;
        if (i3 >= i4) {
            byte[] bArr = new byte[i4 + 256];
            System.arraycopy(this.buffer, 0, bArr, 0, i4);
            this.buffer = bArr;
            this.storage += 256;
        }
        int i5 = i & mask[i2];
        int i6 = this.endbit;
        int i7 = i2 + i6;
        byte[] bArr2 = this.buffer;
        int i8 = this.ptr;
        bArr2[i8] = (byte) (bArr2[i8] | ((byte) (i5 << i6)));
        if (i7 >= 8) {
            bArr2[i8 + 1] = (byte) (i5 >>> (8 - i6));
            if (i7 >= 16) {
                bArr2[i8 + 2] = (byte) (i5 >>> (16 - i6));
                if (i7 >= 24) {
                    bArr2[i8 + 3] = (byte) (i5 >>> (24 - i6));
                    if (i7 >= 32) {
                        if (i6 > 0) {
                            bArr2[i8 + 4] = (byte) (i5 >>> (32 - i6));
                        } else {
                            bArr2[i8 + 4] = 0;
                        }
                    }
                }
            }
        }
        int i9 = i7 / 8;
        this.endbyte += i9;
        this.ptr = i8 + i9;
        this.endbit = i7 & 7;
    }

    public int look(int i) {
        int i2 = mask[i];
        int i3 = this.endbit;
        int i4 = i + i3;
        int i5 = this.endbyte;
        int i6 = i5 + 4;
        int i7 = this.storage;
        if (i6 >= i7 && i5 + ((i4 - 1) / 8) >= i7) {
            return -1;
        }
        byte[] bArr = this.buffer;
        int i8 = this.ptr;
        int i9 = (bArr[i8] & 255) >>> i3;
        if (i4 > 8) {
            i9 |= (bArr[i8 + 1] & 255) << (8 - i3);
            if (i4 > 16) {
                i9 |= (bArr[i8 + 2] & 255) << (16 - i3);
                if (i4 > 24) {
                    i9 |= (bArr[i8 + 3] & 255) << (24 - i3);
                    if (i4 > 32 && i3 != 0) {
                        i9 |= (bArr[i8 + 4] & 255) << (32 - i3);
                    }
                }
            }
        }
        return i2 & i9;
    }

    public int look1() {
        if (this.endbyte >= this.storage) {
            return -1;
        }
        return (this.buffer[this.ptr] >> this.endbit) & 1;
    }

    public void adv(int i) {
        int i2 = i + this.endbit;
        int i3 = i2 / 8;
        this.ptr += i3;
        this.endbyte += i3;
        this.endbit = i2 & 7;
    }

    public void adv1() {
        int i = this.endbit + 1;
        this.endbit = i;
        if (i > 7) {
            this.endbit = 0;
            this.ptr++;
            this.endbyte++;
        }
    }

    public int read(int i) {
        int i2 = mask[i];
        int i3 = this.endbit;
        int i4 = i + i3;
        int i5 = this.endbyte;
        int i6 = i5 + 4;
        int i7 = this.storage;
        if (i6 >= i7 && ((i4 - 1) / 8) + i5 >= i7) {
            int i8 = i4 / 8;
            this.ptr += i8;
            this.endbyte = i5 + i8;
            this.endbit = i4 & 7;
            return -1;
        }
        byte[] bArr = this.buffer;
        int i9 = this.ptr;
        int i10 = (bArr[i9] & 255) >>> i3;
        if (i4 > 8) {
            i10 |= (bArr[i9 + 1] & 255) << (8 - i3);
            if (i4 > 16) {
                i10 |= (bArr[i9 + 2] & 255) << (16 - i3);
                if (i4 > 24) {
                    i10 |= (bArr[i9 + 3] & 255) << (24 - i3);
                    if (i4 > 32 && i3 != 0) {
                        i10 |= (bArr[i9 + 4] & 255) << (32 - i3);
                    }
                }
            }
        }
        int i11 = i2 & i10;
        int i12 = i4 / 8;
        this.ptr = i9 + i12;
        this.endbyte = i5 + i12;
        this.endbit = i4 & 7;
        return i11;
    }

    public int readB(int i) {
        int i2 = 32 - i;
        int i3 = this.endbit;
        int i4 = i + i3;
        int i5 = this.endbyte;
        int i6 = i5 + 4;
        int i7 = this.storage;
        if (i6 >= i7 && (i5 * 8) + i4 > i7 * 8) {
            int i8 = i4 / 8;
            this.ptr += i8;
            this.endbyte = i5 + i8;
            this.endbit = i4 & 7;
            return -1;
        }
        byte[] bArr = this.buffer;
        int i9 = this.ptr;
        int i10 = (bArr[i9] & 255) << (i3 + 24);
        if (i4 > 8) {
            i10 |= (bArr[i9 + 1] & 255) << (i3 + 16);
            if (i4 > 16) {
                i10 |= (bArr[i9 + 2] & 255) << (i3 + 8);
                if (i4 > 24) {
                    i10 |= (bArr[i9 + 3] & 255) << i3;
                    if (i4 > 32 && i3 != 0) {
                        i10 |= (bArr[i9 + 4] & 255) >> (8 - i3);
                    }
                }
            }
        }
        int i11 = (i10 >>> (i2 >> 1)) >>> ((i2 + 1) >> 1);
        int i12 = i4 / 8;
        this.ptr = i9 + i12;
        this.endbyte = i5 + i12;
        this.endbit = i4 & 7;
        return i11;
    }

    public int read1() {
        int i = this.endbyte;
        if (i >= this.storage) {
            int i2 = this.endbit + 1;
            this.endbit = i2;
            if (i2 <= 7) {
                return -1;
            }
            this.endbit = 0;
            this.ptr++;
            this.endbyte = i + 1;
            return -1;
        }
        byte[] bArr = this.buffer;
        int i3 = this.ptr;
        byte b = bArr[i3];
        int i4 = this.endbit;
        int i5 = (b >> i4) & 1;
        int i6 = i4 + 1;
        this.endbit = i6;
        if (i6 > 7) {
            this.endbit = 0;
            this.ptr = i3 + 1;
            this.endbyte = i + 1;
        }
        return i5;
    }

    public int bytes() {
        return this.endbyte + ((this.endbit + 7) / 8);
    }

    public int bits() {
        return (this.endbyte * 8) + this.endbit;
    }

    public byte[] buffer() {
        return this.buffer;
    }

    public static void report(String str) {
        System.err.println(str);
        System.exit(1);
    }
}
