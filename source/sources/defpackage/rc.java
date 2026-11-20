package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class rc extends ki {
    public int a;
    public int b;
    public int c;

    @Override // defpackage.ki
    public int a() {
        return 12;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readInt();
        this.c = dataInputStream.readInt();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.writeInt(this.c);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
