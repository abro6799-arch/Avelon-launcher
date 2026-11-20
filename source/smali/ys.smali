###### Class defpackage.ys (ys)
.class public Lys;
.super Luu;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "wood"

    const-string v1, "cobble"

    const-string v2, "stone"

    const-string v3, "sand"

    .line 15
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lys;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 12

    const/4 v0, 0x6

    .line 22
    sget-object v1, Lln;->e:Lln;

    invoke-direct {p0, p1, v0, v1}, Luu;-><init>(IILln;)V

    .line 23
    iput-boolean p2, p0, Lys;->b:Z

    if-nez p2, :cond_17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v8}, Lys;->a(FFFFFF)V

    :cond_17
    const/16 p1, 0xff

    .line 28
    invoke-virtual {p0, p1}, Lys;->g(I)Luu;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lys;->a(II)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .registers 5

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-nez p2, :cond_9

    if-gt p1, v1, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x5

    return p1

    :cond_9
    if-ne p2, v1, :cond_18

    if-nez p1, :cond_10

    const/16 p1, 0xd0

    return p1

    :cond_10
    if-ne p1, v1, :cond_15

    const/16 p1, 0xb0

    return p1

    :cond_15
    const/16 p1, 0xc0

    return p1

    :cond_18
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1d

    const/4 p1, 0x4

    return p1

    :cond_1d
    const/4 p1, 0x3

    if-ne p2, p1, :cond_23

    const/16 p1, 0x10

    return p1

    :cond_23
    return v0
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 75
    sget-object p1, Luu;->al:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    .line 80
    iget-boolean p1, p0, Lys;->b:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lxp;IIII)Z
    .registers 9

    .line 96
    sget-object v0, Luu;->al:Luu;

    if-eq p0, v0, :cond_7

    invoke-super/range {p0 .. p5}, Luu;->b(Lxp;IIII)Z

    :cond_7
    const/4 v0, 0x1

    if-ne p5, v0, :cond_b

    return v0

    .line 98
    :cond_b
    invoke-super/range {p0 .. p5}, Luu;->b(Lxp;IIII)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    return v2

    :cond_13
    if-nez p5, :cond_16

    return v0

    .line 100
    :cond_16
    invoke-interface {p1, p2, p3, p4}, Lxp;->a(III)I

    move-result p1

    iget p2, p0, Lys;->bn:I

    if-eq p1, p2, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0
.end method

.method protected b_(I)I
    .registers 2

    return p1
.end method

.method public c(Lfd;III)V
    .registers 12

    .line 58
    sget-object v0, Luu;->al:Luu;

    if-eq p0, v0, :cond_7

    invoke-super {p0, p1, p2, p3, p4}, Luu;->c(Lfd;III)V

    :cond_7
    add-int/lit8 v3, p3, -0x1

    .line 59
    invoke-virtual {p1, p2, v3, p4}, Lfd;->a(III)I

    move-result v0

    .line 61
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    .line 62
    invoke-virtual {p1, p2, v3, p4}, Lfd;->e(III)I

    move-result v1

    if-eq v6, v1, :cond_18

    return-void

    .line 68
    :cond_18
    sget-object v1, Lys;->al:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_2c

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    .line 70
    sget-object p3, Luu;->ak:Luu;

    iget v5, p3, Luu;->bn:I

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->b(IIIII)Z

    :cond_2c
    return-void
.end method

.method public c()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lys;->b:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lys;->b:Z

    return v0
.end method
