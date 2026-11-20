package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class hq extends ki {
    public int a;
    public int b;
    public iz c;

    @Override // defpackage.ki
    public int a() {
        return 8;
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readByte();
        this.b = dataInputStream.readShort();
        short s = dataInputStream.readShort();
        if (s >= 0) {
            this.c = new iz(s, dataInputStream.readByte(), dataInputStream.readShort());
        } else {
            this.c = null;
        }
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.a);
        dataOutputStream.writeShort(this.b);
        iz izVar = this.c;
        if (izVar == null) {
            dataOutputStream.writeShort(-1);
            return;
        }
        dataOutputStream.writeShort(izVar.c);
        dataOutputStream.writeByte(this.c.a);
        dataOutputStream.writeShort(this.c.i());
    }
}
