package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import com.jcraft.jogg.Packet;

/* JADX INFO: loaded from: classes.dex */
public class Info {
    private static final int OV_EBADPACKET = -136;
    private static final int OV_ENOTAUDIO = -135;
    private static final int VI_FLOORB = 2;
    private static final int VI_MAPB = 1;
    private static final int VI_RESB = 3;
    private static final int VI_TIMEB = 1;
    private static final int VI_WINDOWB = 1;
    private static byte[] _vorbis = "vorbis".getBytes();
    int bitrate_lower;
    int bitrate_nominal;
    int bitrate_upper;
    int books;
    public int channels;
    int envelopesa;
    int floors;
    int maps;
    int modes;
    float preecho_clamp;
    float preecho_thresh;
    int psys;
    public int rate;
    int residues;
    int times;
    public int version;
    int[] blocksizes = new int[2];
    InfoMode[] mode_param = null;
    int[] map_type = null;
    Object[] map_param = null;
    int[] time_type = null;
    Object[] time_param = null;
    int[] floor_type = null;
    Object[] floor_param = null;
    int[] residue_type = null;
    Object[] residue_param = null;
    StaticCodeBook[] book_param = null;
    PsyInfo[] psy_param = new PsyInfo[64];

    public void init() {
        this.rate = 0;
    }

    public void clear() {
        for (int i = 0; i < this.modes; i++) {
            this.mode_param[i] = null;
        }
        this.mode_param = null;
        for (int i2 = 0; i2 < this.maps; i2++) {
            FuncMapping.mapping_P[this.map_type[i2]].free_info(this.map_param[i2]);
        }
        this.map_param = null;
        for (int i3 = 0; i3 < this.times; i3++) {
            FuncTime.time_P[this.time_type[i3]].free_info(this.time_param[i3]);
        }
        this.time_param = null;
        for (int i4 = 0; i4 < this.floors; i4++) {
            FuncFloor.floor_P[this.floor_type[i4]].free_info(this.floor_param[i4]);
        }
        this.floor_param = null;
        for (int i5 = 0; i5 < this.residues; i5++) {
            FuncResidue.residue_P[this.residue_type[i5]].free_info(this.residue_param[i5]);
        }
        this.residue_param = null;
        for (int i6 = 0; i6 < this.books; i6++) {
            StaticCodeBook staticCodeBook = this.book_param[i6];
            if (staticCodeBook != null) {
                staticCodeBook.clear();
                this.book_param[i6] = null;
            }
        }
        this.book_param = null;
        for (int i7 = 0; i7 < this.psys; i7++) {
            this.psy_param[i7].free();
        }
    }

    int unpack_info(Buffer buffer) {
        int[] iArr;
        int i;
        int i2 = buffer.read(32);
        this.version = i2;
        if (i2 != 0) {
            return -1;
        }
        this.channels = buffer.read(8);
        this.rate = buffer.read(32);
        this.bitrate_upper = buffer.read(32);
        this.bitrate_nominal = buffer.read(32);
        this.bitrate_lower = buffer.read(32);
        this.blocksizes[0] = 1 << buffer.read(4);
        this.blocksizes[1] = 1 << buffer.read(4);
        if (this.rate >= 1 && this.channels >= 1 && (i = (iArr = this.blocksizes)[0]) >= 8 && iArr[1] >= i && buffer.read(1) == 1) {
            return 0;
        }
        clear();
        return -1;
    }

