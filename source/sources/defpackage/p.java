package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class p extends ij {
    public float a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 5;
    }

    public p() {
    }

    public p(float f) {
        this.a = f;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeFloat(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a = dataInput.readFloat();
    }

    public String toString() {
        return "" + this.a;
    }
}
