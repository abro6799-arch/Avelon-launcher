###### Class defpackage.kw (kw)
.class public Lkw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static s:Ljava/util/Random;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:Z

.field public i:I

.field public j:I

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field public o:D

.field public p:D

.field public q:D

.field public r:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lkw;->s:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 52
    iget-wide v0, p0, Lkw;->k:D

    iput-wide v0, p0, Lkw;->o:D

    .line 53
    iget-wide v0, p0, Lkw;->l:D

    iput-wide v0, p0, Lkw;->p:D

    .line 54
    iget-wide v0, p0, Lkw;->m:D

    iput-wide v0, p0, Lkw;->q:D

    .line 55
    iget-wide v0, p0, Lkw;->n:D

    iput-wide v0, p0, Lkw;->r:D

    .line 57
    iget-wide v0, p0, Lkw;->a:D

    iput-wide v0, p0, Lkw;->c:D

    .line 58
    iget-wide v0, p0, Lkw;->b:D

    iput-wide v0, p0, Lkw;->d:D

    return-void
.end method

.method public a(Ldu;)V
    .registers 8

    .line 37
    iget-wide v0, p0, Lkw;->a:D

    iget-wide v2, p0, Lkw;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lkw;->a:D

    .line 38
    iget-wide v0, p0, Lkw;->b:D

    iget-wide v4, p0, Lkw;->f:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lkw;->b:D

    .line 40
    iget-wide v0, p0, Lkw;->g:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lkw;->e:D

    mul-double/2addr v4, v0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v0

    .line 43
    iput-wide v4, p0, Lkw;->f:D

    .line 44
    iget p1, p0, Lkw;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkw;->i:I

    iget v0, p0, Lkw;->j:I

    if-le p1, v0, :cond_29

    invoke-virtual {p0}, Lkw;->b()V

    .line 45
    :cond_29
    iget p1, p0, Lkw;->i:I

    int-to-double v0, p1

    iget p1, p0, Lkw;->j:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lkw;->n:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v2, v0

    if-lez p1, :cond_3e

    .line 46
    iput-wide v0, p0, Lkw;->n:D

    .line 47
    :cond_3e
    iget-wide v0, p0, Lkw;->n:D

    mul-double/2addr v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    .line 48
    iput-wide v0, p0, Lkw;->n:D

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lkw;->h:Z

    return-void
.end method
