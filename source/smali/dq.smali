###### Class defpackage.dq (dq)
.class public Ldq;
.super Lgm;
.source "SourceFile"


# instance fields
.field protected a:Lbu;

.field private bk:[Luu;

.field private bl:F

.field private bm:I


# direct methods
.method protected constructor <init>(IILbu;[Luu;)V
    .registers 5

    .line 15
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 8
    iput p1, p0, Ldq;->bl:F

    .line 16
    iput-object p3, p0, Ldq;->a:Lbu;

    .line 17
    iput-object p4, p0, Ldq;->bk:[Luu;

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Ldq;->bg:I

    .line 19
    invoke-virtual {p3}, Lbu;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Ldq;->e(I)Lgm;

    .line 20
    invoke-virtual {p3}, Lbu;->b()F

    move-result p1

    iput p1, p0, Ldq;->bl:F

    .line 21
    invoke-virtual {p3}, Lbu;->c()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Ldq;->bm:I

    return-void
.end method


# virtual methods
.method public a(Liz;Luu;)F
    .registers 5

    const/4 p1, 0x0

    .line 25
    :goto_1
    iget-object v0, p0, Ldq;->bk:[Luu;

    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 26
    aget-object v0, v0, p1

    if-ne v0, p2, :cond_d

    iget p1, p0, Ldq;->bl:F

    return p1

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_10
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public a(Lsn;)I
    .registers 2

    .line 43
    iget p1, p0, Ldq;->bm:I

    return p1
.end method

.method public a(Liz;IIIILls;)Z
    .registers 7

    const/4 p2, 0x1

    .line 38
    invoke-virtual {p1, p2, p6}, Liz;->a(ILsn;)V

    return p2
.end method

.method public a(Liz;Lls;Lls;)Z
    .registers 4

    const/4 p2, 0x2

    .line 32
    invoke-virtual {p1, p2, p3}, Liz;->a(ILsn;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
