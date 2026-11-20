package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class gx extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public iz e;

    @Override // defpackage.ki
    public int a() {
        return 15;
    }

    public gx() {
    }

    public gx(int i, int i2, int i3, int i4, iz izVar) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = izVar;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.read();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.read();
        short s = dataInputStream.readShort();
        if (s >= 0) {
            this.e = new iz(s, dataInputStream.readByte(), dataInputStream.readShort());
        } else {
            this.e = null;
        }
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.write(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.write(this.d);
        iz izVar = this.e;
        if (izVar == null) {
            dataOutputStream.writeShort(-1);
            return;
        }
        dataOutputStream.writeShort(izVar.c);
        dataOutputStream.writeByte(this.e.a);
        dataOutputStream.writeShort(this.e.i());
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
