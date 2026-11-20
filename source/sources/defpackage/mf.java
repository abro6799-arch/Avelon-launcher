package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class mf extends ki {
    public int a;
    public String b;
    public int c;
    public int d;
    public int e;
    public byte f;
    public byte g;
    public int h;

    @Override // defpackage.ki
    public int a() {
        return 28;
    }

    public mf() {
    }

    public mf(gs gsVar) {
        this.a = gsVar.aD;
        this.b = gsVar.l;
        this.c = in.b(gsVar.aM * 32.0d);
        this.d = in.b(gsVar.aN * 32.0d);
        this.e = in.b(gsVar.aO * 32.0d);
        this.f = (byte) ((gsVar.aS * 256.0f) / 360.0f);
        this.g = (byte) ((gsVar.aT * 256.0f) / 360.0f);
        iz izVarB = gsVar.c.b();
        this.h = izVarB == null ? 0 : izVarB.c;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = a(dataInputStream, 16);
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.readInt();
        this.e = dataInputStream.readInt();
        this.f = dataInputStream.readByte();
        this.g = dataInputStream.readByte();
        this.h = dataInputStream.readShort();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        a(this.b, dataOutputStream);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.writeInt(this.d);
        dataOutputStream.writeInt(this.e);
        dataOutputStream.writeByte(this.f);
        dataOutputStream.writeByte(this.g);
        dataOutputStream.writeShort(this.h);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
