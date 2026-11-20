package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class sb extends uh {
    @Override // defpackage.uh, defpackage.ki
    public int a() {
        return 6;
    }

    public sb() {
        this.g = true;
    }

    @Override // defpackage.uh, defpackage.ki
    public void a(DataInputStream dataInputStream) {
        super.a(dataInputStream);
        this.e = dataInputStream.readByte();
        this.f = dataInputStream.readByte();
    }

    @Override // defpackage.uh, defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        super.a(dataOutputStream);
        dataOutputStream.writeByte(this.e);
        dataOutputStream.writeByte(this.f);
    }
}
