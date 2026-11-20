package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class pz extends uh {
    @Override // defpackage.uh, defpackage.ki
    public int a() {
        return 9;
    }

    public pz() {
        this.g = true;
    }

    @Override // defpackage.uh, defpackage.ki
    public void a(DataInputStream dataInputStream) {
        super.a(dataInputStream);
        this.b = dataInputStream.readByte();
        this.c = dataInputStream.readByte();
        this.d = dataInputStream.readByte();
        this.e = dataInputStream.readByte();
        this.f = dataInputStream.readByte();
    }

    @Override // defpackage.uh, defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        super.a(dataOutputStream);
        dataOutputStream.writeByte(this.b);
        dataOutputStream.writeByte(this.c);
        dataOutputStream.writeByte(this.d);
        dataOutputStream.writeByte(this.e);
        dataOutputStream.writeByte(this.f);
    }
}
