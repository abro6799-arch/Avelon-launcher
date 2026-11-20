###### Class defpackage.up (up)
.class public Lup;
.super Lda;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field private i:Lda;

.field private j:Lkv;

.field private l:I


# direct methods
.method public constructor <init>(Lda;Lkv;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Lda;-><init>()V

    const-string v0, "Controls"

    .line 9
    iput-object v0, p0, Lup;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lup;->l:I

    .line 17
    iput-object p1, p0, Lup;->i:Lda;

    .line 18
    iput-object p2, p0, Lup;->j:Lkv;

    return-void
.end method

.method private k()I
    .registers 2

    .line 22
    iget v0, p0, Lup;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, -0x9b

    return v0
.end method


# virtual methods
.method protected a(CI)V
    .registers 4

    .line 51
    iget v0, p0, Lup;->l:I

    if-ltz v0, :cond_21

    .line 52
    iget-object p1, p0, Lup;->j:Lkv;

    invoke-virtual {p1, v0, p2}, Lkv;->a(II)V

    .line 53
    iget-object p1, p0, Lup;->e:Ljava/util/List;

    iget p2, p0, Lup;->l:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lke;

    iget-object p2, p0, Lup;->j:Lkv;

    iget v0, p0, Lup;->l:I

    invoke-virtual {p2, v0}, Lkv;->b(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lke;->e:Ljava/lang/String;

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lup;->l:I

    goto :goto_24

    .line 56
    :cond_21
    invoke-super {p0, p1, p2}, Lda;->a(CI)V

    :goto_24
    return-void
.end method

.method public a(IIF)V
    .registers 13

    .line 61
    invoke-virtual {p0}, Lup;->i()V

    .line 62
    iget-object v1, p0, Lup;->g:Lsj;

    iget-object v2, p0, Lup;->a:Ljava/lang/String;

    iget v0, p0, Lup;->c:I

    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lup;->a(Lsj;Ljava/lang/String;III)V

    .line 64
    invoke-direct {p0}, Lup;->k()I

    move-result v0

    const/4 v1, 0x0

    .line 65
    :goto_19
    iget-object v2, p0, Lup;->j:Lkv;

    iget-object v2, v2, Lkv;->w:[Lqb;

    array-length v2, v2

    if-ge v1, v2, :cond_44

    .line 66
    iget-object v4, p0, Lup;->g:Lsj;

    iget-object v2, p0, Lup;->j:Lkv;

    invoke-virtual {v2, v1}, Lkv;->a(I)Ljava/lang/String;

    move-result-object v5

    rem-int/lit8 v2, v1, 0x2

    mul-int/lit16 v2, v2, 0xa0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x46

    add-int/lit8 v6, v2, 0x6

    iget v2, p0, Lup;->d:I

    div-int/lit8 v2, v2, 0x6

    shr-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    add-int/lit8 v7, v2, 0x7

    const/4 v8, -0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lup;->b(Lsj;Ljava/lang/String;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 69
    :cond_44
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 5

    const/4 v0, 0x0

    .line 39
    :goto_1
    iget-object v1, p0, Lup;->j:Lkv;

    iget-object v1, v1, Lkv;->w:[Lqb;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 40
    iget-object v1, p0, Lup;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lke;

    iget-object v2, p0, Lup;->j:Lkv;

    invoke-virtual {v2, v0}, Lkv;->b(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lke;->e:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_1b
    iget v0, p1, Lke;->f:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_29

    .line 43
    iget-object p1, p0, Lup;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Lup;->i:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_4a

    .line 45
    :cond_29
    iget v0, p1, Lke;->f:I

    iput v0, p0, Lup;->l:I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lup;->j:Lkv;

    iget v2, p1, Lke;->f:I

    invoke-virtual {v1, v2}, Lkv;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lke;->e:Ljava/lang/String;

    :goto_4a
    return-void
.end method

.method public b()V
    .registers 13

    .line 27
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lup;->k()I

    move-result v1

    const/4 v2, 0x0

    .line 30
    :goto_9
    iget-object v3, p0, Lup;->j:Lkv;

    iget-object v3, v3, Lkv;->w:[Lqb;

    array-length v3, v3

    if-ge v2, v3, :cond_39

    .line 31
    iget-object v10, p0, Lup;->e:Ljava/util/List;

    new-instance v11, Lab;

    rem-int/lit8 v3, v2, 0x2

    mul-int/lit16 v3, v3, 0xa0

    add-int v5, v1, v3

    iget v3, p0, Lup;->d:I

    div-int/lit8 v3, v3, 0x6

    shr-int/lit8 v4, v2, 0x1

    mul-int/lit8 v4, v4, 0x18

    add-int v6, v3, v4

    const/16 v7, 0x46

    const/16 v8, 0x14

    iget-object v3, p0, Lup;->j:Lkv;

    invoke-virtual {v3, v2}, Lkv;->b(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, v11

    move v4, v2

    invoke-direct/range {v3 .. v9}, Lab;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 34
    :cond_39
    iget-object v1, p0, Lup;->e:Ljava/util/List;

    new-instance v2, Lke;

    iget v3, p0, Lup;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Lup;->d:I

    div-int/lit8 v4, v4, 0x6

    add-int/lit16 v4, v4, 0xa8

    const-string v5, "gui.done"

    invoke-virtual {v0, v5}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-direct {v2, v6, v3, v4, v5}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "controls.title"

    .line 35
    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lup;->a:Ljava/lang/String;

    return-void
.end method
