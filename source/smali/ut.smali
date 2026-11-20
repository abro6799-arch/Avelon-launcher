###### Class defpackage.ut (ut)
.class public Lut;
.super Lrw;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 16
    sget-object v0, Lln;->B:Lln;

    invoke-direct {p0, p1, v0}, Lrw;-><init>(ILln;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    invoke-virtual {p0, p1}, Lut;->c(F)Luu;

    return-void
.end method

.method public static a(IIIZZ)Low;
    .registers 12

    .line 101
    new-instance v6, Luk;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Luk;-><init>(IIIZZ)V

    return-object v6
.end method

.method private c(Lxp;III)Luk;
    .registers 5

    .line 165
    invoke-interface {p1, p2, p3, p4}, Lxp;->b(III)Low;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 166
    instance-of p2, p1, Luk;

    if-eqz p2, :cond_d

    .line 167
    check-cast p1, Luk;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIIIFI)Leq;
    .registers 10

    const/4 v0, 0x0

    if-eqz p5, :cond_5c

    .line 145
    iget v1, p0, Lut;->bn:I

    if-ne p5, v1, :cond_8

    goto :goto_5c

    .line 148
    :cond_8
    sget-object v1, Luu;->m:[Luu;

    aget-object p5, v1, p5

    invoke-virtual {p5, p1, p2, p3, p4}, Luu;->e(Lfd;III)Leq;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v0

    .line 155
    :cond_13
    iget-wide p2, p1, Leq;->a:D

    sget-object p4, Lwj;->b:[I

    aget p4, p4, p7

    int-to-float p4, p4

    mul-float/2addr p4, p6

    float-to-double p4, p4

    sub-double/2addr p2, p4

    iput-wide p2, p1, Leq;->a:D

    .line 156
    iget-wide p2, p1, Leq;->d:D

    sget-object p4, Lwj;->b:[I

    aget p4, p4, p7

    int-to-float p4, p4

    mul-float/2addr p4, p6

    float-to-double p4, p4

    sub-double/2addr p2, p4

    iput-wide p2, p1, Leq;->d:D

    .line 157
    iget-wide p2, p1, Leq;->b:D

    sget-object p4, Lwj;->c:[I

    aget p4, p4, p7

    int-to-float p4, p4

    mul-float/2addr p4, p6

    float-to-double p4, p4

    sub-double/2addr p2, p4

    iput-wide p2, p1, Leq;->b:D

    .line 158
    iget-wide p2, p1, Leq;->e:D

    sget-object p4, Lwj;->c:[I

    aget p4, p4, p7

    int-to-float p4, p4

    mul-float/2addr p4, p6

    float-to-double p4, p4

    sub-double/2addr p2, p4

    iput-wide p2, p1, Leq;->e:D

    .line 159
    iget-wide p2, p1, Leq;->c:D

    sget-object p4, Lwj;->d:[I

    aget p4, p4, p7

    int-to-float p4, p4

    mul-float/2addr p4, p6

    float-to-double p4, p4

    sub-double/2addr p2, p4

    iput-wide p2, p1, Leq;->c:D

    .line 160
    iget-wide p2, p1, Leq;->f:D

    sget-object p4, Lwj;->d:[I

    aget p4, p4, p7

    int-to-float p4, p4

    mul-float/2addr p4, p6

    float-to-double p4, p4

    sub-double/2addr p2, p4

    iput-wide p2, p1, Leq;->f:D

    return-object p1

    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public a(Lfd;IIIIF)V
    .registers 14

    .line 82
    iget-boolean p5, p1, Lfd;->B:Z

    if-eqz p5, :cond_5

    return-void

    .line 84
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lut;->c(Lxp;III)Luk;

    move-result-object p5

    if-nez p5, :cond_c

    return-void

    .line 89
    :cond_c
    sget-object p6, Luu;->m:[Luu;

    invoke-virtual {p5}, Luk;->a()I

    move-result v0

    aget-object v1, p6, v0

    invoke-virtual {p5}, Luk;->e()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Luu;->g(Lfd;IIII)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 9

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lut;->c(Lxp;III)Luk;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 123
    sget-object v1, Luu;->m:[Luu;

    invoke-virtual {v0}, Luk;->a()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_72

    if-ne v1, p0, :cond_13

    goto :goto_72

    .line 127
    :cond_13
    invoke-virtual {v1, p1, p2, p3, p4}, Luu;->a(Lxp;III)V

    const/4 p1, 0x0

    .line 129
    invoke-virtual {v0, p1}, Luk;->a(F)F

    move-result p1

    .line 130
    invoke-virtual {v0}, Luk;->b()Z

    move-result p2

    if-eqz p2, :cond_25

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    .line 133
    :cond_25
    invoke-virtual {v0}, Luk;->d()I

    move-result p2

    .line 134
    iget-wide p3, v1, Luu;->bs:D

    sget-object v0, Lwj;->b:[I

    aget v0, v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v2, v0

    sub-double/2addr p3, v2

    iput-wide p3, p0, Lut;->bs:D

    .line 135
    iget-wide p3, v1, Luu;->bt:D

    sget-object v0, Lwj;->c:[I

    aget v0, v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v2, v0

    sub-double/2addr p3, v2

    iput-wide p3, p0, Lut;->bt:D

    .line 136
    iget-wide p3, v1, Luu;->bu:D

    sget-object v0, Lwj;->d:[I

    aget v0, v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v2, v0

    sub-double/2addr p3, v2

    iput-wide p3, p0, Lut;->bu:D

    .line 137
    iget-wide p3, v1, Luu;->bv:D

    sget-object v0, Lwj;->b:[I

    aget v0, v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v2, v0

    sub-double/2addr p3, v2

    iput-wide p3, p0, Lut;->bv:D

    .line 138
    iget-wide p3, v1, Luu;->bw:D

    sget-object v0, Lwj;->c:[I

    aget v0, v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v2, v0

    sub-double/2addr p3, v2

    iput-wide p3, p0, Lut;->bw:D

    .line 139
    iget-wide p3, v1, Luu;->bx:D

    sget-object v0, Lwj;->d:[I

    aget p2, v0, p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-double p1, p2

    sub-double/2addr p3, p1

    iput-wide p3, p0, Lut;->bx:D

    nop

    :cond_72
    :goto_72
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIII)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 7

    .line 67
    iget-boolean p5, p1, Lfd;->B:Z

    const/4 v0, 0x0

    if-nez p5, :cond_10

    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object p5

    if-nez p5, :cond_10

    .line 69
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    const/4 p1, 0x1

    return p1

    :cond_10
    return v0
.end method

.method protected a_()Low;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public b(Lfd;III)V
    .registers 7

    .line 31
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 32
    instance-of v1, v0, Luk;

    if-eqz v1, :cond_10

    .line 33
    check-cast v0, Luk;

    invoke-virtual {v0}, Luk;->l()V

    goto :goto_13

    .line 35
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lrw;->b(Lfd;III)V

    :goto_13
    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 6

    .line 94
    iget-boolean p5, p1, Lfd;->B:Z

    if-nez p5, :cond_7

    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    :cond_7
    return-void
.end method

.method public c(Lfd;III)V
    .registers 5

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 15

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lut;->c(Lxp;III)Luk;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Luk;->a(F)F

    move-result v1

    .line 113
    invoke-virtual {v0}, Luk;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    :cond_17
    move v8, v1

    .line 116
    invoke-virtual {v0}, Luk;->a()I

    move-result v7

    invoke-virtual {v0}, Luk;->d()I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v9}, Lut;->a(Lfd;IIIIFI)Leq;

    move-result-object p1

    return-object p1
.end method
