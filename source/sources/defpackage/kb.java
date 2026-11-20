package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class kb extends ki {
    public int a;
    public iz[] b;

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readByte();
        int i = dataInputStream.readShort();
        this.b = new iz[i];
        for (int i2 = 0; i2 < i; i2++) {
            short s = dataInputStream.readShort();
            if (s >= 0) {
                this.b[i2] = new iz(s, dataInputStream.readByte(), dataInputStream.readShort());
            }
        }
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.a);
        dataOutputStream.writeShort(this.b.length);
        int i = 0;
        while (true) {
            iz[] izVarArr = this.b;
            if (i >= izVarArr.length) {
                return;
            }
            iz izVar = izVarArr[i];
            if (izVar == null) {
                dataOutputStream.writeShort(-1);
            } else {
                dataOutputStream.writeShort((short) izVar.c);
                dataOutputStream.writeByte((byte) this.b[i].a);
                dataOutputStream.writeShort((short) this.b[i].i());
            }
            i++;
        }
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        return (this.b.length * 5) + 3;
    }
}
