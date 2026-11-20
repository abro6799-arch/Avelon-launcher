package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class mv extends ki {
    public int a;
    public int b;
    public int c;

    @Override // defpackage.ki
    public int a() {
        return 5;
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readByte();
        this.b = dataInputStream.readShort();
        this.c = dataInputStream.readShort();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.a);
        dataOutputStream.writeShort(this.b);
        dataOutputStream.writeShort(this.c);
    }
}
