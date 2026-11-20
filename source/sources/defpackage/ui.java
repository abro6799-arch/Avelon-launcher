package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ui extends ki {
    public int a;
    public int b;
    public int c;
    public String[] d;

    public ui() {
        this.k = true;
    }

    public ui(int i, int i2, int i3, String[] strArr) {
        this.k = true;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = strArr;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readShort();
        this.c = dataInputStream.readInt();
        this.d = new String[4];
        for (int i = 0; i < 4; i++) {
            this.d[i] = a(dataInputStream, 15);
        }
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeShort(this.b);
        dataOutputStream.writeInt(this.c);
        for (int i = 0; i < 4; i++) {
            a(this.d[i], dataOutputStream);
        }
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        int length = 0;
        for (int i = 0; i < 4; i++) {
            length += this.d[i].length();
        }
        return length;
    }
}
