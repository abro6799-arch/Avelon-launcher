###### Class defpackage.be (be)
.class public Lbe;
.super Lpg;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lpg;-><init>()V

    .line 12
    iput p1, p0, Lbe;->a:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 12

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_42

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x4

    .line 18
    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v4, v3

    .line 19
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr v3, v1

    .line 20
    invoke-virtual {p1, v2, v4, v3}, Lfd;->d(III)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 21
    sget-object v1, Luu;->m:[Luu;

    iget v5, p0, Lbe;->a:I

    aget-object v1, v1, v5

    check-cast v1, Lwb;

    invoke-virtual {v1, p1, v2, v4, v3}, Lwb;->g(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 22
    iget v1, p0, Lbe;->a:I

    invoke-virtual {p1, v2, v4, v3, v1}, Lfd;->c(IIII)Z

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_42
    const/4 p1, 0x1

    return p1
.end method
