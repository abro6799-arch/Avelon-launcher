package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class jz extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;

    @Override // defpackage.ki
    public int a() {
        return 14;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.e = dataInputStream.readByte();
        this.b = dataInputStream.readInt();
        this.c = dataInputStream.readByte();
        this.d = dataInputStream.readInt();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeByte(this.e);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.writeByte(this.c);
        dataOutputStream.writeInt(this.d);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