    int unpack_books(Buffer buffer) {
        int i = buffer.read(8) + 1;
        this.books = i;
        StaticCodeBook[] staticCodeBookArr = this.book_param;
        if (staticCodeBookArr == null || staticCodeBookArr.length != i) {
            this.book_param = new StaticCodeBook[i];
        }
        for (int i2 = 0; i2 < this.books; i2++) {
            this.book_param[i2] = new StaticCodeBook();
            if (this.book_param[i2].unpack(buffer) != 0) {
                clear();
                return -1;
            }
        }
        int i3 = buffer.read(6) + 1;
        this.times = i3;
        int[] iArr = this.time_type;
        if (iArr == null || iArr.length != i3) {
            this.time_type = new int[i3];
        }
        Object[] objArr = this.time_param;
        if (objArr == null || objArr.length != i3) {
            this.time_param = new Object[i3];
        }
        for (int i4 = 0; i4 < this.times; i4++) {
            this.time_type[i4] = buffer.read(16);
            int i5 = this.time_type[i4];
            if (i5 < 0 || i5 >= 1) {
                clear();
                return -1;
            }
            this.time_param[i4] = FuncTime.time_P[this.time_type[i4]].unpack(this, buffer);
            if (this.time_param[i4] == null) {
                clear();
                return -1;
            }
        }
        int i6 = buffer.read(6) + 1;
        this.floors = i6;
        int[] iArr2 = this.floor_type;
        if (iArr2 == null || iArr2.length != i6) {
            this.floor_type = new int[i6];
        }
        Object[] objArr2 = this.floor_param;
        if (objArr2 == null || objArr2.length != i6) {
            this.floor_param = new Object[i6];
        }
        for (int i7 = 0; i7 < this.floors; i7++) {
            this.floor_type[i7] = buffer.read(16);
            int i8 = this.floor_type[i7];
            if (i8 < 0 || i8 >= 2) {
                clear();
                return -1;
            }
            this.floor_param[i7] = FuncFloor.floor_P[this.floor_type[i7]].unpack(this, buffer);
            if (this.floor_param[i7] == null) {
                clear();
                return -1;
            }
        }
        int i9 = buffer.read(6) + 1;
        this.residues = i9;
        int[] iArr3 = this.residue_type;
        if (iArr3 == null || iArr3.length != i9) {
            this.residue_type = new int[i9];
        }
        Object[] objArr3 = this.residue_param;
        if (objArr3 == null || objArr3.length != i9) {
            this.residue_param = new Object[i9];
        }
        for (int i10 = 0; i10 < this.residues; i10++) {
            this.residue_type[i10] = buffer.read(16);
            int i11 = this.residue_type[i10];
            if (i11 < 0 || i11 >= 3) {
                clear();
                return -1;
            }
            this.residue_param[i10] = FuncResidue.residue_P[this.residue_type[i10]].unpack(this, buffer);
            if (this.residue_param[i10] == null) {
                clear();
                return -1;
            }
        }
        int i12 = buffer.read(6) + 1;
        this.maps = i12;
        int[] iArr4 = this.map_type;
        if (iArr4 == null || iArr4.length != i12) {
            this.map_type = new int[i12];
        }
        Object[] objArr4 = this.map_param;
        if (objArr4 == null || objArr4.length != i12) {
            this.map_param = new Object[i12];
        }
        for (int i13 = 0; i13 < this.maps; i13++) {
            this.map_type[i13] = buffer.read(16);
            int i14 = this.map_type[i13];
            if (i14 < 0 || i14 >= 1) {
                clear();
                return -1;
            }
            this.map_param[i13] = FuncMapping.mapping_P[this.map_type[i13]].unpack(this, buffer);
            if (this.map_param[i13] == null) {
                clear();
                return -1;
            }
        }
        int i15 = buffer.read(6) + 1;
        this.modes = i15;
        InfoMode[] infoModeArr = this.mode_param;
        if (infoModeArr == null || infoModeArr.length != i15) {
            this.mode_param = new InfoMode[i15];
        }
        for (int i16 = 0; i16 < this.modes; i16++) {
            this.mode_param[i16] = new InfoMode();
            this.mode_param[i16].blockflag = buffer.read(1);
            this.mode_param[i16].windowtype = buffer.read(16);
            this.mode_param[i16].transformtype = buffer.read(16);
            this.mode_param[i16].mapping = buffer.read(8);
            if (this.mode_param[i16].windowtype >= 1 || this.mode_param[i16].transformtype >= 1 || this.mode_param[i16].mapping >= this.maps) {
                clear();
                return -1;
            }
        }
        if (buffer.read(1) == 1) {
            return 0;
        }
        clear();
        return -1;
    }

