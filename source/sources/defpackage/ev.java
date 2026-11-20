package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ev extends ig {
    @Override // defpackage.ig, defpackage.ki
    public int a() {
        return 41;
    }

    public ev() {
        this.i = true;
        this.h = true;
    }

    public ev(double d, double d2, double d3, double d4, float f, float f2, boolean z) {
        this.a = d;
        this.b = d2;
        this.d = d3;
        this.c = d4;
        this.e = f;
        this.f = f2;
        this.g = z;
        this.i = true;
        this.h = true;
    }

    @Override // defpackage.ig, defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readDouble();
        this.b = dataInputStream.readDouble();
        this.d = dataInputStream.readDouble();
        this.c = dataInputStream.readDouble();
        this.e = dataInputStream.readFloat();
        this.f = dataInputStream.readFloat();
        super.a(dataInputStream);
    }

    @Override // defpackage.ig, defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeDouble(this.a);
        dataOutputStream.writeDouble(this.b);
        dataOutputStream.writeDouble(this.d);
        dataOutputStream.writeDouble(this.c);
        dataOutputStream.writeFloat(this.e);
        dataOutputStream.writeFloat(this.f);
        super.a(dataOutputStream);
    }
}
