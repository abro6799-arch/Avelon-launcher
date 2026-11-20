package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public class ef extends ki {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public byte[] g;
    private int h;

    public ef() {
        this.k = true;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) throws IOException {
        this.a = dataInputStream.readInt();
        this.b = dataInputStream.readShort();
        this.c = dataInputStream.readInt();
        this.d = dataInputStream.read() + 1;
        this.e = dataInputStream.read() + 1;
        this.f = dataInputStream.read() + 1;
        int i = dataInputStream.readInt();
        this.h = i;
        byte[] bArr = new byte[i];
        dataInputStream.readFully(bArr);
        this.g = new byte[(((this.d * this.e) * this.f) * 5) / 2];
        Inflater inflater = new Inflater();
        inflater.setInput(bArr);
        try {
            try {
                inflater.inflate(this.g);
                inflater.end();
            } catch (DataFormatException unused) {
                throw new IOException("Bad compressed data format");
            }
        } catch (Throwable th) {
            inflater.end();
            throw th;
        }
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.a);
        dataOutputStream.writeShort(this.b);
        dataOutputStream.writeInt(this.c);
        dataOutputStream.write(this.d - 1);
        dataOutputStream.write(this.e - 1);
        dataOutputStream.write(this.f - 1);
        dataOutputStream.writeInt(this.h);
        dataOutputStream.write(this.g, 0, this.h);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        return this.h + 17;
    }
}
