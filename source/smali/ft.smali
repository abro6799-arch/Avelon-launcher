###### Class defpackage.ft (ft)
.class public Lft;
.super Lda;
.source "SourceFile"


# instance fields
.field protected a:Lda;

.field private i:I

.field private j:Ljava/lang/String;

.field private l:Lde;


# direct methods
.method public constructor <init>(Lda;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Lda;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lft;->i:I

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lft;->j:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lft;->a:Lda;

    return-void
.end method

.method static synthetic a(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic b(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic c(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic d(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic e(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic f(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic g(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic h(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic i(Lft;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic j(Lft;)Lsj;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->g:Lsj;

    return-object p0
.end method

.method static synthetic k(Lft;)Lsj;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->g:Lsj;

    return-object p0
.end method

.method static synthetic l(Lft;)Lsj;
    .registers 1

    .line 19
    iget-object p0, p0, Lft;->g:Lsj;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 105
    invoke-super {p0}, Lda;->a()V

    .line 106
    iget v0, p0, Lft;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lft;->i:I

    return-void
.end method

.method public a(IIF)V
    .registers 11

    .line 68
    iget-object v0, p0, Lft;->l:Lde;

    invoke-virtual {v0, p1, p2, p3}, Lde;->a(IIF)V

    .line 70
    iget v0, p0, Lft;->i:I

    if-gtz v0, :cond_16

    .line 71
    iget-object v0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->D:Lik;

    invoke-virtual {v0}, Lik;->a()V

    .line 72
    iget v0, p0, Lft;->i:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lft;->i:I

    .line 96
    :cond_16
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v6

    .line 98
    iget-object v1, p0, Lft;->g:Lsj;

    const-string v0, "texturePack.title"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lft;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lft;->a(Lsj;Ljava/lang/String;III)V

    .line 99
    iget-object v1, p0, Lft;->g:Lsj;

    const-string v0, "texturePack.folderInfo"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lft;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x4d

    iget v0, p0, Lft;->d:I

    add-int/lit8 v4, v0, -0x1a

    const v5, 0x808080

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lft;->a(Lsj;Ljava/lang/String;III)V

    .line 101
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(III)V
    .registers 4

    .line 59
    invoke-super {p0, p1, p2, p3}, Lda;->a(III)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 4

    .line 47
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 48
    :cond_5
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "file://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lft;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lwjgl/Sys;->openURL(Ljava/lang/String;)Z

    goto :goto_37

    .line 50
    :cond_1e
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_32

    .line 51
    iget-object p1, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {p1}, Lji;->b()V

    .line 52
    iget-object p1, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Lft;->a:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_37

    .line 54
    :cond_32
    iget-object v0, p0, Lft;->l:Lde;

    invoke-virtual {v0, p1}, Lde;->a(Lke;)V

    :goto_37
    return-void
.end method

.method public b()V
    .registers 8

    .line 34
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lft;->e:Ljava/util/List;

    new-instance v2, Lab;

    iget v3, p0, Lft;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit16 v3, v3, -0x9a

    iget v4, p0, Lft;->d:I

    add-int/lit8 v4, v4, -0x30

    const-string v5, "texturePack.openFolder"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v2, v6, v3, v4, v5}, Lab;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lft;->e:Ljava/util/List;

    new-instance v2, Lab;

    iget v3, p0, Lft;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lft;->d:I

    add-int/lit8 v4, v4, -0x30

    const-string v5, "gui.done"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x6

    invoke-direct {v2, v5, v3, v4, v0}, Lab;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lft;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->D:Lik;

    invoke-virtual {v0}, Lik;->a()V

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/minecraft/client/Minecraft;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "texturepacks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lft;->j:Ljava/lang/String;

    .line 42
    new-instance v0, Lde;

    invoke-direct {v0, p0}, Lde;-><init>(Lft;)V

    iput-object v0, p0, Lft;->l:Lde;

    .line 43
    iget-object v1, p0, Lft;->e:Ljava/util/List;

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lde;->a(Ljava/util/List;II)V

    return-void
.end method

.method protected b(III)V
    .registers 4

    .line 63
    invoke-super {p0, p1, p2, p3}, Lda;->b(III)V

    return-void
.end method
