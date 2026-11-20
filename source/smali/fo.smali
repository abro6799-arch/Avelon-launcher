###### Class defpackage.fo (fo)
.class public Lfo;
.super Lrw;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 31
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, p2, v0}, Lrw;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .line 35
    iget v0, p0, Lfo;->bm:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lfd;IIIIF)V
    .registers 8

    .line 84
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    .line 85
    :cond_5
    invoke-super/range {p0 .. p6}, Lrw;->a(Lfd;IIIIF)V

    return-void
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 6

    .line 39
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    if-nez p5, :cond_8

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lfo;->b_(Lfd;III)V

    const/4 p1, 0x1

    return p1
.end method

.method protected a_()Low;
    .registers 2

    .line 89
    new-instance v0, Leg;

    invoke-direct {v0}, Leg;-><init>()V

    return-object v0
.end method

.method public b(Lfd;III)V
    .registers 5

    .line 79
    invoke-virtual {p0, p1, p2, p3, p4}, Lfo;->b_(Lfd;III)V

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Lrw;->b(Lfd;III)V

    return-void
.end method

.method public b_(Lfd;III)V
    .registers 23

    move-object/from16 v9, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 55
    iget-boolean v0, v9, Lfd;->B:Z

    if-eqz v0, :cond_d

    return-void

    .line 57
    :cond_d
    invoke-virtual/range {p1 .. p4}, Lfd;->b(III)Low;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Leg;

    .line 58
    iget v11, v10, Leg;->a:I

    if-nez v11, :cond_19

    return-void

    :cond_19
    const/16 v1, 0x3ed

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 62
    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {v9, v0, v6, v7, v8}, Lfd;->a(Ljava/lang/String;III)V

    const/4 v0, 0x0

    .line 64
    iput v0, v10, Leg;->a:I

    .line 65
    invoke-virtual {v10}, Leg;->y_()V

    .line 66
    invoke-virtual {v9, v6, v7, v8, v0}, Lfd;->d(IIII)V

    .line 70
    iget-object v1, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-double v3, v1

    const v1, 0x3e99999a    # 0.3f

    float-to-double v12, v1

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v12

    add-double/2addr v3, v14

    .line 71
    iget-object v1, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-double v0, v1

    const-wide v16, 0x3fc999999999999aL    # 0.2

    mul-double v12, v12, v16

    add-double/2addr v0, v12

    const-wide v12, 0x3fe3333333333333L    # 0.6

    add-double/2addr v0, v12

    .line 72
    iget-object v10, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    mul-float/2addr v10, v2

    float-to-double v12, v10

    add-double/2addr v12, v14

    .line 73
    new-instance v10, Lhl;

    int-to-double v14, v6

    add-double v2, v14, v3

    int-to-double v6, v7

    add-double/2addr v6, v0

    int-to-double v0, v8

    add-double/2addr v12, v0

    new-instance v8, Liz;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v8, v11, v0, v1}, Liz;-><init>(III)V

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v4, v6

    move-wide v6, v12

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    const/16 v0, 0xa

    .line 74
    iput v0, v10, Lhl;->c:I

    .line 75
    invoke-virtual {v9, v10}, Lfd;->b(Lsn;)Z

    return-void
.end method

.method public f(Lfd;IIII)V
    .registers 7

    .line 45
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    .line 47
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object v0

    check-cast v0, Leg;

    .line 48
    iput p5, v0, Leg;->a:I

    .line 49
    invoke-virtual {v0}, Leg;->y_()V

    const/4 p5, 0x1

    .line 51
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    return-void
.end method
