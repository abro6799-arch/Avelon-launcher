###### Class defpackage.sf (sf)
.class public Lsf;
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
    .registers 16

    .line 10
    invoke-virtual {p1, p3, p4, p5}, Lfd;->d(III)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, p4, 0x1

    .line 11
    invoke-virtual {p1, p3, v0, p5}, Lfd;->a(III)I

    move-result v0

    sget-object v2, Luu;->bc:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq v0, v2, :cond_15

    return v1

    .line 12
    :cond_15
    sget-object v0, Luu;->be:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-virtual {p1, p3, p4, p5, v0}, Lfd;->f(IIII)Z

    move v0, v1

    :goto_1d
    const/16 v2, 0x5dc

    const/4 v3, 0x1

    if-ge v0, v2, :cond_99

    const/16 v2, 0x8

    .line 15
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0xc

    .line 16
    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int v5, p4, v5

    .line 17
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, p5

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v6, v2

    .line 18
    invoke-virtual {p1, v4, v5, v6}, Lfd;->a(III)I

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_96

    :cond_47
    move v2, v1

    move v7, v2

    :goto_49
    const/4 v8, 0x6

    if-ge v2, v8, :cond_8d

    if-nez v2, :cond_55

    add-int/lit8 v8, v4, -0x1

    .line 23
    invoke-virtual {p1, v8, v5, v6}, Lfd;->a(III)I

    move-result v8

    goto :goto_56

    :cond_55
    move v8, v1

    :goto_56
    if-ne v2, v3, :cond_5e

    add-int/lit8 v8, v4, 0x1

    .line 24
    invoke-virtual {p1, v8, v5, v6}, Lfd;->a(III)I

    move-result v8

    :cond_5e
    const/4 v9, 0x2

    if-ne v2, v9, :cond_67

    add-int/lit8 v8, v5, -0x1

    .line 25
    invoke-virtual {p1, v4, v8, v6}, Lfd;->a(III)I

    move-result v8

    :cond_67
    const/4 v9, 0x3

    if-ne v2, v9, :cond_70

    add-int/lit8 v8, v5, 0x1

    .line 26
    invoke-virtual {p1, v4, v8, v6}, Lfd;->a(III)I

    move-result v8

    :cond_70
    const/4 v9, 0x4

    if-ne v2, v9, :cond_79

    add-int/lit8 v8, v6, -0x1

    .line 27
    invoke-virtual {p1, v4, v5, v8}, Lfd;->a(III)I

    move-result v8

    :cond_79
    const/4 v9, 0x5

    if-ne v2, v9, :cond_82

    add-int/lit8 v8, v6, 0x1

    .line 28
    invoke-virtual {p1, v4, v5, v8}, Lfd;->a(III)I

    move-result v8

    .line 30
    :cond_82
    sget-object v9, Luu;->be:Luu;

    iget v9, v9, Luu;->bn:I

    if-ne v8, v9, :cond_8a

    add-int/lit8 v7, v7, 0x1

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_8d
    if-ne v7, v3, :cond_96

    .line 33
    sget-object v2, Luu;->be:Luu;

    iget v2, v2, Luu;->bn:I

    invoke-virtual {p1, v4, v5, v6, v2}, Lfd;->f(IIII)Z

    :cond_96
    :goto_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_99
    return v3
.end method
