###### Class defpackage.nj (nj)
.class public Lnj;
.super Lda;
.source "SourceFile"


# static fields
.field private static l:[Lht;


# instance fields
.field protected a:Ljava/lang/String;

.field private i:Lda;

.field private j:Lkv;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 12
    sget-object v0, Lht;->k:Lht;

    sget-object v1, Lht;->e:Lht;

    sget-object v2, Lht;->l:Lht;

    sget-object v3, Lht;->i:Lht;

    sget-object v4, Lht;->g:Lht;

    sget-object v5, Lht;->f:Lht;

    sget-object v6, Lht;->m:Lht;

    sget-object v7, Lht;->h:Lht;

    filled-new-array/range {v0 .. v7}, [Lht;

    move-result-object v0

    sput-object v0, Lnj;->l:[Lht;

    return-void
.end method

.method public constructor <init>(Lda;Lkv;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Lda;-><init>()V

    const-string v0, "Video Settings"

    .line 9
    iput-object v0, p0, Lnj;->a:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lnj;->i:Lda;

    .line 19
    iput-object p2, p0, Lnj;->j:Lkv;

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 10

    .line 60
    invoke-virtual {p0}, Lnj;->i()V

    .line 61
    iget-object v1, p0, Lnj;->g:Lsj;

    iget-object v2, p0, Lnj;->a:Ljava/lang/String;

    iget v0, p0, Lnj;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnj;->a(Lsj;Ljava/lang/String;III)V

    .line 62
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 5

    .line 43
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 44
    :cond_5
    iget v0, p1, Lke;->f:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    instance-of v0, p1, Lab;

    if-eqz v0, :cond_2a

    .line 45
    iget-object v0, p0, Lnj;->j:Lkv;

    move-object v1, p1

    check-cast v1, Lab;

    invoke-virtual {v1}, Lab;->a()Lht;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkv;->a(Lht;I)V

    .line 46
    iget-object v0, p0, Lnj;->j:Lkv;

    iget v1, p1, Lke;->f:I

    invoke-static {v1}, Lht;->a(I)Lht;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lke;->e:Ljava/lang/String;

    .line 48
    :cond_2a
    iget p1, p1, Lke;->f:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3e

    .line 49
    iget-object p1, p0, Lnj;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {p1}, Lkv;->b()V

    .line 50
    iget-object p1, p0, Lnj;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Lnj;->i:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 53
    :cond_3e
    new-instance p1, Lqq;

    iget-object v0, p0, Lnj;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v1, p0, Lnj;->b:Lnet/minecraft/client/Minecraft;

    iget v1, v1, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v2, p0, Lnj;->b:Lnet/minecraft/client/Minecraft;

    iget v2, v2, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {p1, v0, v1, v2}, Lqq;-><init>(Lkv;II)V

    .line 54
    invoke-virtual {p1}, Lqq;->a()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Lqq;->b()I

    move-result p1

    .line 56
    iget-object v1, p0, Lnj;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p0, v1, v0, p1}, Lnj;->a(Lnet/minecraft/client/Minecraft;II)V

    return-void
.end method

.method public b()V
    .registers 15

    .line 24
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    const-string v1, "options.videoTitle"

    .line 25
    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnj;->a:Ljava/lang/String;

    .line 28
    sget-object v1, Lnj;->l:[Lht;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v3, v2, :cond_79

    aget-object v9, v1, v3

    .line 29
    invoke-virtual {v9}, Lht;->a()Z

    move-result v5

    if-nez v5, :cond_45

    .line 30
    iget-object v11, p0, Lnj;->e:Ljava/util/List;

    new-instance v12, Lab;

    invoke-virtual {v9}, Lht;->c()I

    move-result v6

    iget v5, p0, Lnj;->c:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, -0x9b

    rem-int/lit8 v7, v4, 0x2

    mul-int/lit16 v7, v7, 0xa0

    add-int/2addr v7, v5

    iget v5, p0, Lnj;->d:I

    div-int/lit8 v5, v5, 0x6

    shr-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x18

    add-int/2addr v8, v5

    iget-object v5, p0, Lnj;->j:Lkv;

    invoke-virtual {v5, v9}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lab;-><init>(IIILht;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 32
    :cond_45
    iget-object v12, p0, Lnj;->e:Ljava/util/List;

    new-instance v13, Lvz;

    invoke-virtual {v9}, Lht;->c()I

    move-result v6

    iget v5, p0, Lnj;->c:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, -0x9b

    rem-int/lit8 v7, v4, 0x2

    mul-int/lit16 v7, v7, 0xa0

    add-int/2addr v7, v5

    iget v5, p0, Lnj;->d:I

    div-int/lit8 v5, v5, 0x6

    shr-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x18

    add-int/2addr v8, v5

    iget-object v5, p0, Lnj;->j:Lkv;

    invoke-virtual {v5, v9}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, p0, Lnj;->j:Lkv;

    invoke-virtual {v5, v9}, Lkv;->a(Lht;)F

    move-result v11

    move-object v5, v13

    invoke-direct/range {v5 .. v11}, Lvz;-><init>(IIILht;Ljava/lang/String;F)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_74
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 39
    :cond_79
    iget-object v1, p0, Lnj;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Lnj;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Lnj;->d:I

    div-int/lit8 v4, v4, 0x6

    add-int/lit16 v4, v4, 0xa8

    const-string v5, "gui.done"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xc8

    invoke-direct {v2, v5, v3, v4, v0}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
