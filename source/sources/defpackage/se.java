package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class se extends ki {
    public int a;
    public int b;
    public boolean c;

    @Override // defpackage.ki
    public int a() {
        return 9;
    }

    public se() {
        this.k = false;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readInt();
        this.c = dataInputStream.read() != 0;
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeInt(this.b);
        dataOutputStream.write(this.c ? 1 : 0);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
