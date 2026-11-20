package defpackage;

import java.io.IOException;
import java.io.PushbackReader;
import java.io.Reader;

/* JADX INFO: loaded from: classes.dex */
final class lj implements et {
    private final PushbackReader a;
    private int b = 0;
    private int c = 1;
    private boolean d = false;

    public lj(Reader reader) {
        this.a = new PushbackReader(reader);
    }

    public void a(char c) throws IOException {
        int i = this.b - 1;
        this.b = i;
        if (i < 0) {
            this.b = 0;
        }
        this.a.unread(c);
    }

    public void a(char[] cArr) {
        int length = this.b - cArr.length;
        this.b = length;
        if (length < 0) {
            this.b = 0;
        }
    }

    public int c() throws IOException {
        int i = this.a.read();
        a(i);
        return i;
    }

    public int b(char[] cArr) {
        int i = this.a.read(cArr);
        for (char c : cArr) {
            a((int) c);
        }
        return i;
    }

    private void a(int i) {
        if (13 == i) {
            this.b = 0;
            this.c++;
            this.d = true;
        } else {
            if (10 == i && !this.d) {
                this.b = 0;
                this.c++;
            } else {
                this.b++;
            }
            this.d = false;
        }
    }

    @Override // defpackage.et
    public int a() {
        return this.b;
    }

    @Override // defpackage.et
    public int b() {
        return this.c;
    }
}
