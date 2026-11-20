###### Class defpackage.fv (fv)
.class public Lfv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 9
    iput v0, p0, Lfv;->a:I

    .line 10
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lfv;->b:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a(Lcl;Lfd;II[B)V
    .registers 21

    move-object v7, p0

    .line 13
    iget v8, v7, Lfv;->a:I

    .line 15
    iget-object v0, v7, Lfv;->b:Ljava/util/Random;

    invoke-virtual/range {p2 .. p2}, Lfd;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 16
    iget-object v0, v7, Lfv;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long v9, v0, v4

    .line 17
    iget-object v0, v7, Lfv;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    add-long v11, v0, v4

    sub-int v0, p3, v8

    move v13, v0

    :goto_27
    add-int v0, p3, v8

    if-gt v13, v0, :cond_55

    sub-int v0, p4, v8

    move v14, v0

    :goto_2e
    add-int v0, p4, v8

    if-gt v14, v0, :cond_52

    .line 21
    iget-object v0, v7, Lfv;->b:Ljava/util/Random;

    int-to-long v1, v13

    mul-long/2addr v1, v9

    int-to-long v3, v14

    mul-long/2addr v3, v11

    add-long/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Lfd;->s()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    move-object v0, p0

    move-object/from16 v1, p2

    move v2, v13

    move v3, v14

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 22
    invoke-virtual/range {v0 .. v6}, Lfv;->a(Lfd;IIII[B)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2e

    :cond_52
    add-int/lit8 v13, v13, 0x1

    goto :goto_27

    :cond_55
    return-void
.end method

.method protected a(Lfd;IIII[B)V
    .registers 7

    return-void
.end method
