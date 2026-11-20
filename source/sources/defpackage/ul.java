package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ul extends ij {
    public short a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 2;
    }

    public ul() {
    }

    public ul(short s) {
        this.a = s;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeShort(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a = dataInput.readShort();
    }

    public String toString() {
        return "" + ((int) this.a);
    }
}
