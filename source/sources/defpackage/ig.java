package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ig extends ki {
    public double a;
    public double b;
    public double c;
    public double d;
    public float e;
    public float f;
    public boolean g;
    public boolean h;
    public boolean i;

    @Override // defpackage.ki
    public int a() {
        return 1;
    }

    public ig() {
    }

    public ig(boolean z) {
        this.g = z;
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.g = dataInputStream.read() != 0;
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.g ? 1 : 0);
    }
}
