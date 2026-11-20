package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class sp extends ij {
    private List a = new ArrayList();
    private byte b;

    @Override // defpackage.ij
    public byte a() {
        return (byte) 9;
    }

    @Override // defpackage.ij
    void a(DataOutput dataOutput) throws IOException {
        if (this.a.size() > 0) {
            this.b = ((ij) this.a.get(0)).a();
        } else {
            this.b = (byte) 1;
        }
        dataOutput.writeByte(this.b);
        dataOutput.writeInt(this.a.size());
        for (int i = 0; i < this.a.size(); i++) {
            ((ij) this.a.get(i)).a(dataOutput);
        }
    }

    @Override // defpackage.ij
    void a(DataInput dataInput) throws IOException {
        this.b = dataInput.readByte();
        int i = dataInput.readInt();
        this.a = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            ij ijVarA = ij.a(this.b);
            ijVarA.a(dataInput);
            this.a.add(ijVarA);
        }
    }

    public String toString() {
        return "" + this.a.size() + " entries of type " + ij.b(this.b);
    }

    public void a(ij ijVar) {
        this.b = ijVar.a();
        this.a.add(ijVar);
    }

    public ij a(int i) {
        return (ij) this.a.get(i);
    }

    public int c() {
        return this.a.size();
    }
}
