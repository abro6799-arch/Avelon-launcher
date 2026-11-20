package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import mcport.FastDeflate;

/* JADX INFO: loaded from: classes.dex */
public class qj {
    private static final byte[] a = new byte[4096];
    private final File b;
    private RandomAccessFile c;
    private final int[] d = new int[1024];
    private final int[] e = new int[1024];
    private ArrayList f;
    private int g;
    private long h;

    private void a(String str) {
    }

    private boolean d(int i, int i2) {
        return i < 0 || i >= 32 || i2 < 0 || i2 >= 32;
    }

    public qj(File file) {
        this.h = 0L;
        this.b = file;
        b("REGION LOAD " + file);
        this.g = 0;
        try {
            if (file.exists()) {
                this.h = file.lastModified();
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.c = randomAccessFile;
            if (randomAccessFile.length() < 4096) {
                for (int i = 0; i < 1024; i++) {
                    this.c.writeInt(0);
                }
                for (int i2 = 0; i2 < 1024; i2++) {
                    this.c.writeInt(0);
                }
                this.g += 8192;
            }
            if ((this.c.length() & 4095) != 0) {
                for (int i3 = 0; i3 < (this.c.length() & 4095); i3++) {
                    this.c.write(0);
                }
            }
            int length = ((int) this.c.length()) / 4096;
            this.f = new ArrayList(length);
            for (int i4 = 0; i4 < length; i4++) {
                this.f.add(true);
            }
            this.f.set(0, false);
            this.f.set(1, false);
            this.c.seek(0L);
            for (int i5 = 0; i5 < 1024; i5++) {
                int i6 = this.c.readInt();
                this.d[i5] = i6;
                if (i6 != 0) {
                    int i7 = i6 >> 8;
                    int i8 = i6 & 255;
                    if (i7 + i8 <= this.f.size()) {
                        for (int i9 = 0; i9 < i8; i9++) {
                            this.f.set(i7 + i9, false);
                        }
                    }
                }
            }
            for (int i10 = 0; i10 < 1024; i10++) {
                this.e[i10] = this.c.readInt();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public synchronized int a() {
        int i;
        i = this.g;
        this.g = 0;
        return i;
    }

    private void b(String str) {
        a(str + "\n");
    }

    private void a(String str, int i, int i2, String str2) {
        a("REGION " + str + " " + this.b.getName() + "[" + i + "," + i2 + "] = " + str2);
    }

    private void a(String str, int i, int i2, int i3, String str2) {
        a("REGION " + str + " " + this.b.getName() + "[" + i + "," + i2 + "] " + i3 + "B = " + str2);
    }

    private void b(String str, int i, int i2, String str2) {
        a(str, i, i2, str2 + "\n");
    }

    public synchronized DataInputStream a(int i, int i2) {
        if (d(i, i2)) {
            b("READ", i, i2, "out of bounds");
            return null;
        }
        try {
            int iE = e(i, i2);
            if (iE == 0) {
                return null;
            }
            int i3 = iE >> 8;
            int i4 = iE & 255;
            if (i3 + i4 > this.f.size()) {
                b("READ", i, i2, "invalid sector");
                return null;
            }
            this.c.seek(i3 * 4096);
            int i5 = this.c.readInt();
            if (i5 > i4 * 4096) {
                b("READ", i, i2, "invalid length: " + i5 + " > 4096 * " + i4);
                return null;
            }
            byte b = this.c.readByte();
            if (b == 1) {
                byte[] bArr = new byte[i5 - 1];
                this.c.read(bArr);
                return new DataInputStream(new GZIPInputStream(new ByteArrayInputStream(bArr)));
            }
            if (b == 2) {
                byte[] bArr2 = new byte[i5 - 1];
                this.c.read(bArr2);
                return new DataInputStream(new InflaterInputStream(new ByteArrayInputStream(bArr2)));
            }
            b("READ", i, i2, "unknown version " + ((int) b));
            return null;
        } catch (IOException unused) {
            b("READ", i, i2, "exception");
            return null;
        }
    }

    public DataOutputStream b(int i, int i2) {
        if (d(i, i2)) {
            return null;
        }
        return new DataOutputStream(new FastDeflate(new hz(this, i, i2)));
    }

    protected synchronized void a(int i, int i2, byte[] bArr, int i3) {
        int i4;
        int i5;
        try {
            int iE = e(i, i2);
            int i6 = iE >> 8;
            int i7 = iE & 255;
            int i8 = ((i3 + 5) / 4096) + 1;
            if (i8 >= 256) {
                return;
            }
            if (i6 != 0 && i7 == i8) {
                a("SAVE", i, i2, i3, "rewrite");
                a(i6, bArr, i3);
            } else {
                for (int i9 = 0; i9 < i7; i9++) {
                    this.f.set(i6 + i9, true);
                }
                int iIndexOf = this.f.indexOf(true);
                if (iIndexOf != -1) {
                    int i10 = iIndexOf;
                    i5 = 0;
                    while (iIndexOf < this.f.size()) {
                        if (i5 != 0) {
                            i5 = ((Boolean) this.f.get(iIndexOf)).booleanValue() ? i5 + 1 : 0;
                        } else if (((Boolean) this.f.get(iIndexOf)).booleanValue()) {
                            i10 = iIndexOf;
                            i5 = 1;
                        }
                        if (i5 >= i8) {
                            break;
                        } else {
                            iIndexOf++;
                        }
                    }
                    i4 = i10;
                } else {
                    i4 = iIndexOf;
                    i5 = 0;
                }
                if (i5 >= i8) {
                    a("SAVE", i, i2, i3, "reuse");
                    a(i, i2, (i4 << 8) | i8);
                    for (int i11 = 0; i11 < i8; i11++) {
                        this.f.set(i4 + i11, false);
                    }
                    a(i4, bArr, i3);
                } else {
                    a("SAVE", i, i2, i3, "grow");
                    RandomAccessFile randomAccessFile = this.c;
                    randomAccessFile.seek(randomAccessFile.length());
                    int size = this.f.size();
                    for (int i12 = 0; i12 < i8; i12++) {
                        this.c.write(a);
                        this.f.add(false);
                    }
                    this.g += i8 * 4096;
                    a(size, bArr, i3);
                    a(i, i2, (size << 8) | i8);
                }
            }
            b(i, i2, (int) (System.currentTimeMillis() / 1000));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void a(int i, byte[] bArr, int i2) throws IOException {
        b(" " + i);
        this.c.seek((long) (i * 4096));
        this.c.writeInt(i2 + 1);
        this.c.writeByte(2);
        this.c.write(bArr, 0, i2);
    }

    private int e(int i, int i2) {
        return this.d[i + (i2 * 32)];
    }

    public boolean c(int i, int i2) {
        return e(i, i2) != 0;
    }

    private void a(int i, int i2, int i3) throws IOException {
        int i4 = i + (i2 * 32);
        this.d[i4] = i3;
        this.c.seek(i4 * 4);
        this.c.writeInt(i3);
    }

    private void b(int i, int i2, int i3) throws IOException {
        int i4 = i + (i2 * 32);
        this.e[i4] = i3;
        this.c.seek((i4 * 4) + 4096);
        this.c.writeInt(i3);
    }

    public void b() throws IOException {
        this.c.close();
    }
}
