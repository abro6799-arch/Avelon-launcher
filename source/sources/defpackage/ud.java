package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ud {
    private static final HashMap a;
    private final Map b = new HashMap();
    private boolean c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(Byte.class, 0);
        map.put(Short.class, 1);
        map.put(Integer.class, 2);
        map.put(Float.class, 3);
        map.put(String.class, 4);
        map.put(iz.class, 5);
        map.put(br.class, 6);
    }

    public void a(int i, Object obj) {
        Integer num = (Integer) a.get(obj.getClass());
        if (num == null) {
            throw new IllegalArgumentException("Unknown data type: " + obj.getClass());
        }
        if (i > 31) {
            throw new IllegalArgumentException("Data value id is too big with " + i + "! (Max is 31)");
        }
        if (this.b.containsKey(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Duplicate id value for " + i + "!");
        }
        this.b.put(Integer.valueOf(i), new ma(num.intValue(), i, obj));
    }

    public byte a(int i) {
        return ((Byte) ((ma) this.b.get(Integer.valueOf(i))).b()).byteValue();
    }

    public int b(int i) {
        return ((Integer) ((ma) this.b.get(Integer.valueOf(i))).b()).intValue();
    }

    public String c(int i) {
        return (String) ((ma) this.b.get(Integer.valueOf(i))).b();
    }

    public void b(int i, Object obj) {
        ma maVar = (ma) this.b.get(Integer.valueOf(i));
        if (obj.equals(maVar.b())) {
            return;
        }
        maVar.a(obj);
        maVar.a(true);
        this.c = true;
    }

    public static void a(List list, DataOutputStream dataOutputStream) throws IOException {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                a(dataOutputStream, (ma) it.next());
            }
        }
        dataOutputStream.writeByte(127);
    }

    public void a(DataOutputStream dataOutputStream) throws IOException {
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            a(dataOutputStream, (ma) it.next());
        }
        dataOutputStream.writeByte(127);
    }

    private static void a(DataOutputStream dataOutputStream, ma maVar) throws IOException {
        dataOutputStream.writeByte(((maVar.c() << 5) | (maVar.a() & 31)) & 255);
        switch (maVar.c()) {
            case 0:
                dataOutputStream.writeByte(((Byte) maVar.b()).byteValue());
                break;
            case 1:
                dataOutputStream.writeShort(((Short) maVar.b()).shortValue());
                break;
            case 2:
                dataOutputStream.writeInt(((Integer) maVar.b()).intValue());
                break;
            case 3:
                dataOutputStream.writeFloat(((Float) maVar.b()).floatValue());
                break;
            case 4:
                ki.a((String) maVar.b(), dataOutputStream);
                break;
            case 5:
                iz izVar = (iz) maVar.b();
                dataOutputStream.writeShort(izVar.a().bf);
                dataOutputStream.writeByte(izVar.a);
                dataOutputStream.writeShort(izVar.i());
                break;
            case 6:
                br brVar = (br) maVar.b();
                dataOutputStream.writeInt(brVar.a);
                dataOutputStream.writeInt(brVar.b);
                dataOutputStream.writeInt(brVar.c);
                break;
        }
    }

    public static List a(DataInputStream dataInputStream) throws IOException {
        ma maVar;
        byte b = dataInputStream.readByte();
        ArrayList arrayList = null;
        while (b != 127) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            int i = (b & 224) >> 5;
            int i2 = b & 31;
            switch (i) {
                case 0:
                    maVar = new ma(i, i2, Byte.valueOf(dataInputStream.readByte()));
                    break;
                case 1:
                    maVar = new ma(i, i2, Short.valueOf(dataInputStream.readShort()));
                    break;
                case 2:
                    maVar = new ma(i, i2, Integer.valueOf(dataInputStream.readInt()));
                    break;
                case 3:
                    maVar = new ma(i, i2, Float.valueOf(dataInputStream.readFloat()));
                    break;
                case 4:
                    maVar = new ma(i, i2, ki.a(dataInputStream, 64));
                    break;
                case 5:
                    maVar = new ma(i, i2, new iz(dataInputStream.readShort(), dataInputStream.readByte(), dataInputStream.readShort()));
                    break;
                case 6:
                    maVar = new ma(i, i2, new br(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readInt()));
                    break;
                default:
                    maVar = null;
                    break;
            }
            arrayList.add(maVar);
            b = dataInputStream.readByte();
        }
        return arrayList;
    }

    public void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ma maVar = (ma) it.next();
            ma maVar2 = (ma) this.b.get(Integer.valueOf(maVar.a()));
            if (maVar2 != null) {
                maVar2.a(maVar.b());
            }
        }
    }
}
