package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class pp extends ij {
    public int a;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 3;
    }

    public pp() {
    }

    public pp(int i) {
        this.a = i;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.a);
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) {
        this.a = dataInput.readInt();
    }

    public String toString() {
        return "" + this.a;
    }
}
