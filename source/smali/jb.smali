###### Class defpackage.jb (jb)
.class public Ljb;
.super Lwb;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 10

    .line 8
    invoke-direct {p0, p1, p2}, Lwb;-><init>(II)V

    const v3, 0x3dcccccc    # 0.099999994f

    const/4 v2, 0x0

    const v6, 0x3f666666    # 0.9f

    const v5, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 10
    invoke-virtual/range {v0 .. v6}, Ljb;->a(FFFFFF)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 3

    .line 18
    iget p1, p0, Ljb;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method

.method protected d(I)Z
    .registers 3

    .line 14
    sget-object v0, Luu;->F:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
