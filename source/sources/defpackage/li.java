package defpackage;

import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class li extends lm {
    @Override // defpackage.lm
    public int a(int i, int i2, int i3) {
        return 0;
    }

    @Override // defpackage.lm
    public int a(eb ebVar, int i, int i2, int i3) {
        return 0;
    }

    @Override // defpackage.lm
    public void a() {
    }

    @Override // defpackage.lm
    public void a(int i, int i2, int i3, ow owVar) {
    }

    @Override // defpackage.lm
    public void a(eb ebVar, int i, int i2, int i3, int i4) {
    }

    @Override // defpackage.lm
    public void a(Class cls, eq eqVar, List list) {
    }

    @Override // defpackage.lm
    public void a(ow owVar) {
    }

    @Override // defpackage.lm
    public void a(sn snVar) {
    }

    @Override // defpackage.lm
    public void a(sn snVar, int i) {
    }

    @Override // defpackage.lm
    public void a(sn snVar, eq eqVar, List list) {
    }

    @Override // defpackage.lm
    public boolean a(int i, int i2, int i3, int i4) {
        return true;
    }

    @Override // defpackage.lm
    public boolean a(int i, int i2, int i3, int i4, int i5) {
        return true;
    }

    @Override // defpackage.lm
    public boolean a(boolean z) {
        return false;
    }

    @Override // defpackage.lm
    public int b(int i, int i2) {
        return 0;
    }

    @Override // defpackage.lm
    public int b(int i, int i2, int i3) {
        return 0;
    }

    @Override // defpackage.lm
    public void b() {
    }

    @Override // defpackage.lm
    public void b(int i, int i2, int i3, int i4) {
    }

    @Override // defpackage.lm
    public void b(sn snVar) {
    }

    @Override // defpackage.lm
    public int c(int i, int i2, int i3, int i4) {
        return 0;
    }

    @Override // defpackage.lm
    public void c() {
    }

    @Override // defpackage.lm
    public boolean c(int i, int i2, int i3) {
        return false;
    }

    @Override // defpackage.lm
    public ow d(int i, int i2, int i3) {
        return null;
    }

    @Override // defpackage.lm
    public void d() {
    }

    @Override // defpackage.lm
    public void e() {
    }

    @Override // defpackage.lm
    public void e(int i, int i2, int i3) {
    }

    @Override // defpackage.lm
    public void f() {
    }

    @Override // defpackage.lm
    public void g() {
    }

    @Override // defpackage.lm
    public boolean h() {
        return true;
    }

    public li(fd fdVar, int i, int i2) {
        super(fdVar, i, i2);
        this.p = true;
    }

    public li(fd fdVar, byte[] bArr, int i, int i2) {
        super(fdVar, bArr, i, i2);
        this.p = true;
    }

    @Override // defpackage.lm
    public boolean a(int i, int i2) {
        return i == this.j && i2 == this.k;
    }

    @Override // defpackage.lm
    public int a(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = (i4 - i) * (i5 - i2) * (i6 - i3);
        return i8 + ((i8 / 2) * 3);
    }

    @Override // defpackage.lm
    public Random a(long j) {
        return new Random(j ^ ((((this.d.s() + ((long) ((this.j * this.j) * 4987142))) + ((long) (this.j * 5947611))) + (((long) (this.k * this.k)) * 4392871)) + ((long) (this.k * 389711))));
    }
}
