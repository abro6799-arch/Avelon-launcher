package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class st {
    public final eb a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;

    public st(eb ebVar, int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = ebVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008d  */
    public void a(fd fdVar) {
        int i;
        int i2;
        int i3 = this.e;
        int i4 = this.b;
        int i5 = 1;
        if (((i3 - i4) + 1) * ((this.f - this.c) + 1) * ((this.g - this.d) + 1) > 32768) {
            System.out.println("Light too large, skipping!");
            return;
        }
        int i6 = i4;
        while (i6 <= this.e) {
            int i7 = this.d;
            while (i7 <= this.g) {
                int i8 = i6 >> 4;
                int i9 = i7 >> 4;
                boolean zB = fdVar.b(i6, 0, i7, i5);
                if (zB && fdVar.c(i8, i9).h()) {
                    zB = false;
                }
                if (zB) {
                    if (this.c < 0) {
                        this.c = 0;
                    }
                    if (this.f >= 128) {
                        this.f = 127;
                    }
                    int i10 = this.c;
                    while (i10 <= this.f) {
                        int iA = fdVar.a(this.a, i6, i10, i7);
                        int iA2 = fdVar.a(i6, i10, i7);
                        int i11 = uu.q[iA2];
                        if (i11 == 0) {
                            i11 = i5;
                        }
                        if (this.a == eb.Sky) {
                            if (fdVar.o(i6, i10, i7)) {
                                i = 15;
                            } else {
                                i = 0;
                            }
                        } else if (this.a == eb.Block) {
                            i = uu.s[iA2];
                        } else {
                            i = 0;
                        }
                        if (i11 < 15 || i != 0) {
                            int iA3 = fdVar.a(this.a, i6 - 1, i10, i7);
                            int iA4 = fdVar.a(this.a, i6 + 1, i10, i7);
                            int iA5 = fdVar.a(this.a, i6, i10 - 1, i7);
                            int iA6 = fdVar.a(this.a, i6, i10 + 1, i7);
                            int iA7 = fdVar.a(this.a, i6, i10, i7 - 1);
                            int iA8 = fdVar.a(this.a, i6, i10, i7 + 1);
                            if (iA4 > iA3) {
                                iA3 = iA4;
                            }
                            if (iA5 <= iA3) {
                                iA5 = iA3;
                            }
                            if (iA6 <= iA5) {
                                iA6 = iA5;
                            }
                            if (iA7 <= iA6) {
                                iA7 = iA6;
                            }
                            if (iA8 <= iA7) {
                                iA8 = iA7;
                            }
                            i2 = iA8 - i11;
                            if (i2 < 0) {
                                i2 = 0;
                            }
                            if (i > i2) {
                                i2 = i;
                            }
                        } else {
                            i2 = 0;
                        }
                        if (iA != i2) {
                            fdVar.b(this.a, i6, i10, i7, i2);
                            int i12 = i2 - 1;
                            if (i12 < 0) {
                                i12 = 0;
                            }
                            int i13 = i7;
                            int i14 = i12;
                            fdVar.a(this.a, i6 - 1, i10, i13, i14);
                            int i15 = i6;
                            fdVar.a(this.a, i15, i10 - 1, i13, i14);
                            fdVar.a(this.a, i15, i10, i7 - 1, i14);
                            int i16 = i6 + 1;
                            if (i16 >= this.e) {
                                fdVar.a(this.a, i16, i10, i7, i12);
                            }
                            int i17 = i10 + 1;
                            if (i17 >= this.f) {
                                fdVar.a(this.a, i6, i17, i7, i12);
                            }
                            int i18 = i7 + 1;
                            if (i18 >= this.g) {
                                fdVar.a(this.a, i6, i10, i18, i12);
                            }
                        }
                        i10++;
                        i5 = 1;
                    }
                }
                i7++;
                i5 = 1;
            }
            i6++;
            i5 = 1;
        }
    }

    public boolean a(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i;
        int i8 = this.b;
        if (i7 >= i8 && i2 >= this.c && i3 >= this.d && i4 <= this.e && i5 <= this.f && i6 <= this.g) {
            return true;
        }
        if (i7 < i8 - 1) {
            return false;
        }
        int i9 = this.c;
        if (i2 < i9 - 1) {
            return false;
        }
        int i10 = this.d;
        if (i3 < i10 - 1) {
            return false;
        }
        int i11 = this.e;
        if (i4 > i11 + 1) {
            return false;
        }
        int i12 = this.f;
        if (i5 > i12 + 1) {
            return false;
        }
        int i13 = this.g;
        if (i6 > i13 + 1) {
            return false;
        }
        int i14 = i11 - i8;
        int i15 = i12 - i9;
        int i16 = i13 - i10;
        if (i7 > i8) {
            i7 = i8;
        }
        if (i2 <= i9) {
            i9 = i2;
        }
        if (i3 <= i10) {
            i10 = i3;
        }
        if (i4 >= i11) {
            i11 = i4;
        }
        if (i5 >= i12) {
            i12 = i5;
        }
        if (i6 >= i13) {
            i13 = i6;
        }
        if ((((i11 - i7) * (i12 - i9)) * (i13 - i10)) - ((i14 * i15) * i16) > 2) {
            return false;
        }
        this.b = i7;
        this.c = i9;
        this.d = i10;
        this.e = i11;
        this.f = i12;
        this.g = i13;
        return true;
    }
}
