###### Class defpackage.wx (wx)
.class public Lwx;
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

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_52

    const/16 v1, 0x8

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int v5, v2, v3

    const/4 v2, 0x4

    .line 12
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int v6, v3, v4

    .line 13
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int v7, v3, v1

    .line 14
    invoke-virtual {p1, v5, v6, v7}, Lfd;->d(III)Z

    move-result v1

    if-eqz v1, :cond_4f

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p1, v5, v1, v7}, Lfd;->a(III)I

    move-result v1

    sget-object v3, Luu;->v:Lwp;

    iget v3, v3, Lwp;->bn:I

    if-ne v1, v3, :cond_4f

    .line 15
    sget-object v1, Luu;->bb:Luu;

    invoke-virtual {v1, p1, v5, v6, v7}, Luu;->a(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 16
    sget-object v1, Luu;->bb:Luu;

    iget v8, v1, Luu;->bn:I

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lfd;->a(IIIII)Z

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_52
    const/4 p1, 0x1

    return p1
.end method
