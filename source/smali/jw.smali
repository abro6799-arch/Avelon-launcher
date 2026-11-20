###### Class defpackage.jw (jw)
.class public Ljw;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 9
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(Lfd;III)Z
    .registers 8

    add-int/lit8 v0, p3, -0x1

    .line 14
    invoke-virtual {p1, p2, v0, p4}, Lfd;->a(III)I

    move-result v1

    iget v2, p0, Ljw;->bn:I

    if-ne v1, v2, :cond_c

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_c
    invoke-virtual {p1, p2, v0, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_18
    invoke-super {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result p1

    return p1
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xb

    return v0
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
    .registers 20

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    int-to-double v3, v0

    int-to-double v5, v1

    int-to-double v7, v2

    add-int/lit8 v0, v0, 0x1

    int-to-double v9, v0

    int-to-float v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    float-to-double v11, v0

    add-int/lit8 v0, v2, 0x1

    int-to-double v13, v0

    move-wide v0, v3

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v10, v13

    .line 21
    invoke-static/range {v0 .. v11}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method
