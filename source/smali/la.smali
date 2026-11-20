###### Class defpackage.la (la)
.class public Lla;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILbu;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lla;->bg:I

    .line 11
    invoke-virtual {p2}, Lbu;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lla;->e(I)Lgm;

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 24

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    .line 16
    invoke-virtual/range {p3 .. p6}, Lfd;->a(III)I

    move-result v0

    add-int/lit8 v1, v12, 0x1

    .line 18
    invoke-virtual {v10, v11, v1, v13}, Lfd;->a(III)I

    move-result v1

    if-eqz p7, :cond_1c

    if-nez v1, :cond_1c

    .line 20
    sget-object v1, Luu;->v:Lwp;

    iget v1, v1, Lwp;->bn:I

    if-eq v0, v1, :cond_22

    :cond_1c
    sget-object v1, Luu;->w:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_6b

    .line 21
    :cond_22
    sget-object v14, Luu;->aB:Luu;

    int-to-float v0, v11

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-double v2, v0

    int-to-float v0, v12

    add-float/2addr v0, v1

    float-to-double v4, v0

    int-to-float v0, v13

    add-float/2addr v0, v1

    float-to-double v6, v0

    .line 22
    iget-object v0, v14, Luu;->by:Lct;

    invoke-virtual {v0}, Lct;->d()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v14, Luu;->by:Lct;

    invoke-virtual {v0}, Lct;->b()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    iget-object v0, v14, Luu;->by:Lct;

    invoke-virtual {v0}, Lct;->c()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v15, v0, v1

    move-object/from16 v0, p3

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v8

    move v8, v9

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 24
    iget-boolean v0, v10, Lfd;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    return v1

    .line 25
    :cond_5e
    iget v0, v14, Luu;->bn:I

    invoke-virtual {v10, v11, v12, v13, v0}, Lfd;->f(IIII)Z

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 26
    invoke-virtual {v0, v1, v2}, Liz;->a(ILsn;)V

    return v1

    :cond_6b
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
