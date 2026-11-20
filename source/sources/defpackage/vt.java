package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class vt extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public String f;

    @Override // defpackage.ki
    public int a() {
        return 24;
    }

    public vt() {
    }

    public vt(qv qvVar) {
        this.a = qvVar.aD;
        this.b = qvVar.b;
        this.c = qvVar.c;
        this.d = qvVar.d;
        this.e = qvVar.a;
        this.f = qvVar.e.A;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.f = a(dataInputStream, iq.z);
        this.b = dataInputStream.readInt();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.readInt();
        this.e = dataInputStream.readInt();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        a(this.f, dataOutputStream);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.writeInt(this.d);
        dataOutputStream.writeInt(this.e);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
