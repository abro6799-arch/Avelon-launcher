package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class jv extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;

    @Override // defpackage.ki
    public int a() {
        return 11;
    }

    public jv() {
    }

    public jv(int i, int i2, int i3, int i4, int i5) {
        this.e = i;
        this.a = i2;
        this.b = i3;
        this.c = i4;
        this.d = i5;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.e = dataInputStream.read();
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.read();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.read();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.e);
        dataOutputStream.writeInt(this.a);
        dataOutputStream.write(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.write(this.d);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
