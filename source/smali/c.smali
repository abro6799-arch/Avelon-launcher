###### Class defpackage.c (c)
.class public Lc;
.super Lyu;
.source "SourceFile"


# instance fields
.field public a:J

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lfd;DDD)V
    .registers 19

    move-object v9, p0

    move-object v10, p1

    .line 22
    invoke-direct {p0, p1}, Lyu;-><init>(Lfd;)V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, v9, Lc;->a:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide/from16 v5, p6

    .line 23
    invoke-virtual/range {v0 .. v8}, Lc;->c(DDDFF)V

    const/4 v0, 0x2

    .line 24
    iput v0, v9, Lc;->b:I

    .line 25
    iget-object v1, v9, Lc;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iput-wide v1, v9, Lc;->a:J

    .line 26
    iget-object v1, v9, Lc;->bs:Ljava/util/Random;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lc;->c:I

    .line 28
    iget v1, v10, Lfd;->q:I

    if-lt v1, v0, :cond_a5

    invoke-static {p2, p3}, Lin;->b(D)I

    move-result v0

    invoke-static/range {p4 .. p5}, Lin;->b(D)I

    move-result v1

    invoke-static/range {p6 .. p7}, Lin;->b(D)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {p1, v0, v1, v3, v4}, Lfd;->b(IIII)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 30
    invoke-static {p2, p3}, Lin;->b(D)I

    move-result v0

    .line 31
    invoke-static/range {p4 .. p5}, Lin;->b(D)I

    move-result v1

    .line 32
    invoke-static/range {p6 .. p7}, Lin;->b(D)I

    move-result v3

    .line 33
    invoke-virtual {p1, v0, v1, v3}, Lfd;->a(III)I

    move-result v4

    if-nez v4, :cond_62

    sget-object v4, Luu;->as:Lyq;

    invoke-virtual {v4, p1, v0, v1, v3}, Lyq;->a(Lfd;III)Z

    move-result v4

    if-eqz v4, :cond_62

    sget-object v4, Luu;->as:Lyq;

    iget v4, v4, Lyq;->bn:I

    invoke-virtual {p1, v0, v1, v3, v4}, Lfd;->f(IIII)Z

    :cond_62
    const/4 v0, 0x0

    :goto_63
    const/4 v1, 0x4

    if-ge v0, v1, :cond_a5

    .line 37
    invoke-static {p2, p3}, Lin;->b(D)I

    move-result v1

    iget-object v3, v9, Lc;->bs:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 38
    invoke-static/range {p4 .. p5}, Lin;->b(D)I

    move-result v3

    iget-object v4, v9, Lc;->bs:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 39
    invoke-static/range {p6 .. p7}, Lin;->b(D)I

    move-result v4

    iget-object v5, v9, Lc;->bs:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 40
    invoke-virtual {p1, v1, v3, v4}, Lfd;->a(III)I

    move-result v5

    if-nez v5, :cond_a2

    sget-object v5, Luu;->as:Lyq;

    invoke-virtual {v5, p1, v1, v3, v4}, Lyq;->a(Lfd;III)Z

    move-result v5

    if-eqz v5, :cond_a2

    sget-object v5, Luu;->as:Lyq;

    iget v5, v5, Lyq;->bn:I

    invoke-virtual {p1, v1, v3, v4, v5}, Lfd;->f(IIII)Z

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_a5
    return-void
.end method


# virtual methods
.method protected a(Lnu;)V
    .registers 2

    return-void
.end method

.method public a(Lbt;)Z
    .registers 2

    .line 96
    iget p1, p0, Lc;->b:I

    if-ltz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Lnu;)V
    .registers 2

    return-void
.end method

