package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class rg extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public byte e;
    public byte f;

    @Override // defpackage.ki
    public int a() {
        return 34;
    }

    public rg() {
    }

    public rg(sn snVar) {
        this.a = snVar.aD;
        this.b = in.b(snVar.aM * 32.0d);
        this.c = in.b(snVar.aN * 32.0d);
        this.d = in.b(snVar.aO * 32.0d);
        this.e = (byte) ((snVar.aS * 256.0f) / 360.0f);
        this.f = (byte) ((snVar.aT * 256.0f) / 360.0f);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readInt();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.readInt();
        this.e = (byte) dataInputStream.read();
        this.f = (byte) dataInputStream.read();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.writeInt(this.d);
        dataOutputStream.write(this.e);
        dataOutputStream.write(this.f);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
