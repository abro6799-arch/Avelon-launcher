###### Class defpackage.fx (fx)
.class public Lfx;
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
    .registers 15

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v1, v2, :cond_53

    const/16 v2, 0x8

    .line 11
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    .line 12
    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, p4

    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int/2addr v6, v5

    .line 13
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, p5

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v5, v2

    .line 14
    invoke-virtual {p1, v4, v6, v5}, Lfd;->d(III)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x3

    .line 15
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    move v3, v0

    :goto_3a
    if-ge v3, v2, :cond_50

    .line 17
    sget-object v7, Luu;->aW:Luu;

    add-int v8, v6, v3

    invoke-virtual {v7, p1, v4, v8, v5}, Luu;->g(Lfd;III)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 18
    sget-object v7, Luu;->aW:Luu;

    iget v7, v7, Luu;->bn:I

    invoke-virtual {p1, v4, v8, v5, v7}, Lfd;->c(IIII)Z

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_53
    return v3
.end method
