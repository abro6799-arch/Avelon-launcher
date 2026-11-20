###### Class defpackage.lr (lr)
.class public Llr;
.super Luo;
.source "SourceFile"


# instance fields
.field private f:[Z

.field private g:Lkv;


# direct methods
.method public constructor <init>(Lkv;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Luo;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 14
    iput-object v0, p0, Llr;->f:[Z

    .line 18
    iput-object p1, p0, Llr;->g:Lkv;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_d

    .line 36
    iget-object v2, p0, Llr;->f:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method

.method public a(IZ)V
    .registers 5

    .line 23
    iget-object v0, p0, Llr;->g:Lkv;

    iget-object v0, v0, Lkv;->m:Lqb;

    iget v0, v0, Lqb;->b:I

    if-ne p1, v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    const/4 v0, -0x1

    .line 24
    :goto_b
    iget-object v1, p0, Llr;->g:Lkv;

    iget-object v1, v1, Lkv;->o:Lqb;

    iget v1, v1, Lqb;->b:I

    if-ne p1, v1, :cond_14

    const/4 v0, 0x1

    .line 25
    :cond_14
    iget-object v1, p0, Llr;->g:Lkv;

    iget-object v1, v1, Lkv;->n:Lqb;

    iget v1, v1, Lqb;->b:I

    if-ne p1, v1, :cond_1d

    const/4 v0, 0x2

    .line 26
    :cond_1d
    iget-object v1, p0, Llr;->g:Lkv;

    iget-object v1, v1, Lkv;->p:Lqb;

    iget v1, v1, Lqb;->b:I

    if-ne p1, v1, :cond_26

    const/4 v0, 0x3

    .line 27
    :cond_26
    iget-object v1, p0, Llr;->g:Lkv;

    iget-object v1, v1, Lkv;->q:Lqb;

    iget v1, v1, Lqb;->b:I

    if-ne p1, v1, :cond_2f

    const/4 v0, 0x4

    .line 28
    :cond_2f
    iget-object v1, p0, Llr;->g:Lkv;

    iget-object v1, v1, Lkv;->v:Lqb;

    iget v1, v1, Lqb;->b:I

    if-ne p1, v1, :cond_38

    const/4 v0, 0x5

    :cond_38
    if-ltz v0, :cond_3e

    .line 30
    iget-object p1, p0, Llr;->f:[Z

    aput-boolean p2, p1, v0

    :cond_3e
    return-void
.end method

.method public a(Lgs;)V
    .registers 6

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Llr;->a:F

    .line 42
    iput p1, p0, Llr;->b:F

    .line 43
    iget-object p1, p0, Llr;->f:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_13

    iget p1, p0, Llr;->b:F

    add-float/2addr p1, v0

    iput p1, p0, Llr;->b:F

    .line 44
    :cond_13
    iget-object p1, p0, Llr;->f:[Z

    const/4 v1, 0x1

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_1f

    iget p1, p0, Llr;->b:F

    sub-float/2addr p1, v0

    iput p1, p0, Llr;->b:F

    .line 45
    :cond_1f
    iget-object p1, p0, Llr;->f:[Z

    const/4 v1, 0x2

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_2b

    iget p1, p0, Llr;->a:F

    add-float/2addr p1, v0

    iput p1, p0, Llr;->a:F

    .line 46
    :cond_2b
    iget-object p1, p0, Llr;->f:[Z

    const/4 v1, 0x3

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_37

    iget p1, p0, Llr;->a:F

    sub-float/2addr p1, v0

    iput p1, p0, Llr;->a:F

    .line 47
    :cond_37
    iget-object p1, p0, Llr;->f:[Z

    const/4 v0, 0x4

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Llr;->d:Z

    .line 48
    iget-object p1, p0, Llr;->f:[Z

    const/4 v0, 0x5

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Llr;->e:Z

    .line 49
    iget-boolean p1, p0, Llr;->e:Z

    if-eqz p1, :cond_5c

    .line 50
    iget p1, p0, Llr;->a:F

    float-to-double v0, p1

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Llr;->a:F

    .line 51
    iget p1, p0, Llr;->b:F

    float-to-double v0, p1

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Llr;->b:F

    :cond_5c
    return-void
.end method