.method public w_()V
    .registers 25

    move-object/from16 v0, p0

    .line 46
    invoke-super/range {p0 .. p0}, Lyu;->w_()V

    .line 48
    iget v1, v0, Lc;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_47

    .line 49
    iget-object v3, v0, Lc;->aI:Lfd;

    iget-wide v4, v0, Lc;->aM:D

    iget-wide v6, v0, Lc;->aN:D

    iget-wide v8, v0, Lc;->aO:D

    const-string v10, "ambient.weather.thunder"

    const v11, 0x461c4000    # 10000.0f

    iget-object v1, v0, Lc;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v13, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v13

    const v12, 0x3f4ccccd    # 0.8f

    add-float/2addr v12, v1

    invoke-virtual/range {v3 .. v12}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 50
    iget-object v14, v0, Lc;->aI:Lfd;

    iget-wide v3, v0, Lc;->aM:D

    iget-wide v5, v0, Lc;->aN:D

    iget-wide v7, v0, Lc;->aO:D

    const-string v21, "random.explode"

    const/high16 v22, 0x40000000    # 2.0f

    iget-object v1, v0, Lc;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v13

    const/high16 v9, 0x3f000000    # 0.5f

    add-float v23, v1, v9

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    invoke-virtual/range {v14 .. v23}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 53
    :cond_47
    iget v1, v0, Lc;->b:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v0, Lc;->b:I

    if-gez v1, :cond_b8

    .line 55
    iget v4, v0, Lc;->c:I

    if-nez v4, :cond_57

    .line 56
    invoke-virtual/range {p0 .. p0}, Lc;->K()V

    goto :goto_b8

    .line 57
    :cond_57
    iget-object v4, v0, Lc;->bs:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    neg-int v4, v4

    if-ge v1, v4, :cond_b8

    .line 58
    iget v1, v0, Lc;->c:I

    sub-int/2addr v1, v3

    iput v1, v0, Lc;->c:I

    .line 59
    iput v3, v0, Lc;->b:I

    .line 60
    iget-object v1, v0, Lc;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    iput-wide v3, v0, Lc;->a:J

    .line 61
    iget-object v1, v0, Lc;->aI:Lfd;

    iget-wide v3, v0, Lc;->aM:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-wide v6, v0, Lc;->aN:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v4

    iget-wide v6, v0, Lc;->aO:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    invoke-virtual {v1, v3, v4, v6, v5}, Lfd;->b(IIII)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 62
    iget-wide v3, v0, Lc;->aM:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v1

    .line 63
    iget-wide v3, v0, Lc;->aN:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 64
    iget-wide v4, v0, Lc;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    .line 65
    iget-object v5, v0, Lc;->aI:Lfd;

    invoke-virtual {v5, v1, v3, v4}, Lfd;->a(III)I

    move-result v5

    if-nez v5, :cond_b8

    sget-object v5, Luu;->as:Lyq;

    iget-object v6, v0, Lc;->aI:Lfd;

    invoke-virtual {v5, v6, v1, v3, v4}, Lyq;->a(Lfd;III)Z

    move-result v5

    if-eqz v5, :cond_b8

    iget-object v5, v0, Lc;->aI:Lfd;

    sget-object v6, Luu;->as:Lyq;

    iget v6, v6, Lyq;->bn:I

    invoke-virtual {v5, v1, v3, v4, v6}, Lfd;->f(IIII)Z

    .line 70
    :cond_b8
    :goto_b8
    iget v1, v0, Lc;->b:I

    if-ltz v1, :cond_fa

    .line 72
    iget-object v1, v0, Lc;->aI:Lfd;

    iget-wide v3, v0, Lc;->aM:D

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    sub-double v7, v3, v5

    iget-wide v3, v0, Lc;->aN:D

    sub-double v9, v3, v5

    iget-wide v3, v0, Lc;->aO:D

    sub-double v11, v3, v5

    iget-wide v3, v0, Lc;->aM:D

    add-double v13, v3, v5

    iget-wide v3, v0, Lc;->aN:D

    const-wide/high16 v15, 0x4018000000000000L    # 6.0

    add-double/2addr v3, v15

    add-double v15, v3, v5

    iget-wide v3, v0, Lc;->aO:D

    add-double v17, v3, v5

    invoke-static/range {v7 .. v18}, Leq;->b(DDDDDD)Leq;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    .line 73
    :goto_e4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f6

    .line 74
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsn;

    .line 75
    invoke-virtual {v4, v0}, Lsn;->a(Lc;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    .line 78
    :cond_f6
    iget-object v1, v0, Lc;->aI:Lfd;

    iput v2, v1, Lfd;->n:I

    :cond_fa
    return-void
.end method
