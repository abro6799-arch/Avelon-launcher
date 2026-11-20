package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class nd extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public byte e;
    public byte f;
    public byte g;
    public int h;
    public int i;
    public int l;

    @Override // defpackage.ki
    public int a() {
        return 24;
    }

    public nd() {
    }

    public nd(hl hlVar) {
        this.a = hlVar.aD;
        this.h = hlVar.a.c;
        this.i = hlVar.a.a;
        this.l = hlVar.a.i();
        this.b = in.b(hlVar.aM * 32.0d);
        this.c = in.b(hlVar.aN * 32.0d);
        this.d = in.b(hlVar.aO * 32.0d);
        this.e = (byte) (hlVar.aP * 128.0d);
        this.f = (byte) (hlVar.aQ * 128.0d);
        this.g = (byte) (hlVar.aR * 128.0d);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.h = dataInputStream.readShort();
        this.i = dataInputStream.readByte();
        this.l = dataInputStream.readShort();
        this.b = dataInputStream.readInt();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.readInt();
        this.e = dataInputStream.readByte();
        this.f = dataInputStream.readByte();
        this.g = dataInputStream.readByte();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeShort(this.h);
        dataOutputStream.writeByte(this.i);
        dataOutputStream.writeShort(this.l);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.writeInt(this.d);
        dataOutputStream.writeByte(this.e);
        dataOutputStream.writeByte(this.f);
        dataOutputStream.writeByte(this.g);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
