###### Class defpackage.ye (ye)
.class public Lye;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lye;->bg:I

    const/16 p1, 0x40

    .line 11
    invoke-virtual {p0, p1}, Lye;->e(I)Lgm;

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 26

    move-object/from16 v10, p3

    move/from16 v0, p7

    if-nez v0, :cond_9

    add-int/lit8 v1, p5, -0x1

    goto :goto_b

    :cond_9
    move/from16 v1, p5

    :goto_b
    const/4 v11, 0x1

    if-ne v0, v11, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    move v12, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    add-int/lit8 v1, p6, -0x1

    goto :goto_19

    :cond_17
    move/from16 v1, p6

    :goto_19
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    move v13, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    add-int/lit8 v1, p4, -0x1

    goto :goto_27

    :cond_25
    move/from16 v1, p4

    :goto_27
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2c

    add-int/lit8 v1, v1, 0x1

    :cond_2c
    move v14, v1

    .line 22
    invoke-virtual {v10, v14, v12, v13}, Lfd;->a(III)I

    move-result v0

    if-nez v0, :cond_65

    int-to-double v0, v14

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v4, v0, v2

    int-to-double v0, v12

    add-double v6, v0, v2

    int-to-double v0, v13

    add-double v8, v0, v2

    const-string v15, "fire.ignite"

    const/high16 v16, 0x3f800000    # 1.0f

    .line 25
    sget-object v0, Lye;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float v17, v0, v1

    move-object/from16 v0, p3

    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v8

    move-object v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 26
    sget-object v0, Luu;->as:Lyq;

    iget v0, v0, Lyq;->bn:I

    invoke-virtual {v10, v14, v12, v13, v0}, Lfd;->f(IIII)Z

    :cond_65
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 29
    invoke-virtual {v0, v11, v1}, Liz;->a(ILsn;)V

    return v11
.end method
