package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class vh extends ig {
    @Override // defpackage.ig, defpackage.ki
    public int a() {
        return 9;
    }

    public vh() {
        this.i = true;
    }

    public vh(float f, float f2, boolean z) {
        this.e = f;
        this.f = f2;
        this.g = z;
        this.i = true;
    }

    @Override // defpackage.ig, defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.e = dataInputStream.readFloat();
        this.f = dataInputStream.readFloat();
        super.a(dataInputStream);
    }

    @Override // defpackage.ig, defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeFloat(this.e);
        dataOutputStream.writeFloat(this.f);
        super.a(dataOutputStream);
    }
}
