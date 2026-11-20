###### Class defpackage.ya (ya)
.class public Lya;
.super Luz;
.source "SourceFile"


# static fields
.field private static final f:Liz;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 97
    new-instance v0, Liz;

    sget-object v1, Lgm;->E:Lgm;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Liz;-><init>(Lgm;I)V

    sput-object v0, Lya;->f:Liz;

    return-void
.end method

.method public constructor <init>(Lfd;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Luz;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lya;->a:I

    .line 17
    iput p1, p0, Lya;->b:I

    const-string p1, "/mob/pigzombie.png"

    .line 21
    iput-object p1, p0, Lya;->O:Ljava/lang/String;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 22
    iput p1, p0, Lya;->aB:F

    const/4 p1, 0x5

    .line 23
    iput p1, p0, Lya;->c:I

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lya;->bC:Z

    return-void
.end method

.method private d(Lsn;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lya;->d:Lsn;

    .line 77
    iget-object p1, p0, Lya;->bs:Ljava/util/Random;

    const/16 v0, 0x190

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lya;->a:I

    .line 78
    iget-object p1, p0, Lya;->bs:Ljava/util/Random;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lya;->b:I

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 3

    .line 47
    invoke-super {p0, p1}, Luz;->a(Lnu;)V

    const-string v0, "Anger"

    .line 48
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lya;->a:I

    return-void
.end method

.method public a(Lsn;I)Z
    .registers 11

    .line 61
    instance-of v0, p1, Lgs;

    if-eqz v0, :cond_32

    .line 62
    iget-object v0, p0, Lya;->aI:Lfd;

    iget-object v1, p0, Lya;->aW:Leq;

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    invoke-virtual/range {v1 .. v7}, Leq;->b(DDD)Leq;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 65
    instance-of v3, v2, Lya;

    if-eqz v3, :cond_2c

    .line 66
    check-cast v2, Lya;

    .line 67
    invoke-direct {v2, p1}, Lya;->d(Lsn;)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 70
    :cond_2f
    invoke-direct {p0, p1}, Lya;->d(Lsn;)V

    .line 72
    :cond_32
    invoke-super {p0, p1, p2}, Luz;->a(Lsn;I)Z

    move-result p1

    return p1
.end method

.method public b(Lnu;)V
    .registers 4

    .line 42
    invoke-super {p0, p1}, Luz;->b(Lnu;)V

    .line 43
    iget v0, p0, Lya;->a:I

    int-to-short v0, v0

    const-string v1, "Anger"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    return-void
.end method

.method public d()Z
    .registers 3

    .line 38
    iget-object v0, p0, Lya;->aI:Lfd;

    iget v0, v0, Lfd;->q:I

    if-lez v0, :cond_2a

    iget-object v0, p0, Lya;->aI:Lfd;

    iget-object v1, p0, Lya;->aW:Leq;

    invoke-virtual {v0, v1}, Lfd;->a(Leq;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lya;->aI:Lfd;

    iget-object v1, p0, Lya;->aW:Leq;

    invoke-virtual {v0, p0, v1}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lya;->aI:Lfd;

    iget-object v1, p0, Lya;->aW:Leq;

    invoke-virtual {v0, v1}, Lfd;->b(Leq;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.zombiepig.zpig"

    return-object v0
.end method

.method protected g_()Lsn;
    .registers 2

    .line 52
    iget v0, p0, Lya;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_6
    invoke-super {p0}, Luz;->g_()Lsn;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.zombiepig.zpigdeath"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 94
    sget-object v0, Lgm;->ap:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.zombiepig.zpighurt"

    return-object v0
.end method

.method public o()V
    .registers 1

    .line 57
    invoke-super {p0}, Luz;->o()V

    return-void
.end method

.method public r_()Liz;
    .registers 2

    .line 100
    sget-object v0, Lya;->f:Liz;

    return-object v0
.end method

.method public w_()V
    .registers 5

    .line 28
    iget-object v0, p0, Lya;->d:Lsn;

    if-eqz v0, :cond_8

    const v0, 0x3f733333    # 0.95f

    goto :goto_a

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_a
    iput v0, p0, Lya;->aB:F

    .line 29
    iget v0, p0, Lya;->b:I

    if-lez v0, :cond_3c

    add-int/lit8 v0, v0, -0x1

    .line 30
    iput v0, p0, Lya;->b:I

    if-nez v0, :cond_3c

    .line 31
    iget-object v0, p0, Lya;->aI:Lfd;

    invoke-virtual {p0}, Lya;->k()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lya;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, p0, Lya;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v2, v3

    const-string v3, "mob.zombiepig.zpigangry"

    invoke-virtual {v0, p0, v3, v1, v2}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 34
    :cond_3c
    invoke-super {p0}, Luz;->w_()V

    return-void
.end method
