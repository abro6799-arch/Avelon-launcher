package defpackage;

import java.io.DataInput;
import java.io.DataOutput;

/* JADX INFO: loaded from: classes.dex */
public abstract class ij {
    private String a = null;

    public static String b(byte b) {
        switch (b) {
            case 0:
                return "TAG_End";
            case 1:
                return "TAG_Byte";
            case 2:
                return "TAG_Short";
            case 3:
                return "TAG_Int";
            case 4:
                return "TAG_Long";
            case 5:
                return "TAG_Float";
            case 6:
                return "TAG_Double";
            case 7:
                return "TAG_Byte_Array";
            case 8:
                return "TAG_String";
            case 9:
                return "TAG_List";
            case 10:
                return "TAG_Compound";
            default:
                return "UNKNOWN";
        }
    }

    public abstract byte a();

    abstract void a(DataInput dataInput);

    abstract void a(DataOutput dataOutput);

    public String b() {
        String str = this.a;
        return str == null ? "" : str;
    }

    public ij a(String str) {
        this.a = str;
        return this;
    }

    public static ij b(DataInput dataInput) {
        byte b = dataInput.readByte();
        if (b == 0) {
            return new lh();
        }
        ij ijVarA = a(b);
        ijVarA.a = dataInput.readUTF();
        ijVarA.a(dataInput);
        return ijVarA;
    }

    public static void a(ij ijVar, DataOutput dataOutput) {
        dataOutput.writeByte(ijVar.a());
        if (ijVar.a() == 0) {
            return;
        }
        dataOutput.writeUTF(ijVar.b());
        ijVar.a(dataOutput);
    }

    public static ij a(byte b) {
        switch (b) {
            case 0:
                return new lh();
            case 1:
                return new qp();
            case 2:
                return new ul();
            case 3:
                return new pp();
            case 4:
                return new mi();
            case 5:
                return new p();
            case 6:
                return new sz();
            case 7:
                return new hn();
            case 8:
                return new xb();
            case 9:
                return new sp();
            case 10:
                return new nu();
            default:
                return null;
        }
    }
}
