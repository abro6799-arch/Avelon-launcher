package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class sz extends ij {
    public double a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 6;
    }

    public sz() {
    }

    public sz(double d) {
        this.a = d;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeDouble(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a = dataInput.readDouble();
    }

    public String toString() {
        return "" + this.a;
    }
}
