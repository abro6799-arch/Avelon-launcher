package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class rm extends ki {
    public double a;
    public double b;
    public double c;
    public float d;
    public Set e;

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readDouble();
        this.b = dataInputStream.readDouble();
        this.c = dataInputStream.readDouble();
        this.d = dataInputStream.readFloat();
        int i = dataInputStream.readInt();
        this.e = new HashSet();
        int i2 = (int) this.a;
        int i3 = (int) this.b;
        int i4 = (int) this.c;
        for (int i5 = 0; i5 < i; i5++) {
            this.e.add(new wf(dataInputStream.readByte() + i2, dataInputStream.readByte() + i3, dataInputStream.readByte() + i4));
        }
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeDouble(this.a);
        dataOutputStream.writeDouble(this.b);
        dataOutputStream.writeDouble(this.c);
        dataOutputStream.writeFloat(this.d);
        dataOutputStream.writeInt(this.e.size());
        int i = (int) this.a;
        int i2 = (int) this.b;
        int i3 = (int) this.c;
        for (wf wfVar : this.e) {
            int i4 = wfVar.a - i;
            int i5 = wfVar.b - i2;
            int i6 = wfVar.c - i3;
            dataOutputStream.writeByte(i4);
            dataOutputStream.writeByte(i5);
            dataOutputStream.writeByte(i6);
        }
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        return (this.e.size() * 3) + 32;
    }
}
