package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ql extends ki {
    private float a;
    private float b;
    private boolean c;
    private boolean d;
    private float e;
    private float f;

    @Override // defpackage.ki
    public int a() {
        return 18;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readFloat();
        this.b = dataInputStream.readFloat();
        this.e = dataInputStream.readFloat();
        this.f = dataInputStream.readFloat();
        this.c = dataInputStream.readBoolean();
        this.d = dataInputStream.readBoolean();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeFloat(this.a);
        dataOutputStream.writeFloat(this.b);
        dataOutputStream.writeFloat(this.e);
        dataOutputStream.writeFloat(this.f);
        dataOutputStream.writeBoolean(this.c);
        dataOutputStream.writeBoolean(this.d);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
