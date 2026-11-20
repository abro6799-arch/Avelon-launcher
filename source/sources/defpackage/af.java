package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class af extends ig {
    @Override // defpackage.ig, defpackage.ki
    public int a() {
        return 33;
    }

    public af() {
        this.h = true;
    }

    public af(double d, double d2, double d3, double d4, boolean z) {
        this.a = d;
        this.b = d2;
        this.d = d3;
        this.c = d4;
        this.g = z;
        this.h = true;
    }

    @Override // defpackage.ig, defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readDouble();
        this.b = dataInputStream.readDouble();
        this.d = dataInputStream.readDouble();
        this.c = dataInputStream.readDouble();
        super.a(dataInputStream);
    }

    @Override // defpackage.ig, defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeDouble(this.a);
        dataOutputStream.writeDouble(this.b);
        dataOutputStream.writeDouble(this.d);
        dataOutputStream.writeDouble(this.c);
        super.a(dataOutputStream);
    }
}
