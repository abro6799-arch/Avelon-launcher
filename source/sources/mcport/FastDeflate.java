package mcport;

import java.io.OutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class FastDeflate extends DeflaterOutputStream {
    public FastDeflate(OutputStream outputStream) {
        super(outputStream, new Deflater(1));
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } finally {
            ((DeflaterOutputStream) this).def.end();
        }
    }
}
