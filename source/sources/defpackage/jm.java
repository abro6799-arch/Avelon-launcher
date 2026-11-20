package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class jm extends ki {
    public int a;
    public byte b;
    public int c;
    public int d;
    public int e;
    public byte f;
    public byte g;
    private ud h;
    private List i;

    @Override // defpackage.ki
    public int a() {
        return 20;
    }

    public jm() {
    }

    public jm(ls lsVar) {
        this.a = lsVar.aD;
        this.b = (byte) jc.a(lsVar);
        this.c = in.b(lsVar.aM * 32.0d);
        this.d = in.b(lsVar.aN * 32.0d);
        this.e = in.b(lsVar.aO * 32.0d);
        this.f = (byte) ((lsVar.aS * 256.0f) / 360.0f);
        this.g = (byte) ((lsVar.aT * 256.0f) / 360.0f);
        this.h = lsVar.ad();
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readByte();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.readInt();
        this.e = dataInputStream.readInt();
        this.f = dataInputStream.readByte();
        this.g = dataInputStream.readByte();
        this.i = ud.a(dataInputStream);
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeByte(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.writeInt(this.d);
        dataOutputStream.writeInt(this.e);
        dataOutputStream.writeByte(this.f);
        dataOutputStream.writeByte(this.g);
        this.h.a(dataOutputStream);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    public List b() {
        return this.i;
    }
}
