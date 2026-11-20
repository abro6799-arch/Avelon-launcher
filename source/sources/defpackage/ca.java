package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ca extends ki {
    public static final String[] a = {"tile.bed.notValid", null, null};
    public int b;

    @Override // defpackage.ki
    public int a() {
        return 1;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.b = dataInputStream.readByte();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.b);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
