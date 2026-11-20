###### Class defpackage.gz (gz)
.class public Lgz;
.super Lii;
.source "SourceFile"

# interfaces
.implements Lff;


# instance fields
.field protected c:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lii;-><init>(Lfd;)V

    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lgz;->c:I

    const/16 p1, 0x14

    .line 18
    iput p1, p0, Lgz;->Y:I

    return-void
.end method


# virtual methods
.method protected a(III)F
    .registers 5

    .line 60
    iget-object v0, p0, Lgz;->aI:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->c(III)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p2, p1

    return p2
.end method

.method public a(Lnu;)V
    .registers 2

    .line 68
    invoke-super {p0, p1}, Lii;->a(Lnu;)V

    return-void
.end method

.method protected a(Lsn;F)V
    .registers 7

    .line 53
    iget v0, p0, Lgz;->ae:I

    if-gtz v0, :cond_2b

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2b

    iget-object p2, p1, Lsn;->aW:Leq;

    iget-wide v0, p2, Leq;->e:D

    iget-object p2, p0, Lgz;->aW:Leq;

    iget-wide v2, p2, Leq;->b:D

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2b

    iget-object p2, p1, Lsn;->aW:Leq;

    iget-wide v0, p2, Leq;->b:D

    iget-object p2, p0, Lgz;->aW:Leq;

    iget-wide v2, p2, Leq;->e:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_2b

    const/16 p2, 0x14

    .line 54
    iput p2, p0, Lgz;->ae:I

    .line 55
    iget p2, p0, Lgz;->c:I

    invoke-virtual {p1, p0, p2}, Lsn;->a(Lsn;I)Z

    :cond_2b
    return-void
.end method

.method public a(Lsn;I)Z
    .registers 4

    .line 41
    invoke-super {p0, p1, p2}, Lii;->a(Lsn;I)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 42
    iget-object p2, p0, Lgz;->aG:Lsn;

    const/4 v0, 0x1

    if-eq p2, p1, :cond_14

    iget-object p2, p0, Lgz;->aH:Lsn;

    if-ne p2, p1, :cond_10

    goto :goto_14

    :cond_10
    if-eq p1, p0, :cond_14

    .line 45
    iput-object p1, p0, Lgz;->d:Lsn;

    :cond_14
    :goto_14
    return v0

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lnu;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Lii;->b(Lnu;)V

    return-void
.end method

.method public d()Z
    .registers 8

    .line 72
    iget-wide v0, p0, Lgz;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 73
    iget-object v1, p0, Lgz;->aW:Leq;

    iget-wide v1, v1, Leq;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 74
    iget-wide v2, p0, Lgz;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 75
    iget-object v3, p0, Lgz;->aI:Lfd;

    sget-object v4, Leb;->a:Leb;

    invoke-virtual {v3, v4, v0, v1, v2}, Lfd;->a(Leb;III)I

    move-result v3

    iget-object v4, p0, Lgz;->bs:Ljava/util/Random;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_28

    return v5

    .line 77
    :cond_28
    iget-object v3, p0, Lgz;->aI:Lfd;

    invoke-virtual {v3, v0, v1, v2}, Lfd;->n(III)I

    move-result v3

    .line 79
    iget-object v4, p0, Lgz;->aI:Lfd;

    invoke-virtual {v4}, Lfd;->B()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 80
    iget-object v3, p0, Lgz;->aI:Lfd;

    iget v3, v3, Lfd;->f:I

    .line 81
    iget-object v4, p0, Lgz;->aI:Lfd;

    const/16 v6, 0xa

    iput v6, v4, Lfd;->f:I

    .line 82
    iget-object v4, p0, Lgz;->aI:Lfd;

    invoke-virtual {v4, v0, v1, v2}, Lfd;->n(III)I

    move-result v0

    .line 83
    iget-object v1, p0, Lgz;->aI:Lfd;

    iput v3, v1, Lfd;->f:I

    move v3, v0

    .line 86
    :cond_4b
    iget-object v0, p0, Lgz;->bs:Ljava/util/Random;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v3, v0, :cond_5c

    invoke-super {p0}, Lii;->d()Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v5, 0x1

    :cond_5c
    return v5
.end method

.method protected g_()Lsn;
    .registers 4

    .line 35
    iget-object v0, p0, Lgz;->aI:Lfd;

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    invoke-virtual {v0, p0, v1, v2}, Lfd;->a(Lsn;D)Lgs;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {p0, v0}, Lgz;->e(Lsn;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p0, v0}, Lgz;->a(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 24
    iget v0, p0, Lgz;->av:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgz;->av:I

    .line 26
    :cond_12
    invoke-super {p0}, Lii;->o()V

    return-void
.end method

.method public w_()V
    .registers 2

    .line 30
    invoke-super {p0}, Lii;->w_()V

    .line 31
    iget-object v0, p0, Lgz;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lgz;->aI:Lfd;

    iget v0, v0, Lfd;->q:I

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lgz;->K()V

    :cond_12
    return-void
.end method
