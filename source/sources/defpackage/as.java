package defpackage;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class as {
    public static nu a(InputStream inputStream) {
        DataInputStream dataInputStream = new DataInputStream(new GZIPInputStream(inputStream));
        try {
            return a((DataInput) dataInputStream);
        } finally {
            dataInputStream.close();
        }
    }

    public static void a(nu nuVar, OutputStream outputStream) {
        DataOutputStream dataOutputStream = new DataOutputStream(new GZIPOutputStream(outputStream));
        try {
            a(nuVar, (DataOutput) dataOutputStream);
        } finally {
            dataOutputStream.close();
        }
    }

    public static nu a(DataInput dataInput) {
        ij ijVarB = ij.b(dataInput);
        if (ijVarB instanceof nu) {
            return (nu) ijVarB;
        }
        throw new IOException("Root tag must be a named compound tag");
    }

    public static void a(nu nuVar, DataOutput dataOutput) {
        ij.a(nuVar, dataOutput);
    }
}