    public int synthesis_headerin(Comment comment, Packet packet) {
        Buffer buffer = new Buffer();
        if (packet != null) {
            buffer.readinit(packet.packet_base, packet.packet, packet.bytes);
            byte[] bArr = new byte[6];
            int i = buffer.read(8);
            buffer.read(bArr, 6);
            if (bArr[0] == 118 && bArr[1] == 111 && bArr[2] == 114 && bArr[3] == 98 && bArr[4] == 105 && bArr[5] == 115) {
                if (i == 1) {
                    if (packet.b_o_s != 0 && this.rate == 0) {
                        return unpack_info(buffer);
                    }
                    return -1;
                }
                if (i == 3) {
                    if (this.rate == 0) {
                        return -1;
                    }
                    return comment.unpack(buffer);
                }
                if (i != 5 || this.rate == 0 || comment.vendor == null) {
                    return -1;
                }
                return unpack_books(buffer);
            }
        }
        return -1;
    }

    int pack_info(Buffer buffer) {
        buffer.write(1, 8);
        buffer.write(_vorbis);
        buffer.write(0, 32);
        buffer.write(this.channels, 8);
        buffer.write(this.rate, 32);
        buffer.write(this.bitrate_upper, 32);
        buffer.write(this.bitrate_nominal, 32);
        buffer.write(this.bitrate_lower, 32);
        buffer.write(Util.ilog2(this.blocksizes[0]), 4);
        buffer.write(Util.ilog2(this.blocksizes[1]), 4);
        buffer.write(1, 1);
        return 0;
    }

    int pack_books(Buffer buffer) {
        buffer.write(5, 8);
        buffer.write(_vorbis);
        buffer.write(this.books - 1, 8);
        for (int i = 0; i < this.books; i++) {
            if (this.book_param[i].pack(buffer) != 0) {
                return -1;
            }
        }
        buffer.write(this.times - 1, 6);
        for (int i2 = 0; i2 < this.times; i2++) {
            buffer.write(this.time_type[i2], 16);
            FuncTime.time_P[this.time_type[i2]].pack(this.time_param[i2], buffer);
        }
        buffer.write(this.floors - 1, 6);
        for (int i3 = 0; i3 < this.floors; i3++) {
            buffer.write(this.floor_type[i3], 16);
            FuncFloor.floor_P[this.floor_type[i3]].pack(this.floor_param[i3], buffer);
        }
        buffer.write(this.residues - 1, 6);
        for (int i4 = 0; i4 < this.residues; i4++) {
            buffer.write(this.residue_type[i4], 16);
            FuncResidue.residue_P[this.residue_type[i4]].pack(this.residue_param[i4], buffer);
        }
        buffer.write(this.maps - 1, 6);
        for (int i5 = 0; i5 < this.maps; i5++) {
            buffer.write(this.map_type[i5], 16);
            FuncMapping.mapping_P[this.map_type[i5]].pack(this, this.map_param[i5], buffer);
        }
        buffer.write(this.modes - 1, 6);
        for (int i6 = 0; i6 < this.modes; i6++) {
            buffer.write(this.mode_param[i6].blockflag, 1);
            buffer.write(this.mode_param[i6].windowtype, 16);
            buffer.write(this.mode_param[i6].transformtype, 16);
            buffer.write(this.mode_param[i6].mapping, 8);
        }
        buffer.write(1, 1);
        return 0;
    }

    public int blocksize(Packet packet) {
        Buffer buffer = new Buffer();
        buffer.readinit(packet.packet_base, packet.packet, packet.bytes);
        if (buffer.read(1) != 0) {
            return OV_ENOTAUDIO;
        }
        int i = 0;
        for (int i2 = this.modes; i2 > 1; i2 >>>= 1) {
            i++;
        }
        int i3 = buffer.read(i);
        return i3 == -1 ? OV_EBADPACKET : this.blocksizes[this.mode_param[i3].blockflag];
    }

    public String toString() {
        return "version:" + new Integer(this.version) + ", channels:" + new Integer(this.channels) + ", rate:" + new Integer(this.rate) + ", bitrate:" + new Integer(this.bitrate_upper) + "," + new Integer(this.bitrate_nominal) + "," + new Integer(this.bitrate_lower);
    }
}
