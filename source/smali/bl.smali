###### Class defpackage.bl (bl)
.class public Lbl;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lbl;->d(I)Lgm;

    const/16 p1, 0xee

    .line 12
    invoke-virtual {p0, p1}, Lbl;->e(I)Lgm;

    return-void
.end method


# virtual methods
.method public a(Liz;Luu;)F
    .registers 5

    .line 30
    iget v0, p2, Luu;->bn:I

    sget-object v1, Luu;->X:Luu;

    iget v1, v1, Luu;->bn:I

    if-eq v0, v1, :cond_21

    iget v0, p2, Luu;->bn:I

    sget-object v1, Luu;->L:Lbk;

    iget v1, v1, Lbk;->bn:I

    if-ne v0, v1, :cond_11

    goto :goto_21

    .line 33
    :cond_11
    iget v0, p2, Luu;->bn:I

    sget-object v1, Luu;->ac:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_1c

    const/high16 p1, 0x40a00000    # 5.0f

    return p1

    .line 36
    :cond_1c
    invoke-super {p0, p1, p2}, Lgm;->a(Liz;Luu;)F

    move-result p1

    return p1

    :cond_21
    :goto_21
    const/high16 p1, 0x41700000    # 15.0f

    return p1
.end method

.method public a(Liz;IIIILls;)Z
    .registers 8

    .line 17
    sget-object v0, Luu;->L:Lbk;

    iget v0, v0, Lbk;->bn:I

    if-eq p2, v0, :cond_c

    sget-object v0, Luu;->X:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p2, v0, :cond_10

    :cond_c
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0, p6}, Liz;->a(ILsn;)V

    .line 20
    :cond_10
    invoke-super/range {p0 .. p6}, Lgm;->a(Liz;IIIILls;)Z

    move-result p1

    return p1
.end method

.method public a(Luu;)Z
    .registers 3

    .line 25
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
