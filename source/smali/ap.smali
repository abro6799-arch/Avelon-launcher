###### Class defpackage.ap (ap)
.class public Lap;
.super Lpg;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 13
    invoke-direct {p0}, Lpg;-><init>()V

    .line 14
    iput p1, p0, Lap;->a:I

    .line 15
    iput p2, p0, Lap;->b:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 16

    .line 20
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
    const/16 v1, 0x80

    if-ge v0, v1, :cond_59

    const/16 v1, 0x8

    .line 24
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int v5, v2, v3

    const/4 v2, 0x4

    .line 25
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v6, v3, v2

    .line 26
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int v7, v2, v1

    .line 27
    invoke-virtual {p1, v5, v6, v7}, Lfd;->d(III)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 28
    sget-object v1, Luu;->m:[Luu;

    iget v2, p0, Lap;->a:I

    aget-object v1, v1, v2

    check-cast v1, Lwb;

    invoke-virtual {v1, p1, v5, v6, v7}, Lwb;->g(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 29
    iget v8, p0, Lap;->a:I

    iget v9, p0, Lap;->b:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lfd;->a(IIIII)Z

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_59
    const/4 p1, 0x1

    return p1
.end method
