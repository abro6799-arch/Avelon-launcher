###### Class defpackage.ir (ir)
.class public Lir;
.super Lpg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lpg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x14

    const/4 v3, 0x1

    if-ge v1, v2, :cond_72

    const/4 v2, 0x4

    .line 12
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 14
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, p5

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v5, v2

    .line 15
    invoke-virtual {p1, v4, p4, v5}, Lfd;->d(III)Z

    move-result v2

    if-eqz v2, :cond_6f

    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v6, p4, -0x1

    .line 16
    invoke-virtual {p1, v2, v6, v5}, Lfd;->f(III)Lln;

    move-result-object v2

    sget-object v7, Lln;->g:Lln;

    if-eq v2, v7, :cond_4c

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v2, v6, v5}, Lfd;->f(III)Lln;

    move-result-object v2

    sget-object v7, Lln;->g:Lln;

    if-eq v2, v7, :cond_4c

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {p1, v4, v6, v2}, Lfd;->f(III)Lln;

    move-result-object v2

    sget-object v7, Lln;->g:Lln;

    if-eq v2, v7, :cond_4c

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p1, v4, v6, v2}, Lfd;->f(III)Lln;

    move-result-object v2

    sget-object v6, Lln;->g:Lln;

    if-ne v2, v6, :cond_6f

    :cond_4c
    const/4 v2, 0x3

    .line 21
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move v3, v0

    :goto_59
    if-ge v3, v2, :cond_6f

    .line 23
    sget-object v6, Luu;->aY:Luu;

    add-int v7, p4, v3

    invoke-virtual {v6, p1, v4, v7, v5}, Luu;->g(Lfd;III)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 24
    sget-object v6, Luu;->aY:Luu;

    iget v6, v6, Luu;->bn:I

    invoke-virtual {p1, v4, v7, v5, v6}, Lfd;->c(IIII)Z

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_72
    return v3
.end method
