package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class hg extends ki {
    public long a;

    @Override // defpackage.ki
    public int a() {
        return 8;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readLong();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeLong(this.a);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
