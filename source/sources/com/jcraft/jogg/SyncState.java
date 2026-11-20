package com.jcraft.jogg;

/* JADX INFO: loaded from: classes.dex */
public class SyncState {
    int bodybytes;
    public byte[] data;
    int fill;
    int headerbytes;
    int returned;
    int storage;
    int unsynced;
    private Page pageseek = new Page();
    private byte[] chksum = new byte[4];

    public void init() {
    }

    public int clear() {
        this.data = null;
        return 0;
    }

    public int buffer(int i) {
        int i2 = this.returned;
        if (i2 != 0) {
            int i3 = this.fill - i2;
            this.fill = i3;
            if (i3 > 0) {
                byte[] bArr = this.data;
                System.arraycopy(bArr, i2, bArr, 0, i3);
            }
            this.returned = 0;
        }
        int i4 = this.storage;
        int i5 = this.fill;
        if (i > i4 - i5) {
            int i6 = i + i5 + 4096;
            byte[] bArr2 = this.data;
            if (bArr2 != null) {
                byte[] bArr3 = new byte[i6];
                System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                this.data = bArr3;
            } else {
                this.data = new byte[i6];
            }
            this.storage = i6;
        }
        return this.fill;
    }

    public int wrote(int i) {
        int i2 = this.fill;
        if (i2 + i > this.storage) {
            return -1;
        }
        this.fill = i2 + i;
        return 0;
    }

    public int pageseek(Page page) {
        int i = this.returned;
        int i2 = this.fill - i;
        int i3 = 0;
        if (this.headerbytes == 0) {
            if (i2 < 27) {
                return 0;
            }
            byte[] bArr = this.data;
            if (bArr[i] != 79 || bArr[i + 1] != 103 || bArr[i + 2] != 103 || bArr[i + 3] != 83) {
                this.headerbytes = 0;
                this.bodybytes = 0;
                for (int i4 = 0; i4 < i2 - 1; i4++) {
                    int i5 = i + 1 + i4;
                    if (this.data[i5] == 79) {
                        i3 = i5;
                        break;
                    }
                }
                if (i3 == 0) {
                    i3 = this.fill;
                }
                this.returned = i3;
                return -(i3 - i);
            }
            int i6 = i + 26;
            int i7 = (bArr[i6] & 255) + 27;
            if (i2 < i7) {
                return 0;
            }
            int i8 = 0;
            while (true) {
                byte[] bArr2 = this.data;
                if (i8 >= (bArr2[i6] & 255)) {
                    break;
                }
                this.bodybytes += bArr2[i + 27 + i8] & 255;
                i8++;
            }
            this.headerbytes = i7;
        }
        if (this.bodybytes + this.headerbytes > i2) {
            return 0;
        }
        synchronized (this.chksum) {
            int i9 = i + 22;
            System.arraycopy(this.data, i9, this.chksum, 0, 4);
            byte[] bArr3 = this.data;
            bArr3[i9] = 0;
            int i10 = i + 23;
            bArr3[i10] = 0;
            int i11 = i + 24;
            bArr3[i11] = 0;
            int i12 = i + 25;
            bArr3[i12] = 0;
            Page page2 = this.pageseek;
            page2.header_base = bArr3;
            page2.header = i;
            page2.header_len = this.headerbytes;
            page2.body_base = this.data;
            page2.body = this.headerbytes + i;
            page2.body_len = this.bodybytes;
            page2.checksum();
            byte[] bArr4 = this.chksum;
            byte b = bArr4[0];
            byte[] bArr5 = this.data;
            if (b == bArr5[i9] && bArr4[1] == bArr5[i10] && bArr4[2] == bArr5[i11] && bArr4[3] == bArr5[i12]) {
                int i13 = this.returned;
                if (page != null) {
                    page.header_base = bArr5;
                    page.header = i13;
                    page.header_len = this.headerbytes;
                    page.body_base = this.data;
                    page.body = i13 + this.headerbytes;
                    page.body_len = this.bodybytes;
                }
                this.unsynced = 0;
                int i14 = this.returned;
                int i15 = this.headerbytes + this.bodybytes;
                this.returned = i14 + i15;
                this.headerbytes = 0;
                this.bodybytes = 0;
                return i15;
            }
            System.arraycopy(bArr4, 0, bArr5, i9, 4);
            this.headerbytes = 0;
            this.bodybytes = 0;
            for (int i16 = 0; i16 < i2 - 1; i16++) {
                int i17 = i + 1 + i16;
                if (this.data[i17] == 79) {
                    i3 = i17;
                    break;
                }
            }
            if (i3 == 0) {
                i3 = this.fill;
            }
            this.returned = i3;
            return -(i3 - i);
        }
    }

    public int pageout(Page page) {
        do {
            int iPageseek = pageseek(page);
            if (iPageseek > 0) {
                return 1;
            }
            if (iPageseek == 0) {
                return 0;
            }
        } while (this.unsynced != 0);
        this.unsynced = 1;
        return -1;
    }

    public int reset() {
        this.fill = 0;
        this.returned = 0;
        this.unsynced = 0;
        this.headerbytes = 0;
        this.bodybytes = 0;
        return 0;
    }

    public int getDataOffset() {
        return this.returned;
    }

    public int getBufferOffset() {
        return this.fill;
    }
}
