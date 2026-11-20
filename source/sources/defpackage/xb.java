package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class xb extends ij {
    public String a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 8;
    }

    public xb() {
    }

    public xb(String str) {
        this.a = str;
        if (str == null) {
            throw new IllegalArgumentException("Empty string not allowed");
        }
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a = dataInput.readUTF();
    }

    public String toString() {
        return "" + this.a;
    }
}
