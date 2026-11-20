package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class mi extends ij {
    public long a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 4;
    }

    public mi() {
    }

    public mi(long j) {
        this.a = j;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a = dataInput.readLong();
    }

    public String toString() {
        return "" + this.a;
    }
}
