package com.jcraft.jogg;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class StreamState {
    int b_o_s;
    byte[] body_data;
    int body_fill;
    private int body_returned;
    int body_storage;
    public int e_o_s;
    long[] granule_vals;
    long granulepos;
    byte[] header;
    int header_fill;
    int lacing_fill;
    int lacing_packet;
    int lacing_returned;
    int lacing_storage;
    int[] lacing_vals;
    long packetno;
    int pageno;
    int serialno;

    public StreamState() {
        this.header = new byte[282];
        init();
    }

    StreamState(int i) {
        this();
        init(i);
    }

    void init() {
        this.body_storage = 16384;
        this.body_data = new byte[16384];
        this.lacing_storage = 1024;
        this.lacing_vals = new int[1024];
        this.granule_vals = new long[1024];
    }

    public void init(int i) {
        if (this.body_data != null) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                byte[] bArr = this.body_data;
                if (i3 >= bArr.length) {
                    break;
                }
                bArr[i3] = 0;
                i3++;
            }
            int i4 = 0;
            while (true) {
                int[] iArr = this.lacing_vals;
                if (i4 >= iArr.length) {
                    break;
                }
                iArr[i4] = 0;
                i4++;
            }
            while (true) {
                long[] jArr = this.granule_vals;
                if (i2 >= jArr.length) {
                    break;
                }
                jArr[i2] = 0;
                i2++;
            }
        } else {
            init();
        }
        this.serialno = i;
    }

    public void clear() {
        this.body_data = null;
        this.lacing_vals = null;
        this.granule_vals = null;
    }

    void destroy() {
        clear();
    }

    void body_expand(int i) {
        int i2 = this.body_storage;
        if (i2 <= this.body_fill + i) {
            int i3 = i2 + i + 1024;
            this.body_storage = i3;
            byte[] bArr = new byte[i3];
            byte[] bArr2 = this.body_data;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
            this.body_data = bArr;
        }
    }

    void lacing_expand(int i) {
        int i2 = this.lacing_storage;
        if (i2 <= this.lacing_fill + i) {
            int i3 = i2 + i + 32;
            this.lacing_storage = i3;
            int[] iArr = new int[i3];
            int[] iArr2 = this.lacing_vals;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            this.lacing_vals = iArr;
            long[] jArr = new long[this.lacing_storage];
            long[] jArr2 = this.granule_vals;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            this.granule_vals = jArr;
        }
    }

    public int packetin(Packet packet) {
        int i = (packet.bytes / 255) + 1;
        int i2 = this.body_returned;
        if (i2 != 0) {
            int i3 = this.body_fill - i2;
            this.body_fill = i3;
            if (i3 != 0) {
                byte[] bArr = this.body_data;
                System.arraycopy(bArr, i2, bArr, 0, i3);
            }
            this.body_returned = 0;
        }
        body_expand(packet.bytes);
        lacing_expand(i);
        System.arraycopy(packet.packet_base, packet.packet, this.body_data, this.body_fill, packet.bytes);
        this.body_fill += packet.bytes;
        int i4 = 0;
        while (i4 < i - 1) {
            int[] iArr = this.lacing_vals;
            int i5 = this.lacing_fill;
            iArr[i5 + i4] = 255;
            this.granule_vals[i5 + i4] = this.granulepos;
            i4++;
        }
        this.lacing_vals[this.lacing_fill + i4] = packet.bytes % 255;
        long[] jArr = this.granule_vals;
        int i6 = this.lacing_fill + i4;
        long j = packet.granulepos;
        jArr[i6] = j;
        this.granulepos = j;
        int[] iArr2 = this.lacing_vals;
        int i7 = this.lacing_fill;
        iArr2[i7] = iArr2[i7] | Keyboard.KEYBOARD_SIZE;
        this.lacing_fill = i7 + i;
        this.packetno++;
        if (packet.e_o_s != 0) {
            this.e_o_s = 1;
        }
        return 0;
    }

    public int packetout(Packet packet) {
        int i = this.lacing_returned;
        if (this.lacing_packet <= i) {
            return 0;
        }
        int i2 = this.lacing_vals[i];
        if ((i2 & 1024) != 0) {
            this.lacing_returned = i + 1;
            this.packetno++;
            return -1;
        }
        int i3 = i2 & 255;
        packet.packet_base = this.body_data;
        packet.packet = this.body_returned;
        packet.e_o_s = this.lacing_vals[i] & 512;
        packet.b_o_s = this.lacing_vals[i] & Keyboard.KEYBOARD_SIZE;
        int i4 = i3 + 0;
        while (i3 == 255) {
            i++;
            int i5 = this.lacing_vals[i];
            int i6 = i5 & 255;
            if ((i5 & 512) != 0) {
                packet.e_o_s = 512;
            }
            i4 += i6;
            i3 = i6;
        }
        packet.packetno = this.packetno;
        packet.granulepos = this.granule_vals[i];
        packet.bytes = i4;
        this.body_returned += i4;
        this.lacing_returned = i + 1;
        this.packetno++;
        return 1;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d5  */
    public int pagein(Page page) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        byte[] bArr = page.header_base;
        int i7 = page.header;
        byte[] bArr2 = page.body_base;
        int i8 = page.body;
        int i9 = page.body_len;
        int iVersion = page.version();
        int iContinued = page.continued();
        int iBos = page.bos();
        int iEos = page.eos();
        long jGranulepos = page.granulepos();
        int iSerialno = page.serialno();
        int iPageno = page.pageno();
        int i10 = bArr[i7 + 26] & 255;
        int i11 = this.lacing_returned;
        int i12 = this.body_returned;
        int i13 = i9;
        if (i12 != 0) {
            int i14 = this.body_fill - i12;
            this.body_fill = i14;
            if (i14 != 0) {
                byte[] bArr3 = this.body_data;
                i = 0;
                System.arraycopy(bArr3, i12, bArr3, 0, i14);
            } else {
                i = 0;
            }
            this.body_returned = i;
        } else {
            iEos = iEos;
            i = 0;
        }
        if (i11 != 0) {
            int i15 = this.lacing_fill;
            if (i15 - i11 != 0) {
                int[] iArr = this.lacing_vals;
                System.arraycopy(iArr, i11, iArr, i, i15 - i11);
                long[] jArr = this.granule_vals;
                System.arraycopy(jArr, i11, jArr, i, this.lacing_fill - i11);
            }
            this.lacing_fill -= i11;
            this.lacing_packet -= i11;
            this.lacing_returned = i;
        }
        if (iSerialno != this.serialno || iVersion > 0) {
            return -1;
        }
        lacing_expand(i10 + 1);
        if (iPageno != this.pageno) {
            for (int i16 = this.lacing_packet; i16 < this.lacing_fill; i16++) {
                this.body_fill -= this.lacing_vals[i16] & 255;
            }
            int i17 = this.lacing_packet;
            this.lacing_fill = i17;
            if (this.pageno != -1) {
                int[] iArr2 = this.lacing_vals;
                this.lacing_fill = i17 + 1;
                iArr2[i17] = 1024;
                this.lacing_packet = i17 + 1;
            }
            if (iContinued != 0) {
                i5 = 0;
                while (true) {
                    if (i5 >= i10) {
                        i2 = i8;
                        break;
                    }
                    int i18 = bArr[i7 + 27 + i5] & 255;
                    i2 += i18;
                    i13 -= i18;
                    if (i18 < 255) {
                        i2 = i8;
                        i5++;
                        break;
                    }
                    i2 = i8;
                    i5++;
                }
                i3 = i13;
                i4 = 0;
            } else {
                i2 = i8;
                i3 = i13;
                i4 = iBos;
                i5 = 0;
            }
        } else {
            i2 = i8;
            i3 = i13;
            i4 = iBos;
            i5 = 0;
        }
        if (i3 != 0) {
            body_expand(i3);
            System.arraycopy(bArr2, i2, this.body_data, this.body_fill, i3);
            this.body_fill += i3;
        }
        int i19 = -1;
        while (i5 < i10) {
            int i20 = bArr[i7 + 27 + i5] & 255;
            int[] iArr3 = this.lacing_vals;
            int i21 = this.lacing_fill;
            iArr3[i21] = i20;
            this.granule_vals[i21] = -1;
            if (i4 != 0) {
                iArr3[i21] = i20 | Keyboard.KEYBOARD_SIZE;
                i6 = 255;
                i4 = 0;
            } else {
                i6 = 255;
            }
            if (i20 < i6) {
                i19 = i21;
            }
            int i22 = i21 + 1;
            this.lacing_fill = i22;
            i5++;
            if (i20 < i6) {
                this.lacing_packet = i22;
            }
        }
        if (i19 != -1) {
            this.granule_vals[i19] = jGranulepos;
        }
        if (iEos != 0) {
            this.e_o_s = 1;
            int i23 = this.lacing_fill;
            if (i23 > 0) {
                int[] iArr4 = this.lacing_vals;
                int i24 = i23 - 1;
                iArr4[i24] = iArr4[i24] | 512;
            }
        }
        this.pageno = iPageno + 1;
        return 0;
    }

    public int flush(Page page) {
        int i;
        int i2;
        int i3;
        int i4 = this.lacing_fill;
        if (i4 > 255) {
            i4 = 255;
        }
        long j = this.granule_vals[0];
        if (i4 == 0) {
            return 0;
        }
        if (this.b_o_s == 0) {
            i = 0;
            while (true) {
                j = 0;
                if (i >= i4) {
                    break;
                }
                if ((this.lacing_vals[i] & 255) < 255) {
                    i++;
                    break;
                }
                i++;
            }
        } else {
            i = 0;
            int i5 = 0;
            while (i < i4 && i5 <= 4096) {
                i5 += this.lacing_vals[i] & 255;
                long j2 = this.granule_vals[i];
                i++;
                j = j2;
            }
        }
        System.arraycopy("OggS".getBytes(), 0, this.header, 0, 4);
        byte[] bArr = this.header;
        bArr[4] = 0;
        bArr[5] = 0;
        if ((this.lacing_vals[0] & Keyboard.KEYBOARD_SIZE) == 0) {
            bArr[5] = (byte) (0 | 1);
        }
        if (this.b_o_s == 0) {
            bArr[5] = (byte) (bArr[5] | 2);
        }
        if (this.e_o_s != 0 && this.lacing_fill == i) {
            bArr[5] = (byte) (bArr[5] | 4);
        }
        this.b_o_s = 1;
        int i6 = 6;
        while (true) {
            i2 = 14;
            if (i6 >= 14) {
                break;
            }
            this.header[i6] = (byte) j;
            j >>>= 8;
            i6++;
        }
        int i7 = this.serialno;
        while (true) {
            if (i2 >= 18) {
                break;
            }
            this.header[i2] = (byte) i7;
            i7 >>>= 8;
            i2++;
        }
        if (this.pageno == -1) {
            this.pageno = 0;
        }
        int i8 = this.pageno;
        this.pageno = i8 + 1;
        for (i3 = 18; i3 < 22; i3++) {
            this.header[i3] = (byte) i8;
            i8 >>>= 8;
        }
        byte[] bArr2 = this.header;
        bArr2[22] = 0;
        bArr2[23] = 0;
        bArr2[24] = 0;
        bArr2[25] = 0;
        bArr2[26] = (byte) i;
        int i9 = 0;
        for (int i10 = 0; i10 < i; i10++) {
            byte b = (byte) this.lacing_vals[i10];
            this.header[i10 + 27] = b;
            i9 += b & 255;
        }
        page.header_base = this.header;
        page.header = 0;
        int i11 = i + 27;
        this.header_fill = i11;
        page.header_len = i11;
        page.body_base = this.body_data;
        page.body = this.body_returned;
        page.body_len = i9;
        int i12 = this.lacing_fill - i;
        this.lacing_fill = i12;
        int[] iArr = this.lacing_vals;
        System.arraycopy(iArr, i, iArr, 0, i12 * 4);
        long[] jArr = this.granule_vals;
        System.arraycopy(jArr, i, jArr, 0, this.lacing_fill * 8);
        this.body_returned += i9;
        page.checksum();
        return 1;
    }

    public int pageout(Page page) {
        int i;
        if ((this.e_o_s == 0 || this.lacing_fill == 0) && this.body_fill - this.body_returned <= 4096 && (i = this.lacing_fill) < 255 && (i == 0 || this.b_o_s != 0)) {
            return 0;
        }
        return flush(page);
    }

    public int eof() {
        return this.e_o_s;
    }

    public int reset() {
        this.body_fill = 0;
        this.body_returned = 0;
        this.lacing_fill = 0;
        this.lacing_packet = 0;
        this.lacing_returned = 0;
        this.header_fill = 0;
        this.e_o_s = 0;
        this.b_o_s = 0;
        this.pageno = -1;
        this.packetno = 0L;
        this.granulepos = 0L;
        return 0;
    }
}
