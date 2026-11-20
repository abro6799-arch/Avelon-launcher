###### Class defpackage.hu (hu)
.class public Lhu;
.super Lgm;
.source "SourceFile"


# instance fields
.field private a:Lln;


# direct methods
.method public constructor <init>(ILln;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    .line 15
    iput-object p2, p0, Lhu;->a:Lln;

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lhu;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v1, p7

    if-eq v1, v11, :cond_f

    return v10

    :cond_f
    add-int/lit8 v12, p5, 0x1

    move-object/from16 v13, p0

    .line 25
    iget-object v1, v13, Lhu;->a:Lln;

    sget-object v2, Lln;->d:Lln;

    if-ne v1, v2, :cond_1c

    sget-object v1, Luu;->aF:Luu;

    goto :goto_1e

    .line 26
    :cond_1c
    sget-object v1, Luu;->aM:Luu;

    :goto_1e
    move-object v14, v1

    .line 28
    invoke-virtual {v14, v7, v8, v12, v9}, Luu;->a(Lfd;III)Z

    move-result v1

    if-nez v1, :cond_26

    return v10

    :cond_26
    move-object/from16 v1, p2

    .line 30
    iget v1, v1, Lgs;->aS:F

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    if-nez v1, :cond_41

    move v3, v11

    goto :goto_42

    :cond_41
    move v3, v10

    :goto_42
    const/4 v4, -0x1

    if-ne v1, v11, :cond_47

    move v5, v4

    goto :goto_48

    :cond_47
    move v5, v10

    :goto_48
    const/4 v6, 0x2

    if-ne v1, v6, :cond_4c

    move v3, v4

    :cond_4c
    if-ne v1, v2, :cond_4f

    move v5, v11

    :cond_4f
    sub-int v4, v8, v5

    sub-int v6, v9, v3

    .line 40
    invoke-virtual {v7, v4, v12, v6}, Lfd;->h(III)Z

    move-result v15

    add-int/lit8 v10, v12, 0x1

    invoke-virtual {v7, v4, v10, v6}, Lfd;->h(III)Z

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v5, v8

    add-int/2addr v3, v9

    .line 41
    invoke-virtual {v7, v5, v12, v3}, Lfd;->h(III)Z

    move-result v16

    invoke-virtual {v7, v5, v10, v3}, Lfd;->h(III)Z

    move-result v17

    add-int v11, v16, v17

    .line 43
    invoke-virtual {v7, v4, v12, v6}, Lfd;->a(III)I

    move-result v2

    iget v13, v14, Luu;->bn:I

    if-eq v2, v13, :cond_7e

    invoke-virtual {v7, v4, v10, v6}, Lfd;->a(III)I

    move-result v2

    iget v4, v14, Luu;->bn:I

    if-ne v2, v4, :cond_7c

    goto :goto_7e

    :cond_7c
    const/4 v2, 0x0

    goto :goto_7f

    :cond_7e
    :goto_7e
    const/4 v2, 0x1

    .line 44
    :goto_7f
    invoke-virtual {v7, v5, v12, v3}, Lfd;->a(III)I

    move-result v4

    iget v6, v14, Luu;->bn:I

    if-eq v4, v6, :cond_92

    invoke-virtual {v7, v5, v10, v3}, Lfd;->a(III)I

    move-result v3

    iget v4, v14, Luu;->bn:I

    if-ne v3, v4, :cond_90

    goto :goto_92

    :cond_90
    const/4 v3, 0x0

    goto :goto_93

    :cond_92
    :goto_92
    const/4 v3, 0x1

    :goto_93
    if-eqz v2, :cond_98

    if-nez v3, :cond_98

    goto :goto_9a

    :cond_98
    if-le v11, v15, :cond_9c

    :goto_9a
    const/4 v2, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v2, 0x0

    :goto_9d
    if-eqz v2, :cond_a5

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    :cond_a5
    move v11, v1

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, v7, Lfd;->o:Z

    .line 60
    iget v5, v14, Luu;->bn:I

    move-object/from16 v1, p3

    move/from16 v2, p4

    move v3, v12

    move/from16 v4, p6

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lfd;->b(IIIII)Z

    .line 61
    iget v5, v14, Luu;->bn:I

    add-int/lit8 v6, v11, 0x8

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Lfd;->b(IIIII)Z

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v7, Lfd;->o:Z

    .line 63
    iget v1, v14, Luu;->bn:I

    invoke-virtual {v7, v8, v12, v9, v1}, Lfd;->i(IIII)V

    .line 64
    iget v1, v14, Luu;->bn:I

    invoke-virtual {v7, v8, v10, v9, v1}, Lfd;->i(IIII)V

    .line 66
    iget v1, v0, Liz;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Liz;->a:I

    return v2
.end method
