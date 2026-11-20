###### Class defpackage.xs (xs)
.class public Lxs;
.super Lpg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lpg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 12

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_44

    const/16 v1, 0x8

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x4

    .line 12
    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v4, v3

    .line 13
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr v3, v1

    .line 14
    invoke-virtual {p1, v2, v4, v3}, Lfd;->d(III)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_41

    :cond_2d
    add-int/lit8 v1, v4, -0x1

    .line 15
    invoke-virtual {p1, v2, v1, v3}, Lfd;->a(III)I

    move-result v1

    sget-object v5, Luu;->bc:Luu;

    iget v5, v5, Luu;->bn:I

    if-eq v1, v5, :cond_3a

    goto :goto_41

    .line 16
    :cond_3a
    sget-object v1, Luu;->as:Lyq;

    iget v1, v1, Lyq;->bn:I

    invoke-virtual {p1, v2, v4, v3, v1}, Lfd;->f(IIII)Z

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_44
    const/4 p1, 0x1

    return p1
.end method
