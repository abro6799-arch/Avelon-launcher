###### Class defpackage.lq (lq)
.class public Llq;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Lda;

.field private i:Lro;


# direct methods
.method public constructor <init>(Lda;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lda;-><init>()V

    .line 14
    iput-object p1, p0, Llq;->a:Lda;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .registers 3

    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    return p2
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 18
    iget-object v0, p0, Llq;->i:Lro;

    invoke-virtual {v0}, Lro;->b()V

    return-void
.end method

.method protected a(CI)V
    .registers 4

    .line 87
    iget-object v0, p0, Llq;->i:Lro;

    invoke-virtual {v0, p1, p2}, Lro;->a(CI)V

    const/16 p2, 0xd

    const/4 v0, 0x0

    if-ne p1, p2, :cond_15

    .line 90
    iget-object p1, p0, Llq;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lke;

    invoke-virtual {p0, p1}, Llq;->a(Lke;)V

    .line 92
    :cond_15
    iget-object p1, p0, Llq;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lke;

    iget-object p2, p0, Llq;->i:Lro;

    invoke-virtual {p2}, Lro;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    iput-boolean v0, p1, Lke;->g:Z

    return-void
.end method

.method public a(IIF)V
    .registers 11

    .line 104
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v6

    .line 107
    invoke-virtual {p0}, Llq;->i()V

    .line 109
    iget-object v1, p0, Llq;->g:Lsj;

    const-string v0, "multiplayer.title"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Llq;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Llq;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v4, v0, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Llq;->a(Lsj;Ljava/lang/String;III)V

    .line 110
    iget-object v1, p0, Llq;->g:Lsj;

    const-string v0, "multiplayer.info1"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Llq;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Llq;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x0

    const v5, 0xa0a0a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Llq;->b(Lsj;Ljava/lang/String;III)V

    .line 111
    iget-object v1, p0, Llq;->g:Lsj;

    const-string v0, "multiplayer.info2"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Llq;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Llq;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Llq;->b(Lsj;Ljava/lang/String;III)V

    .line 112
    iget-object v1, p0, Llq;->g:Lsj;

    const-string v0, "multiplayer.ipinfo"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Llq;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, -0x8c

    iget v0, p0, Llq;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v4, v0, 0x24

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Llq;->b(Lsj;Ljava/lang/String;III)V

    .line 114
    iget-object v0, p0, Llq;->i:Lro;

    invoke-virtual {v0}, Lro;->c()V

    .line 116
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(III)V
    .registers 5

    .line 97
    invoke-super {p0, p1, p2, p3}, Lda;->a(III)V

    .line 99
    iget-object v0, p0, Llq;->i:Lro;

    invoke-virtual {v0, p1, p2, p3}, Lro;->a(III)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 9

    .line 42
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 43
    :cond_5
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 44
    iget-object p1, p0, Llq;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Llq;->a:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto/16 :goto_92

    .line 45
    :cond_13
    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_92

    .line 46
    iget-object p1, p0, Llq;->i:Lro;

    invoke-virtual {p1}, Lro;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Llq;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    const-string v2, "_"

    const-string v3, ":"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lkv;->C:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Llq;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {v0}, Lkv;->b()V

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "["

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string v2, "]"

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_70

    .line 55
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6c

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 64
    :cond_6c
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_70
    :goto_70
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_78

    .line 71
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_78
    iget-object p1, p0, Llq;->b:Lnet/minecraft/client/Minecraft;

    new-instance v2, Lvx;

    iget-object v3, p0, Llq;->b:Lnet/minecraft/client/Minecraft;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    array-length v5, v0

    const/16 v6, 0x63dd

    if-le v5, v1, :cond_8c

    aget-object v0, v0, v1

    invoke-direct {p0, v0, v6}, Llq;->a(Ljava/lang/String;I)I

    move-result v6

    :cond_8c
    invoke-direct {v2, v3, v4, v6}, Lvx;-><init>(Lnet/minecraft/client/Minecraft;Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public b()V
    .registers 11

    .line 23
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    const/4 v8, 0x1

    .line 25
    invoke-static {v8}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    .line 26
    iget-object v1, p0, Llq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 27
    iget-object v1, p0, Llq;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Llq;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Llq;->d:I

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x60

    add-int/lit8 v4, v4, 0xc

    const-string v5, "multiplayer.connect"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4, v5}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, p0, Llq;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Llq;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Llq;->d:I

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x78

    add-int/lit8 v4, v4, 0xc

    const-string v5, "gui.cancel"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v3, v4, v0}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Llq;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v0, v0, Lkv;->C:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 30
    iget-object v0, p0, Llq;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lke;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_67

    move v6, v8

    :cond_67
    iput-boolean v6, v0, Lke;->g:Z

    .line 32
    new-instance v9, Lro;

    iget-object v2, p0, Llq;->g:Lsj;

    iget v0, p0, Llq;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x64

    iget v0, p0, Llq;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x32

    add-int/lit8 v4, v0, 0x12

    const/16 v5, 0xc8

    const/16 v6, 0x14

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lro;-><init>(Lda;Lsj;IIIILjava/lang/String;)V

    iput-object v9, p0, Llq;->i:Lro;

    .line 33
    iput-boolean v8, v9, Lro;->a:Z

    .line 34
    iget-object v0, p0, Llq;->i:Lro;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lro;->a(I)V

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    return-void
.end method
