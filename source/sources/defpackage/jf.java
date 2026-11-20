package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class jf extends ki {
    public int a;
    public byte b;

    @Override // defpackage.ki
    public int a() {
        return 5;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readByte();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeByte(this.b);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
