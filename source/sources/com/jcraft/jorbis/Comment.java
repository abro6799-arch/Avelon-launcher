package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import com.jcraft.jogg.Packet;

/* JADX INFO: loaded from: classes.dex */
public class Comment {
    private static final int OV_EIMPL = -130;
    public int[] comment_lengths;
    public int comments;
    public byte[][] user_comments;
    public byte[] vendor;
    private static byte[] _vorbis = "vorbis".getBytes();
    private static byte[] _vendor = "Xiphophorus libVorbis I 20000508".getBytes();

    public void init() {
        this.user_comments = null;
        this.comments = 0;
        this.vendor = null;
    }

    public void add(String str) {
        add(str.getBytes());
    }

    private void add(byte[] bArr) {
        int i = this.comments;
        byte[][] bArr2 = new byte[i + 2][];
        byte[][] bArr3 = this.user_comments;
        if (bArr3 != null) {
            System.arraycopy(bArr3, 0, bArr2, 0, i);
        }
        this.user_comments = bArr2;
        int i2 = this.comments;
        int[] iArr = new int[i2 + 2];
        int[] iArr2 = this.comment_lengths;
        if (iArr2 != null) {
            System.arraycopy(iArr2, 0, iArr, 0, i2);
        }
        this.comment_lengths = iArr;
        byte[] bArr4 = new byte[bArr.length + 1];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        byte[][] bArr5 = this.user_comments;
        int i3 = this.comments;
        bArr5[i3] = bArr4;
        this.comment_lengths[i3] = bArr.length;
        int i4 = i3 + 1;
        this.comments = i4;
        bArr5[i4] = null;
    }

    public void add_tag(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        add(str + "=" + str2);
    }

    static boolean tagcompare(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bArr[i2];
            byte b2 = bArr2[i2];
            if (90 >= b && b >= 65) {
                b = (byte) ((b - 65) + 97);
            }
            if (90 >= b2 && b2 >= 65) {
                b2 = (byte) ((b2 - 65) + 97);
            }
            if (b != b2) {
                return false;
            }
        }
        return true;
    }

    public String query(String str) {
        return query(str, 0);
    }

    public String query(String str, int i) {
        int iQuery = query(str.getBytes(), i);
        if (iQuery == -1) {
            return null;
        }
        byte[] bArr = this.user_comments[iQuery];
        int i2 = 0;
        while (true) {
            int i3 = this.comment_lengths[iQuery];
            if (i2 >= i3) {
                return null;
            }
            if (bArr[i2] == 61) {
                int i4 = i2 + 1;
                return new String(bArr, i4, i3 - i4);
            }
            i2++;
        }
    }

    private int query(byte[] bArr, int i) {
        int length = bArr.length + 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        bArr2[bArr.length] = 61;
        int i2 = 0;
        for (int i3 = 0; i3 < this.comments; i3++) {
            if (tagcompare(this.user_comments[i3], bArr2, length)) {
                if (i == i2) {
                    return i3;
                }
                i2++;
            }
        }
        return -1;
    }

    int unpack(Buffer buffer) {
        int i = buffer.read(32);
        if (i < 0) {
            clear();
            return -1;
        }
        byte[] bArr = new byte[i + 1];
        this.vendor = bArr;
        buffer.read(bArr, i);
        int i2 = buffer.read(32);
        this.comments = i2;
        if (i2 < 0) {
            clear();
            return -1;
        }
        this.user_comments = new byte[i2 + 1][];
        this.comment_lengths = new int[i2 + 1];
        for (int i3 = 0; i3 < this.comments; i3++) {
            int i4 = buffer.read(32);
            if (i4 < 0) {
                clear();
                return -1;
            }
            this.comment_lengths[i3] = i4;
            byte[] bArr2 = new byte[i4 + 1];
            this.user_comments[i3] = bArr2;
            buffer.read(bArr2, i4);
        }
        if (buffer.read(1) == 1) {
            return 0;
        }
        clear();
        return -1;
    }

    int pack(Buffer buffer) {
        buffer.write(3, 8);
        buffer.write(_vorbis);
        buffer.write(_vendor.length, 32);
        buffer.write(_vendor);
        buffer.write(this.comments, 32);
        if (this.comments != 0) {
            for (int i = 0; i < this.comments; i++) {
                if (this.user_comments[i] != null) {
                    buffer.write(this.comment_lengths[i], 32);
                    buffer.write(this.user_comments[i]);
                } else {
                    buffer.write(0, 32);
                }
            }
        }
        buffer.write(1, 1);
        return 0;
    }

    public int header_out(Packet packet) {
        Buffer buffer = new Buffer();
        buffer.writeinit();
        if (pack(buffer) != 0) {
            return OV_EIMPL;
        }
        packet.packet_base = new byte[buffer.bytes()];
        packet.packet = 0;
        packet.bytes = buffer.bytes();
        System.arraycopy(buffer.buffer(), 0, packet.packet_base, 0, packet.bytes);
        packet.b_o_s = 0;
        packet.e_o_s = 0;
        packet.granulepos = 0L;
        return 0;
    }

    void clear() {
        for (int i = 0; i < this.comments; i++) {
            this.user_comments[i] = null;
        }
        this.user_comments = null;
        this.vendor = null;
    }

    public String getVendor() {
        byte[] bArr = this.vendor;
        return new String(bArr, 0, bArr.length - 1);
    }

    public String getComment(int i) {
        if (this.comments <= i) {
            return null;
        }
        byte[] bArr = this.user_comments[i];
        return new String(bArr, 0, bArr.length - 1);
    }

    public String toString() {
        byte[] bArr = this.vendor;
        String strConcat = "Vendor: ".concat(new String(bArr, 0, bArr.length - 1));
        for (int i = 0; i < this.comments; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(strConcat);
            sb.append("\nComment: ");
            byte[] bArr2 = this.user_comments[i];
            sb.append(new String(bArr2, 0, bArr2.length - 1));
            strConcat = sb.toString();
        }
        return strConcat + "\n";
    }
}
