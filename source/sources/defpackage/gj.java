package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class gj extends ki {
    public int a;
    public int b;
    public int c;
    public int d;

    @Override // defpackage.ki
    public int a() {
        return 10;
    }

    public gj() {
    }

    public gj(sn snVar) {
        this(snVar.aD, snVar.aP, snVar.aQ, snVar.aR);
    }

    public gj(int i, double d, double d2, double d3) {
        this.a = i;
        d = d < -3.9d ? -3.9d : d;
        d2 = d2 < -3.9d ? -3.9d : d2;
        d3 = d3 < -3.9d ? -3.9d : d3;
        d = d > 3.9d ? 3.9d : d;
        d2 = d2 > 3.9d ? 3.9d : d2;
        d3 = d3 > 3.9d ? 3.9d : d3;
        this.b = (int) (d * 8000.0d);
        this.c = (int) (d2 * 8000.0d);
        this.d = (int) (d3 * 8000.0d);
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readShort();
        this.c = dataInputStream.readShort();
        this.d = dataInputStream.readShort();
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeShort(this.b);
        dataOutputStream.writeShort(this.c);
        dataOutputStream.writeShort(this.d);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }
}
