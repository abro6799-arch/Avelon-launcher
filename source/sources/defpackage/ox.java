package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ox extends ki {
    public byte a;

    @Override // defpackage.ki
    public int a() {
        return 1;
    }

    public ox() {
    }

    public ox(byte b) {
        this.a = b;
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readByte();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.a);
    }
}
