package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ai extends ki {
    public short a;
    public short b;
    public byte[] c;

    public ai() {
        this.k = true;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readShort();
        this.b = dataInputStream.readShort();
        byte[] bArr = new byte[dataInputStream.readByte() & 255];
        this.c = bArr;
        dataInputStream.readFully(bArr);
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.a);
        dataOutputStream.writeShort(this.b);
        dataOutputStream.writeByte(this.c.length);
        dataOutputStream.write(this.c);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        return this.c.length + 4;
    }
}
