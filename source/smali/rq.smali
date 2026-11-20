###### Class defpackage.rq (rq)
.class public Lrq;
.super Lda;
.source "SourceFile"


# instance fields
.field protected a:Lda;

.field protected i:Ljava/lang/String;

.field private final j:Ljava/text/DateFormat;

.field private l:Z

.field private m:I

.field private n:Ljava/util/List;

.field private o:Lmg;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lke;

.field private t:Lke;

.field private u:Lke;


# direct methods
.method public constructor <init>(Lda;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lda;-><init>()V

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lrq;->j:Ljava/text/DateFormat;

    const-string v0, "Select world"

    .line 32
    iput-object v0, p0, Lrq;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lrq;->l:Z

    .line 46
    iput-object p1, p0, Lrq;->a:Lda;

    return-void
.end method

.method static synthetic a(Lrq;I)I
    .registers 2

    .line 19
    iput p1, p0, Lrq;->m:I

    return p1
.end method

.method static synthetic a(Lrq;)Ljava/util/List;
    .registers 1

    .line 19
    iget-object p0, p0, Lrq;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lrq;)I
    .registers 1

    .line 19
    iget p0, p0, Lrq;->m:I

    return p0
.end method

.method static synthetic c(Lrq;)Lke;
    .registers 1

    .line 19
    iget-object p0, p0, Lrq;->t:Lke;

    return-object p0
.end method

.method static synthetic d(Lrq;)Lke;
    .registers 1

    .line 19
    iget-object p0, p0, Lrq;->s:Lke;

    return-object p0
.end method

.method static synthetic e(Lrq;)Lke;
    .registers 1

    .line 19
    iget-object p0, p0, Lrq;->u:Lke;

    return-object p0
.end method

.method static synthetic f(Lrq;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lrq;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lrq;)Ljava/text/DateFormat;
    .registers 1

    .line 19
    iget-object p0, p0, Lrq;->j:Ljava/text/DateFormat;

    return-object p0
.end method

