package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class oj extends ki {
    public int a;
    public short b;
    public boolean c;

    @Override // defpackage.ki
    public int a() {
        return 4;
    }

    public oj() {
    }

    public oj(int i, short s, boolean z) {
        this.a = i;
        this.b = s;
        this.c = z;
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readByte();
        this.b = dataInputStream.readShort();
        this.c = dataInputStream.readByte() != 0;
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.a);
        dataOutputStream.writeShort(this.b);
        dataOutputStream.writeByte(this.c ? 1 : 0);
    }
}
