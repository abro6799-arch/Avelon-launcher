###### Class defpackage.ex (ex)
.class public Lex;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Lda;-><init>()V

    .line 13
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lex;->a:Ljava/lang/String;

    if-eqz p3, :cond_16

    .line 17
    invoke-virtual {v0, p2, p3}, Lnh;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lex;->i:Ljava/lang/String;

    goto :goto_1c

    .line 19
    :cond_16
    invoke-virtual {v0, p2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lex;->i:Ljava/lang/String;

    :goto_1c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method protected a(CI)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 16

    .line 44
    invoke-virtual {p0}, Lex;->i()V

    .line 46
    iget-object v1, p0, Lex;->g:Lsj;

    iget-object v2, p0, Lex;->a:Ljava/lang/String;

    iget v0, p0, Lex;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lex;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x32

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lex;->a(Lsj;Ljava/lang/String;III)V

    .line 47
    iget-object v7, p0, Lex;->g:Lsj;

    iget-object v8, p0, Lex;->i:Ljava/lang/String;

    iget v0, p0, Lex;->c:I

    div-int/lit8 v9, v0, 0x2

    iget v0, p0, Lex;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v10, v0, -0xa

    const v11, 0xffffff

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lex;->a(Lsj;Ljava/lang/String;III)V

    .line 49
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 3

    .line 38
    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_e

    .line 39
    iget-object p1, p0, Lex;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Lfu;

    invoke-direct {v0}, Lfu;-><init>()V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_e
    return-void
.end method

.method public b()V
    .registers 7

    .line 31
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lex;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34
    iget-object v1, p0, Lex;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Lex;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Lex;->d:I

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x78

    add-int/lit8 v4, v4, 0xc

    const-string v5, "gui.toMenu"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4, v0}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
