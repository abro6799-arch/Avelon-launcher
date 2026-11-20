###### Class defpackage.em (em)
.class public Lem;
.super Lxw;
.source "SourceFile"


# instance fields
.field private a:Lsn;

.field private o:Lsn;

.field private p:I

.field private q:I

.field private r:F


# direct methods
.method public constructor <init>(Lfd;Lsn;Lsn;F)V
    .registers 21

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    .line 19
    iget-wide v2, v15, Lsn;->aM:D

    iget-wide v4, v15, Lsn;->aN:D

    iget-wide v6, v15, Lsn;->aO:D

    iget-wide v8, v15, Lsn;->aP:D

    iget-wide v10, v15, Lsn;->aQ:D

    iget-wide v12, v15, Lsn;->aR:D

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v13}, Lxw;-><init>(Lfd;DDDDDD)V

    const/4 v0, 0x0

    .line 14
    iput v0, v14, Lem;->p:I

    .line 20
    iput-object v15, v14, Lem;->a:Lsn;

    move-object/from16 v0, p3

    .line 21
    iput-object v0, v14, Lem;->o:Lsn;

    const/4 v0, 0x3

    .line 22
    iput v0, v14, Lem;->q:I

    move/from16 v0, p4

    .line 23
    iput v0, v14, Lem;->r:F

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v10, p2

    .line 27
    iget v1, v0, Lem;->p:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    iget v2, v0, Lem;->q:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v1

    .line 30
    iget-object v2, v0, Lem;->a:Lsn;

    iget-wide v2, v2, Lsn;->aM:D

    .line 31
    iget-object v4, v0, Lem;->a:Lsn;

    iget-wide v4, v4, Lsn;->aN:D

    .line 32
    iget-object v6, v0, Lem;->a:Lsn;

    iget-wide v6, v6, Lsn;->aO:D

    .line 34
    iget-object v8, v0, Lem;->o:Lsn;

    iget-wide v8, v8, Lsn;->bl:D

    iget-object v11, v0, Lem;->o:Lsn;

    iget-wide v11, v11, Lsn;->aM:D

    iget-object v13, v0, Lem;->o:Lsn;

    iget-wide v13, v13, Lsn;->bl:D

    sub-double/2addr v11, v13

    float-to-double v13, v10

    mul-double/2addr v11, v13

    add-double/2addr v8, v11

    .line 35
    iget-object v11, v0, Lem;->o:Lsn;

    iget-wide v11, v11, Lsn;->bm:D

    iget-object v15, v0, Lem;->o:Lsn;

    move-wide/from16 p3, v6

    iget-wide v6, v15, Lsn;->aN:D

    iget-object v15, v0, Lem;->o:Lsn;

    move-wide/from16 p5, v4

    iget-wide v4, v15, Lsn;->bm:D

    sub-double/2addr v6, v4

    mul-double/2addr v6, v13

    add-double/2addr v11, v6

    iget v4, v0, Lem;->r:F

    float-to-double v4, v4

    add-double/2addr v11, v4

    .line 36
    iget-object v4, v0, Lem;->o:Lsn;

    iget-wide v4, v4, Lsn;->bn:D

    iget-object v6, v0, Lem;->o:Lsn;

    iget-wide v6, v6, Lsn;->aO:D

    iget-object v15, v0, Lem;->o:Lsn;

    move-wide/from16 v16, v11

    iget-wide v10, v15, Lsn;->bn:D

    sub-double/2addr v6, v10

    mul-double/2addr v6, v13

    add-double/2addr v4, v6

    sub-double/2addr v8, v2

    float-to-double v6, v1

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    move-wide/from16 v8, p5

    sub-double v11, v16, v8

    mul-double/2addr v11, v6

    add-double/2addr v8, v11

    move-wide/from16 v10, p3

    sub-double/2addr v4, v10

    mul-double/2addr v4, v6

    add-double v6, v10, v4

    .line 42
    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v1

    .line 43
    iget v4, v0, Lem;->bf:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    .line 44
    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v5

    .line 45
    iget-object v10, v0, Lem;->aI:Lfd;

    invoke-virtual {v10, v1, v4, v5}, Lfd;->c(III)F

    move-result v1

    .line 47
    sget-wide v4, Lem;->l:D

    sub-double/2addr v2, v4

    .line 48
    sget-wide v4, Lem;->m:D

    sub-double/2addr v8, v4

    .line 49
    sget-wide v4, Lem;->n:D

    sub-double/2addr v6, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    invoke-static {v1, v1, v1, v4}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 52
    sget-object v1, Lth;->a:Lth;

    iget-object v4, v0, Lem;->a:Lsn;

    double-to-float v2, v2

    float-to-double v10, v2

    double-to-float v2, v8

    float-to-double v8, v2

    double-to-float v2, v6

    float-to-double v12, v2

    iget v14, v4, Lsn;->aS:F

    move-object v2, v4

    move-wide v3, v10

    move-wide v5, v8

    move-wide v7, v12

    move v9, v14

    move/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Lth;->a(Lsn;DDDFF)V

    return-void
.end method

.method public c_()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public w_()V
    .registers 3

    .line 56
    iget v0, p0, Lem;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lem;->p:I

    .line 57
    iget v1, p0, Lem;->q:I

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lem;->K()V

    :cond_d
    return-void
.end method
