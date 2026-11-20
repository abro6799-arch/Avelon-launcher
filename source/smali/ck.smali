###### Class defpackage.ck (ck)
.class public Lck;
.super Lgm;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    add-int/lit16 p1, p1, 0x100

    .line 12
    iput p1, p0, Lck;->a:I

    .line 13
    sget-object v0, Luu;->m:[Luu;

    aget-object p1, v0, p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Luu;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lck;->c(I)Lgm;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 63
    sget-object v0, Luu;->m:[Luu;

    iget v1, p0, Lck;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Luu;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Liz;)Ljava/lang/String;
    .registers 3

    .line 58
    sget-object p1, Luu;->m:[Luu;

    iget v0, p0, Lck;->a:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Luu;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    .line 21
    invoke-virtual/range {p3 .. p6}, Lfd;->a(III)I

    move-result v3

    sget-object v4, Luu;->aT:Luu;

    iget v4, v4, Luu;->bn:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1a

    move/from16 v7, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move v2, v5

    goto :goto_3f

    :cond_1a
    if-nez v2, :cond_1f

    add-int/lit8 v3, p5, -0x1

    goto :goto_21

    :cond_1f
    move/from16 v3, p5

    :goto_21
    if-ne v2, v6, :cond_25

    add-int/lit8 v3, v3, 0x1

    :cond_25
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2b

    add-int/lit8 v4, p6, -0x1

    goto :goto_2d

    :cond_2b
    move/from16 v4, p6

    :goto_2d
    const/4 v7, 0x3

    if-ne v2, v7, :cond_32

    add-int/lit8 v4, v4, 0x1

    :cond_32
    const/4 v7, 0x4

    if-ne v2, v7, :cond_38

    add-int/lit8 v7, p4, -0x1

    goto :goto_3a

    :cond_38
    move/from16 v7, p4

    :goto_3a
    const/4 v8, 0x5

    if-ne v2, v8, :cond_3f

    add-int/lit8 v7, v7, 0x1

    .line 32
    :cond_3f
    :goto_3f
    iget v8, v1, Liz;->a:I

    if-nez v8, :cond_44

    return v5

    :cond_44
    const/16 v8, 0x7f

    if-ne v3, v8, :cond_57

    .line 35
    sget-object v8, Luu;->m:[Luu;

    iget v9, v0, Lck;->a:I

    aget-object v8, v8, v9

    iget-object v8, v8, Luu;->bA:Lln;

    invoke-virtual {v8}, Lln;->a()Z

    move-result v8

    if-eqz v8, :cond_57

    return v5

    .line 37
    :cond_57
    iget v9, v0, Lck;->a:I

    const/4 v13, 0x0

    move-object/from16 v8, p3

    move v10, v7

    move v11, v3

    move v12, v4

    move v14, v2

    invoke-virtual/range {v8 .. v14}, Lfd;->a(IIIIZI)Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 38
    sget-object v5, Luu;->m:[Luu;

    iget v12, v0, Lck;->a:I

    aget-object v5, v5, v12

    .line 39
    invoke-virtual/range {p1 .. p1}, Liz;->i()I

    move-result v8

    invoke-virtual {v0, v8}, Lck;->b(I)I

    move-result v13

    move-object/from16 v8, p3

    move v9, v7

    move v10, v3

    move v11, v4

    invoke-virtual/range {v8 .. v13}, Lfd;->b(IIIII)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 40
    sget-object v8, Luu;->m:[Luu;

    iget v9, v0, Lck;->a:I

    aget-object v8, v8, v9

    move-object/from16 v9, p3

    move v10, v7

    move v11, v3

    move v12, v4

    move v13, v2

    invoke-virtual/range {v8 .. v13}, Luu;->e(Lfd;IIII)V

    .line 41
    sget-object v2, Luu;->m:[Luu;

    iget v8, v0, Lck;->a:I

    aget-object v8, v2, v8

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v13}, Luu;->a(Lfd;IIILls;)V

    int-to-float v2, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v2, v7

    float-to-double v9, v2

    int-to-float v2, v3

    add-float/2addr v2, v7

    float-to-double v11, v2

    int-to-float v2, v4

    add-float/2addr v2, v7

    float-to-double v13, v2

    .line 42
    iget-object v2, v5, Luu;->by:Lct;

    invoke-virtual {v2}, Lct;->d()Ljava/lang/String;

    move-result-object v15

    iget-object v2, v5, Luu;->by:Lct;

    invoke-virtual {v2}, Lct;->b()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v2, v3

    iget-object v2, v5, Luu;->by:Lct;

    invoke-virtual {v2}, Lct;->c()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v17, v2, v3

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v17}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 43
    iget v2, v1, Liz;->a:I

    sub-int/2addr v2, v6

    iput v2, v1, Liz;->a:I

    :cond_cc
    return v6

    :cond_cd
    return v5
.end method
