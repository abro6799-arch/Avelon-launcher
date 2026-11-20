###### Class defpackage.fc (fc)
.class public Lfc;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(IIZ)V
    .registers 5

    .line 12
    sget-object v0, Lln;->x:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    .line 13
    iput p2, p0, Lfc;->bm:I

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lfc;->b(Z)Luu;

    .line 15
    iput-boolean p3, p0, Lfc;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 34
    iget p1, p0, Lfc;->bm:I

    return p1

    :cond_6
    if-nez p1, :cond_b

    .line 35
    iget p1, p0, Lfc;->bm:I

    return p1

    :cond_b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    .line 36
    iget p1, p0, Lfc;->bm:I

    add-int/2addr p1, v0

    :goto_11
    add-int/lit8 p1, p1, 0x10

    return p1

    .line 37
    :cond_14
    iget p1, p0, Lfc;->bm:I

    goto :goto_11
.end method

.method public a(II)I
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 19
    iget p1, p0, Lfc;->bm:I

    return p1

    :cond_6
    if-nez p1, :cond_b

    .line 20
    iget p1, p0, Lfc;->bm:I

    return p1

    .line 22
    :cond_b
    iget v1, p0, Lfc;->bm:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x10

    .line 23
    iget-boolean v2, p0, Lfc;->a:Z

    if-eqz v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    :cond_16
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1c

    if-ne p1, v2, :cond_1c

    return v1

    :cond_1c
    const/4 v2, 0x3

    if-ne p2, v2, :cond_23

    const/4 v3, 0x5

    if-ne p1, v3, :cond_23

    return v1

    :cond_23
    if-nez p2, :cond_28

    if-ne p1, v2, :cond_28

    return v1

    :cond_28
    if-ne p2, v0, :cond_2e

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2e

    return v1

    .line 30
    :cond_2e
    iget p1, p0, Lfc;->bm:I

    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public a(Lfd;IIILls;)V
    .registers 10

    .line 50
    iget p5, p5, Lls;->aS:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p5, v0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p5, v0

    float-to-double v0, p5

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p5

    and-int/lit8 p5, p5, 0x3

    .line 51
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 7

    .line 45
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    if-eqz v0, :cond_12

    .line 46
    sget-object v1, Luu;->m:[Luu;

    aget-object v0, v1, v0

    iget-object v0, v0, Luu;->bA:Lln;

    invoke-virtual {v0}, Lln;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public c(Lfd;III)V
    .registers 5

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Luu;->c(Lfd;III)V

    return-void
.end method
