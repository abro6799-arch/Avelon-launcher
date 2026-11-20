###### Class defpackage.vc (vc)
.class public Lvc;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lvc;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 16

    const/4 v0, 0x0

    if-nez p7, :cond_4

    return v0

    .line 17
    :cond_4
    invoke-virtual {p3, p4, p5, p6}, Lfd;->f(III)Lln;

    move-result-object v1

    invoke-virtual {v1}, Lln;->a()Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    const/4 v1, 0x1

    if-ne p7, v1, :cond_14

    add-int/lit8 p5, p5, 0x1

    :cond_14
    const/4 v2, 0x2

    if-ne p7, v2, :cond_19

    add-int/lit8 p6, p6, -0x1

    :cond_19
    const/4 v2, 0x3

    if-ne p7, v2, :cond_1e

    add-int/lit8 p6, p6, 0x1

    :cond_1e
    const/4 v2, 0x4

    if-ne p7, v2, :cond_23

    add-int/lit8 p4, p4, -0x1

    :cond_23
    const/4 v2, 0x5

    if-ne p7, v2, :cond_28

    add-int/lit8 p4, p4, 0x1

    .line 27
    :cond_28
    sget-object v2, Luu;->aE:Luu;

    invoke-virtual {v2, p3, p4, p5, p6}, Luu;->a(Lfd;III)Z

    move-result v2

    if-nez v2, :cond_31

    return v0

    :cond_31
    if-ne p7, v1, :cond_54

    .line 31
    sget-object p7, Luu;->aE:Luu;

    iget v6, p7, Luu;->bn:I

    iget p7, p2, Lgs;->aS:F

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p7, v0

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p7, v0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p7, v0

    float-to-double v2, p7

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result p7

    and-int/lit8 v7, p7, 0xf

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v2 .. v7}, Lfd;->b(IIIII)Z

    goto :goto_60

    .line 33
    :cond_54
    sget-object v0, Luu;->aJ:Luu;

    iget v6, v0, Luu;->bn:I

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v7, p7

    invoke-virtual/range {v2 .. v7}, Lfd;->b(IIIII)Z

    .line 36
    :goto_60
    iget p7, p1, Liz;->a:I

    sub-int/2addr p7, v1

    iput p7, p1, Liz;->a:I

    .line 37
    invoke-virtual {p3, p4, p5, p6}, Lfd;->b(III)Low;

    move-result-object p1

    check-cast p1, Lyk;

    if-eqz p1, :cond_70

    .line 38
    invoke-virtual {p2, p1}, Lgs;->a(Lyk;)V

    :cond_70
    return v1
.end method
