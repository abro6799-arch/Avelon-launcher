###### Class defpackage.fj (fj)
.class public Lfj;
.super Lda;
.source "SourceFile"


# instance fields
.field private a:Lda;

.field private i:Lro;

.field private j:Lro;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Lda;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lda;-><init>()V

    .line 23
    iput-object p1, p0, Lfj;->a:Lda;

    return-void
.end method

.method public static a(Lnl;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 63
    :goto_0
    invoke-interface {p0, p1}, Lnl;->b(Ljava/lang/String;)Lei;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_18
    return-object p1
.end method

.method private k()V
    .registers 7

    .line 50
    iget-object v0, p0, Lfj;->i:Lro;

    invoke-virtual {v0}, Lro;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfj;->l:Ljava/lang/String;

    .line 52
    sget-object v0, Lfp;->b:[C

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_21

    aget-char v3, v0, v2

    .line 53
    iget-object v4, p0, Lfj;->l:Ljava/lang/String;

    const/16 v5, 0x5f

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lfj;->l:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 56
    :cond_21
    iget-object v0, p0, Lfj;->l:Ljava/lang/String;

    invoke-static {v0}, Lin;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "World"

    .line 57
    iput-object v0, p0, Lfj;->l:Ljava/lang/String;

    .line 59
    :cond_2d
    iget-object v0, p0, Lfj;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->c()Lnl;

    move-result-object v0

    iget-object v1, p0, Lfj;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lfj;->a(Lnl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfj;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 27
    iget-object v0, p0, Lfj;->i:Lro;

    invoke-virtual {v0}, Lro;->b()V

    .line 28
    iget-object v0, p0, Lfj;->j:Lro;

    invoke-virtual {v0}, Lro;->b()V

    return-void
.end method

.method protected a(CI)V
    .registers 4

    .line 106
    iget-object v0, p0, Lfj;->i:Lro;

    iget-boolean v0, v0, Lro;->a:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lfj;->i:Lro;

    invoke-virtual {v0, p1, p2}, Lro;->a(CI)V

    goto :goto_11

    .line 107
    :cond_c
    iget-object v0, p0, Lfj;->j:Lro;

    invoke-virtual {v0, p1, p2}, Lro;->a(CI)V

    :goto_11
    const/16 p2, 0xd

    const/4 v0, 0x0

    if-ne p1, p2, :cond_21

    .line 110
    iget-object p1, p0, Lfj;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lke;

    invoke-virtual {p0, p1}, Lfj;->a(Lke;)V

    .line 112
    :cond_21
    iget-object p1, p0, Lfj;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lke;

    iget-object p2, p0, Lfj;->i:Lro;

    invoke-virtual {p2}, Lro;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_36

    const/4 v0, 0x1

    :cond_36
    iput-boolean v0, p1, Lke;->g:Z

    .line 114
    invoke-direct {p0}, Lfj;->k()V

    return-void
.end method

.method public a(IIF)V
    .registers 11

    .line 127
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v6

    .line 130
    invoke-virtual {p0}, Lfj;->i()V

    .line 132
    iget-object v1, p0, Lfj;->g:Lsj;

    const-string v0, "selectWorld.create"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lfj;->c:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lfj;->d:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3c

    add-int/lit8 v4, v0, 0x14

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfj;->a(Lsj;Ljava/lang/String;III)V

    .line 133
    iget-object v1, p0, Lfj;->g:Lsj;

    const-string v0, "selectWorld.enterName"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lfj;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x64

    const/16 v4, 0x2f

    const v5, 0xa0a0a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfj;->b(Lsj;Ljava/lang/String;III)V

    .line 134
    iget-object v1, p0, Lfj;->g:Lsj;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectWorld.resultFolder"

    invoke-virtual {v6, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfj;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lfj;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x64

    const/16 v4, 0x55

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfj;->b(Lsj;Ljava/lang/String;III)V

    .line 136
    iget-object v1, p0, Lfj;->g:Lsj;

    const-string v0, "selectWorld.enterSeed"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lfj;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x64

    const/16 v4, 0x68

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfj;->b(Lsj;Ljava/lang/String;III)V

    .line 137
    iget-object v1, p0, Lfj;->g:Lsj;

    const-string v0, "selectWorld.seedInfo"

    invoke-virtual {v6, v0}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lfj;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x64

    const/16 v4, 0x8c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfj;->b(Lsj;Ljava/lang/String;III)V

    .line 139
    iget-object v0, p0, Lfj;->i:Lro;

    invoke-virtual {v0}, Lro;->c()V

    .line 140
    iget-object v0, p0, Lfj;->j:Lro;

    invoke-virtual {v0}, Lro;->c()V

    .line 142
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(III)V
    .registers 5

    .line 119
    invoke-super {p0, p1, p2, p3}, Lda;->a(III)V

    .line 121
    iget-object v0, p0, Lfj;->i:Lro;

    invoke-virtual {v0, p1, p2, p3}, Lro;->a(III)V

    .line 122
    iget-object v0, p0, Lfj;->j:Lro;

    invoke-virtual {v0, p1, p2, p3}, Lro;->a(III)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 9

    .line 74
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 75
    :cond_5
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 76
    iget-object p1, p0, Lfj;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Lfj;->a:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_66

    .line 77
    :cond_12
    iget p1, p1, Lke;->f:I

    if-nez p1, :cond_66

    .line 79
    iget-object p1, p0, Lfj;->b:Lnet/minecraft/client/Minecraft;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 80
    iget-boolean p1, p0, Lfj;->m:Z

    if-eqz p1, :cond_21

    return-void

    .line 81
    :cond_21
    iput-boolean v1, p0, Lfj;->m:Z

    .line 83
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 84
    iget-object p1, p0, Lfj;->j:Lro;

    invoke-virtual {p1}, Lro;->a()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Lin;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 89
    :try_start_38
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_3c} :catch_44

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_49

    move-wide v1, v3

    goto :goto_49

    .line 95
    :catch_44
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v1, p1

    .line 99
    :cond_49
    :goto_49
    iget-object p1, p0, Lfj;->b:Lnet/minecraft/client/Minecraft;

    new-instance v3, Los;

    iget-object v4, p0, Lfj;->b:Lnet/minecraft/client/Minecraft;

    invoke-direct {v3, v4}, Los;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v3, p1, Lnet/minecraft/client/Minecraft;->c:Lob;

    .line 100
    iget-object p1, p0, Lfj;->b:Lnet/minecraft/client/Minecraft;

    iget-object v3, p0, Lfj;->l:Ljava/lang/String;

    iget-object v4, p0, Lfj;->i:Lro;

    invoke-virtual {v4}, Lro;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v1, v2}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    iget-object p1, p0, Lfj;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public b()V
    .registers 16

    .line 33
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    invoke-static {v1}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    .line 36
    iget-object v2, p0, Lfj;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 37
    iget-object v2, p0, Lfj;->e:Ljava/util/List;

    new-instance v3, Lke;

    iget v4, p0, Lfj;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x64

    iget v5, p0, Lfj;->d:I

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x60

    add-int/lit8 v5, v5, 0xc

    const-string v6, "selectWorld.create"

    invoke-virtual {v0, v6}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v4, v5, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lfj;->e:Ljava/util/List;

    new-instance v3, Lke;

    iget v4, p0, Lfj;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x64

    iget v5, p0, Lfj;->d:I

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x78

    add-int/lit8 v5, v5, 0xc

    const-string v6, "gui.cancel"

    invoke-virtual {v0, v6}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lro;

    iget-object v9, p0, Lfj;->g:Lsj;

    iget v3, p0, Lfj;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v10, v3, -0x64

    const/16 v11, 0x3c

    const/16 v12, 0xc8

    const/16 v13, 0x14

    const-string v3, "selectWorld.newWorld"

    invoke-virtual {v0, v3}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v2

    move-object v8, p0

    invoke-direct/range {v7 .. v14}, Lro;-><init>(Lda;Lsj;IIIILjava/lang/String;)V

    iput-object v2, p0, Lfj;->i:Lro;

    .line 41
    iput-boolean v1, v2, Lro;->a:Z

    .line 42
    iget-object v0, p0, Lfj;->i:Lro;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lro;->a(I)V

    .line 44
    new-instance v0, Lro;

    iget-object v4, p0, Lfj;->g:Lsj;

    iget v1, p0, Lfj;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, -0x64

    const/16 v6, 0x74

    const/16 v7, 0xc8

    const/16 v8, 0x14

    const-string v9, ""

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lro;-><init>(Lda;Lsj;IIIILjava/lang/String;)V

    iput-object v0, p0, Lfj;->j:Lro;

    .line 46
    invoke-direct {p0}, Lfj;->k()V

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 70
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->enableRepeatEvents(Z)V

    return-void
.end method

.method public j()V
    .registers 4

    .line 146
    iget-object v0, p0, Lfj;->i:Lro;

    iget-boolean v0, v0, Lro;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Lfj;->i:Lro;

    invoke-virtual {v0, v1}, Lro;->a(Z)V

    .line 148
    iget-object v0, p0, Lfj;->j:Lro;

    invoke-virtual {v0, v2}, Lro;->a(Z)V

    goto :goto_1d

    .line 150
    :cond_13
    iget-object v0, p0, Lfj;->i:Lro;

    invoke-virtual {v0, v2}, Lro;->a(Z)V

    .line 151
    iget-object v0, p0, Lfj;->j:Lro;

    invoke-virtual {v0, v1}, Lro;->a(Z)V

    :goto_1d
    return-void
.end method
