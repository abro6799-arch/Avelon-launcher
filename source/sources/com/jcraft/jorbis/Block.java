package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import com.jcraft.jogg.Packet;

/* JADX INFO: loaded from: classes.dex */
public class Block {
    int W;
    int eofflag;
    int floor_bits;
    int glue_bits;
    long granulepos;
    int lW;
    int mode;
    int nW;
    int pcmend;
    int res_bits;
    long sequence;
    int time_bits;
    DspState vd;
    float[][] pcm = new float[0][];
    Buffer opb = new Buffer();

    public Block(DspState dspState) {
        this.vd = dspState;
        if (dspState.analysisp != 0) {
            this.opb.writeinit();
        }
    }

    public void init(DspState dspState) {
        this.vd = dspState;
    }

    public int clear() {
        DspState dspState = this.vd;
        if (dspState == null || dspState.analysisp == 0) {
            return 0;
        }
        this.opb.writeclear();
        return 0;
    }

    public int synthesis(Packet packet) {
        int i;
        Info info = this.vd.vi;
        this.opb.readinit(packet.packet_base, packet.packet, packet.bytes);
        if (this.opb.read(1) != 0 || (i = this.opb.read(this.vd.modebits)) == -1) {
            return -1;
        }
        this.mode = i;
        int i2 = info.mode_param[this.mode].blockflag;
        this.W = i2;
        if (i2 != 0) {
            this.lW = this.opb.read(1);
            int i3 = this.opb.read(1);
            this.nW = i3;
            if (i3 == -1) {
                return -1;
            }
        } else {
            this.lW = 0;
            this.nW = 0;
        }
        this.granulepos = packet.granulepos;
        this.sequence = packet.packetno - 3;
        this.eofflag = packet.e_o_s;
        this.pcmend = info.blocksizes[this.W];
        if (this.pcm.length < info.channels) {
            this.pcm = new float[info.channels][];
        }
        for (int i4 = 0; i4 < info.channels; i4++) {
            float[][] fArr = this.pcm;
            float[] fArr2 = fArr[i4];
            if (fArr2 == null || fArr2.length < this.pcmend) {
                fArr[i4] = new float[this.pcmend];
            } else {
                for (int i5 = 0; i5 < this.pcmend; i5++) {
                    this.pcm[i4][i5] = 0.0f;
                }
            }
        }
        return FuncMapping.mapping_P[info.map_type[info.mode_param[this.mode].mapping]].inverse(this, this.vd.mode[this.mode]);
    }
}
