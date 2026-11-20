package defpackage;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
class hz extends ByteArrayOutputStream {
    final /* synthetic */ qj a;
    private int b;
    private int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hz(qj qjVar, int i, int i2) {
        super(8096);
        this.a = qjVar;
        this.b = i;
        this.c = i2;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.a(this.b, this.c, this.buf, this.count);
    }
}
