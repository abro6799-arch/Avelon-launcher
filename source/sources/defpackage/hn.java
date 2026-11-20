package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class hn extends ij {
    public byte[] a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 7;
    }

    public hn() {
    }

    public hn(byte[] bArr) {
        this.a = bArr;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.a.length);
        dataOutput.write(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) throws IOException {
        byte[] bArr = new byte[dataInput.readInt()];
        this.a = bArr;
        dataInput.readFully(bArr);
    }

    public String toString() {
        return "[" + this.a.length + " bytes]";
    }
}
