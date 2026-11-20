package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class iw extends ki {
    public int a;
    public int b;
    public String c;
    public int d;

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readByte();
        this.b = dataInputStream.readByte();
        this.c = dataInputStream.readUTF();
        this.d = dataInputStream.readByte();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.a);
        dataOutputStream.writeByte(this.b);
        dataOutputStream.writeUTF(this.c);
        dataOutputStream.writeByte(this.d);
    }

    @Override // defpackage.ki
    public int a() {
        return this.c.length() + 3;
    }
}
