package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class fa extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;

    @Override // defpackage.ki
    public int a() {
        return 17;
    }

    public fa() {
    }

    public fa(sn snVar) {
        this.a = snVar.aD;
        this.b = in.b(snVar.aM * 32.0d);
        this.c = in.b(snVar.aN * 32.0d);
        this.d = in.b(snVar.aO * 32.0d);
        if (snVar instanceof c) {
            this.e = 1;
        }
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.e = dataInputStream.readByte();
        this.b = dataInputStream.readInt();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.readInt();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeByte(this.e);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.writeInt(this.d);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
