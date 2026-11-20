package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class qs extends ki {
    public int a;
    public int b;
    public int c;
    public short d;
    public iz e;
    public boolean f;

    @Override // defpackage.ki
    public int a() {
        return 11;
    }

    public qs() {
    }

    public qs(int i, int i2, int i3, boolean z, iz izVar, short s) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.e = izVar;
        this.d = s;
        this.f = z;
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readByte();
        this.b = dataInputStream.readShort();
        this.c = dataInputStream.readByte();
        this.d = dataInputStream.readShort();
        this.f = dataInputStream.readBoolean();
        short s = dataInputStream.readShort();
        if (s >= 0) {
            this.e = new iz(s, dataInputStream.readByte(), dataInputStream.readShort());
        } else {
            this.e = null;
        }
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.a);
        dataOutputStream.writeShort(this.b);
        dataOutputStream.writeByte(this.c);
        dataOutputStream.writeShort(this.d);
        dataOutputStream.writeBoolean(this.f);
        iz izVar = this.e;
        if (izVar == null) {
            dataOutputStream.writeShort(-1);
            return;
        }
        dataOutputStream.writeShort(izVar.c);
        dataOutputStream.writeByte(this.e.a);
        dataOutputStream.writeShort(this.e.i());
    }
}