.method static synthetic h(Lrq;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lrq;->q:Ljava/lang/String;

    return-object p0
.end method

.method private l()V
    .registers 2

    .line 65
    iget-object v0, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->c()Lnl;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lnl;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrq;->n:Ljava/util/List;

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lrq;->m:I

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 11

    .line 178
    iget-object v0, p0, Lrq;->o:Lmg;

    invoke-virtual {v0, p1, p2, p3}, Lmg;->a(IIF)V

    .line 180
    iget-object v2, p0, Lrq;->g:Lsj;

    iget-object v3, p0, Lrq;->i:Ljava/lang/String;

    iget v0, p0, Lrq;->c:I

    div-int/lit8 v4, v0, 0x2

    const/16 v5, 0x14

    const v6, 0xffffff

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lrq;->a(Lsj;Ljava/lang/String;III)V

    .line 182
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 11

    .line 105
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 106
    :cond_5
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_56

    .line 107
    iget p1, p0, Lrq;->m:I

    invoke-virtual {p0, p1}, Lrq;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 109
    iput-boolean v2, p0, Lrq;->r:Z

    .line 111
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    const-string v1, "selectWorld.deleteQuestion"

    .line 112
    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "selectWorld.deleteWarning"

    invoke-virtual {v0, p1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "selectWorld.deleteButton"

    .line 114
    invoke-virtual {v0, p1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "gui.cancel"

    .line 115
    invoke-virtual {v0, p1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    new-instance p1, Lqt;

    iget v8, p0, Lrq;->m:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lqt;-><init>(Lda;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0, p1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_97

    .line 120
    :cond_56
    iget v0, p1, Lke;->f:I

    if-ne v0, v2, :cond_60

    .line 121
    iget p1, p0, Lrq;->m:I

    invoke-virtual {p0, p1}, Lrq;->e(I)V

    goto :goto_97

    .line 122
    :cond_60
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_70

    .line 124
    iget-object p1, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Lfj;

    invoke-direct {v0, p0}, Lfj;-><init>(Lda;)V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_97

    .line 135
    :cond_70
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_86

    .line 136
    iget-object p1, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    new-instance v0, Ljk;

    iget v1, p0, Lrq;->m:I

    invoke-virtual {p0, v1}, Lrq;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljk;-><init>(Lda;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_97

    .line 137
    :cond_86
    iget v0, p1, Lke;->f:I

    if-nez v0, :cond_92

    .line 138
    iget-object p1, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Lrq;->a:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_97

    .line 140
    :cond_92
    iget-object v0, p0, Lrq;->o:Lmg;

    invoke-virtual {v0, p1}, Lmg;->a(Lke;)V

    :cond_97
    :goto_97
    return-void
.end method

.method public a(ZI)V
    .registers 4

    .line 163
    iget-boolean v0, p0, Lrq;->r:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lrq;->r:Z

    if-eqz p1, :cond_1c

    .line 166
    iget-object p1, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1}, Lnet/minecraft/client/Minecraft;->c()Lnl;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Lnl;->c()V

    .line 168
    invoke-virtual {p0, p2}, Lrq;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lnl;->c(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lrq;->l()V

    .line 172
    :cond_1c
    iget-object p1, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1, p0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_21
    return-void
.end method

.method public b()V
    .registers 5

    .line 51
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    const-string v1, "selectWorld.title"

    .line 52
    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lrq;->i:Ljava/lang/String;

    const-string v1, "selectWorld.world"

    .line 54
    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lrq;->p:Ljava/lang/String;

    const-string v1, "selectWorld.conversion"

    .line 55
    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrq;->q:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lrq;->l()V

    .line 58
    new-instance v0, Lmg;

    invoke-direct {v0, p0}, Lmg;-><init>(Lrq;)V

    iput-object v0, p0, Lrq;->o:Lmg;

    .line 59
    iget-object v1, p0, Lrq;->e:Ljava/util/List;

    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lmg;->a(Ljava/util/List;II)V

    .line 61
    invoke-virtual {p0}, Lrq;->k()V

    return-void
.end method

.method protected c(I)Ljava/lang/String;
    .registers 3

    .line 72
    iget-object v0, p0, Lrq;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvb;

    invoke-virtual {p1}, Lvb;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d(I)Ljava/lang/String;
    .registers 5

    .line 76
    iget-object v0, p0, Lrq;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb;

    invoke-virtual {v0}, Lvb;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 78
    invoke-static {v0}, Lin;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 79
    :cond_14
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectWorld.world"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_34
    return-object v0
.end method

.method public e(I)V
    .registers 7

    .line 145
    iget-object v0, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 146
    iget-boolean v0, p0, Lrq;->l:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lrq;->l:Z

    .line 151
    iget-object v0, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    new-instance v2, Los;

    iget-object v3, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    invoke-direct {v2, v3}, Los;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v2, v0, Lnet/minecraft/client/Minecraft;->c:Lob;

    .line 154
    invoke-virtual {p0, p1}, Lrq;->c(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "World"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_2d
    iget-object v2, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p0, p1}, Lrq;->d(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, p1, v3, v4}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 159
    iget-object p1, p0, Lrq;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public k()V
    .registers 11

    .line 87
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lrq;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x1

    iget v2, p0, Lrq;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v4, v2, -0x9a

    iget v2, p0, Lrq;->d:I

    add-int/lit8 v5, v2, -0x34

    const/16 v6, 0x96

    const/16 v7, 0x14

    const-string v2, "selectWorld.select"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    iput-object v9, p0, Lrq;->t:Lke;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lrq;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x6

    iget v2, p0, Lrq;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v4, v2, -0x9a

    iget v2, p0, Lrq;->d:I

    add-int/lit8 v5, v2, -0x1c

    const/16 v6, 0x46

    const-string v2, "selectWorld.rename"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    iput-object v9, p0, Lrq;->s:Lke;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lrq;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x2

    iget v2, p0, Lrq;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, -0x4a

    iget v2, p0, Lrq;->d:I

    add-int/lit8 v5, v2, -0x1c

    const-string v2, "selectWorld.delete"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    iput-object v9, p0, Lrq;->u:Lke;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lrq;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x3

    iget v2, p0, Lrq;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0x4

    iget v2, p0, Lrq;->d:I

    add-int/lit8 v5, v2, -0x34

    const/16 v6, 0x96

    const-string v2, "selectWorld.create"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lrq;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x0

    iget v2, p0, Lrq;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0x4

    iget v2, p0, Lrq;->d:I

    add-int/lit8 v5, v2, -0x1c

    const-string v2, "gui.cancel"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lrq;->t:Lke;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lke;->g:Z

    .line 100
    iget-object v0, p0, Lrq;->s:Lke;

    iput-boolean v1, v0, Lke;->g:Z

    .line 101
    iget-object v0, p0, Lrq;->u:Lke;

    iput-boolean v1, v0, Lke;->g:Z

    return-void
.end method
