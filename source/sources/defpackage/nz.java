package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class nz extends ki {
    public int a;
    public String b;
    public long c;
    public byte d;

    public nz() {
    }

    public nz(String str, int i) {
        this.b = str;
        this.a = i;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = a(dataInputStream, 16);
        this.c = dataInputStream.readLong();
        this.d = dataInputStream.readByte();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        a(this.b, dataOutputStream);
        dataOutputStream.writeLong(this.c);
        dataOutputStream.writeByte(this.d);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        return this.b.length() + 4 + 4 + 5;
    }
}
