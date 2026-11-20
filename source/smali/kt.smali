###### Class defpackage.kt (kt)
.class public Lkt;
.super Lpg;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lpg;-><init>()V

    .line 13
    iput p1, p0, Lkt;->a:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 12

    .line 18
    :goto_0
    invoke-virtual {p1, p3, p4, p5}, Lfd;->a(III)I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v1, Luu;->L:Lbk;

    iget v1, v1, Lbk;->bn:I

    if-ne v0, v1, :cond_11

    :cond_c
    if-lez p4, :cond_11

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/4 v1, 0x4

    if-ge v0, v1, :cond_51

    const/16 v2, 0x8

    .line 22
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 23
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr v4, v1

    .line 24
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 25
    invoke-virtual {p1, v3, v4, v1}, Lfd;->d(III)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 26
    sget-object v2, Luu;->m:[Luu;

    iget v5, p0, Lkt;->a:I

    aget-object v2, v2, v5

    check-cast v2, Lwb;

    invoke-virtual {v2, p1, v3, v4, v1}, Lwb;->g(Lfd;III)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 27
    iget v2, p0, Lkt;->a:I

    invoke-virtual {p1, v3, v4, v1, v2}, Lfd;->c(IIII)Z

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_51
    const/4 p1, 0x1

    return p1
.end method
