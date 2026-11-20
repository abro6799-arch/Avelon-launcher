package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class wu extends ki {
    public int a;
    public int b;
    public short[] c;
    public byte[] d;
    public byte[] e;
    public int f;

    public wu() {
        this.k = true;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readInt();
        int i = dataInputStream.readShort() & 65535;
        this.f = i;
        this.c = new short[i];
        this.d = new byte[i];
        this.e = new byte[i];
        for (int i2 = 0; i2 < this.f; i2++) {
            this.c[i2] = dataInputStream.readShort();
        }
        dataInputStream.readFully(this.d);
        dataInputStream.readFully(this.e);
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.writeShort((short) this.f);
        for (int i = 0; i < this.f; i++) {
            dataOutputStream.writeShort(this.c[i]);
        }
        dataOutputStream.write(this.d);
        dataOutputStream.write(this.e);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        return (this.f * 4) + 10;
    }
}
