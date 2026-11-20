###### Class defpackage.co (co)
.class public Lco;
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
    .registers 5

    .line 14
    sget-object v0, Lht;->a:Lht;

    sget-object v1, Lht;->b:Lht;

    sget-object v2, Lht;->c:Lht;

    sget-object v3, Lht;->d:Lht;

    sget-object v4, Lht;->j:Lht;

    filled-new-array {v0, v1, v2, v3, v4}, [Lht;

    move-result-object v0

    sput-object v0, Lco;->l:[Lht;

    return-void
.end method

.method public constructor <init>(Lda;Lkv;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Lda;-><init>()V

    const-string v0, "Options"

    .line 11
    iput-object v0, p0, Lco;->a:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lco;->i:Lda;

    .line 20
    iput-object p2, p0, Lco;->j:Lkv;

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 10

    .line 64
    invoke-virtual {p0}, Lco;->i()V

    .line 65
    iget-object v1, p0, Lco;->g:Lsj;

    iget-object v2, p0, Lco;->a:Ljava/lang/String;

    iget v0, p0, Lco;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lco;->a(Lsj;Ljava/lang/String;III)V

    .line 66
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 6

    .line 44
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 45
    :cond_5
    iget v0, p1, Lke;->f:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    instance-of v0, p1, Lab;

    if-eqz v0, :cond_2a

    .line 46
    iget-object v0, p0, Lco;->j:Lkv;

    move-object v2, p1

    check-cast v2, Lab;

    invoke-virtual {v2}, Lab;->a()Lht;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lkv;->a(Lht;I)V

    .line 47
    iget-object v0, p0, Lco;->j:Lkv;

    iget v2, p1, Lke;->f:I

    invoke-static {v2}, Lht;->a(I)Lht;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lke;->e:Ljava/lang/String;

    .line 49
    :cond_2a
    iget v0, p1, Lke;->f:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_43

    .line 50
    iget-object v0, p0, Lco;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {v0}, Lkv;->b()V

    .line 51
    iget-object v0, p0, Lco;->b:Lnet/minecraft/client/Minecraft;

    new-instance v2, Lnj;

    iget-object v3, p0, Lco;->j:Lkv;

    invoke-direct {v2, p0, v3}, Lnj;-><init>(Lda;Lkv;)V

    invoke-virtual {v0, v2}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 53
    :cond_43
    iget v0, p1, Lke;->f:I

    if-ne v0, v1, :cond_5a

    .line 54
    iget-object v0, p0, Lco;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {v0}, Lkv;->b()V

    .line 55
    iget-object v0, p0, Lco;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lup;

    iget-object v2, p0, Lco;->j:Lkv;

    invoke-direct {v1, p0, v2}, Lup;-><init>(Lda;Lkv;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 57
    :cond_5a
    iget p1, p1, Lke;->f:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6e

    .line 58
    iget-object p1, p0, Lco;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {p1}, Lkv;->b()V

    .line 59
    iget-object p1, p0, Lco;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Lco;->i:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_6e
    return-void
.end method

.method public b()V
    .registers 15

    .line 25
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    const-string v1, "options.title"

    .line 26
    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco;->a:Ljava/lang/String;

    .line 29
    sget-object v1, Lco;->l:[Lht;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v3, v2, :cond_79

    aget-object v9, v1, v3

    .line 30
    invoke-virtual {v9}, Lht;->a()Z

    move-result v5

    if-nez v5, :cond_45

    .line 31
    iget-object v11, p0, Lco;->e:Ljava/util/List;

    new-instance v12, Lab;

    invoke-virtual {v9}, Lht;->c()I

    move-result v6

    iget v5, p0, Lco;->c:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, -0x9b

    rem-int/lit8 v7, v4, 0x2

    mul-int/lit16 v7, v7, 0xa0

    add-int/2addr v7, v5

    iget v5, p0, Lco;->d:I

    div-int/lit8 v5, v5, 0x6

    shr-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x18

    add-int/2addr v8, v5

    iget-object v5, p0, Lco;->j:Lkv;

    invoke-virtual {v5, v9}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lab;-><init>(IIILht;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 33
    :cond_45
    iget-object v12, p0, Lco;->e:Ljava/util/List;

    new-instance v13, Lvz;

    invoke-virtual {v9}, Lht;->c()I

    move-result v6

    iget v5, p0, Lco;->c:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, -0x9b

    rem-int/lit8 v7, v4, 0x2

    mul-int/lit16 v7, v7, 0xa0

    add-int/2addr v7, v5

    iget v5, p0, Lco;->d:I

    div-int/lit8 v5, v5, 0x6

    shr-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x18

    add-int/2addr v8, v5

    iget-object v5, p0, Lco;->j:Lkv;

    invoke-virtual {v5, v9}, Lkv;->c(Lht;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, p0, Lco;->j:Lkv;

    invoke-virtual {v5, v9}, Lkv;->a(Lht;)F

    move-result v11

    move-object v5, v13

    invoke-direct/range {v5 .. v11}, Lvz;-><init>(IIILht;Ljava/lang/String;F)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_74
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 38
    :cond_79
    iget-object v1, p0, Lco;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Lco;->c:I

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0x64

    sub-int/2addr v3, v4

    iget v5, p0, Lco;->d:I

    div-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x60

    add-int/lit8 v5, v5, 0xc

    const-string v6, "options.video"

    invoke-virtual {v0, v6}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x65

    invoke-direct {v2, v7, v3, v5, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lco;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Lco;->c:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v4

    iget v5, p0, Lco;->d:I

    div-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x78

    add-int/lit8 v5, v5, 0xc

    const-string v6, "options.controls"

    invoke-virtual {v0, v6}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v3, v5, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lco;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Lco;->c:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lco;->d:I

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
