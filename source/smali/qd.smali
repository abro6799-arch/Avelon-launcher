###### Class defpackage.qd (qd)
.class public Lqd;
.super Lgm;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(ILbu;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lqd;->bg:I

    .line 12
    invoke-virtual {p2}, Lbu;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lqd;->e(I)Lgm;

    .line 14
    invoke-virtual {p2}, Lbu;->c()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lqd;->a:I

    return-void
.end method


# virtual methods
.method public a(Liz;Luu;)F
    .registers 3

    .line 19
    iget p1, p2, Luu;->bn:I

    sget-object p2, Luu;->X:Luu;

    iget p2, p2, Luu;->bn:I

    if-ne p1, p2, :cond_b

    const/high16 p1, 0x41700000    # 15.0f

    return p1

    :cond_b
    const/high16 p1, 0x3fc00000    # 1.5f

    return p1
.end method

.method public a(Lsn;)I
    .registers 2

    .line 37
    iget p1, p0, Lqd;->a:I

    return p1
.end method

.method public a(Liz;IIIILls;)Z
    .registers 7

    const/4 p2, 0x2

    .line 32
    invoke-virtual {p1, p2, p6}, Liz;->a(ILsn;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Liz;Lls;Lls;)Z
    .registers 4

    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2, p3}, Liz;->a(ILsn;)V

    return p2
.end method

.method public a(Luu;)Z
    .registers 3

    .line 46
    iget p1, p1, Luu;->bn:I

    sget-object v0, Luu;->X:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
