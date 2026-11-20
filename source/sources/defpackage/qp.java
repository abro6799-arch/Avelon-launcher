package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class qp extends ij {
    public byte a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 1;
    }

    public qp() {
    }

    public qp(byte b) {
        this.a = b;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a = dataInput.readByte();
    }

    public String toString() {
        return "" + ((int) this.a);
    }
}
