###### Class defpackage.dv (dv)
.class public Ldv;
.super Lda;
.source "SourceFile"


# static fields
.field private static j:Lbb;


# instance fields
.field protected a:Lda;

.field protected i:Ljava/lang/String;

.field private l:Lsu;

.field private m:Lci;

.field private n:Lga;

.field private o:Lxi;

.field private p:Llg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lbb;

    invoke-direct {v0}, Lbb;-><init>()V

    sput-object v0, Ldv;->j:Lbb;

    return-void
.end method

.method public constructor <init>(Lda;Lxi;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Lda;-><init>()V

    const-string v0, "Select world"

    .line 38
    iput-object v0, p0, Ldv;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Ldv;->p:Llg;

    .line 47
    iput-object p1, p0, Ldv;->a:Lda;

    .line 48
    iput-object p2, p0, Ldv;->o:Lxi;

    return-void
.end method

.method static synthetic a(Ldv;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method private a(II)V
    .registers 4

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, v0, v0}, Ldv;->c(IIII)V

    return-void
.end method

.method static synthetic a(Ldv;III)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Ldv;->c(III)V

    return-void
.end method

.method static synthetic a(Ldv;IIII)V
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Ldv;->c(IIII)V

    return-void
.end method

.method static synthetic a(Ldv;IIIIII)V
    .registers 7

    .line 28
    invoke-virtual/range {p0 .. p6}, Ldv;->a(IIIIII)V

    return-void
.end method

.method static synthetic b(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic b(Ldv;IIIIII)V
    .registers 7

    .line 28
    invoke-virtual/range {p0 .. p6}, Ldv;->a(IIIIII)V

    return-void
.end method

.method static synthetic c(Ldv;)Lxi;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->o:Lxi;

    return-object p0
.end method

.method private c(III)V
    .registers 16

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 169
    invoke-direct {p0, v0, v1}, Ldv;->a(II)V

    const v0, 0x803a    # 4.5999E-41f

    .line 171
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 173
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    .line 174
    invoke-static {v3, v1, v2, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 175
    invoke-static {}, Lu;->b()V

    .line 176
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 178
    sget-object v4, Ldv;->j:Lbb;

    iget-object v5, p0, Ldv;->g:Lsj;

    iget-object v1, p0, Ldv;->b:Lnet/minecraft/client/Minecraft;

    iget-object v6, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const/4 v8, 0x0

    sget-object v1, Lgm;->c:[Lgm;

    aget-object v1, v1, p3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgm;->a(I)I

    move-result v9

    add-int/lit8 v10, p1, 0x2

    add-int/lit8 v11, p2, 0x2

    move v7, p3

    invoke-virtual/range {v4 .. v11}, Lbb;->a(Lsj;Lji;IIIII)V

    .line 179
    invoke-static {}, Lu;->a()V

    .line 181
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method private c(IIII)V
    .registers 30

    move-object/from16 v0, p0

    .line 189
    iget-object v1, v0, Ldv;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v2, "/gui/slot.png"

    invoke-virtual {v1, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 190
    invoke-static {v2, v2, v2, v2}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 191
    iget-object v2, v0, Ldv;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v2, v1}, Lji;->b(I)V

    .line 197
    sget-object v1, Lnw;->a:Lnw;

    .line 198
    invoke-virtual {v1}, Lnw;->b()V

    add-int/lit8 v2, p1, 0x0

    int-to-double v14, v2

    add-int/lit8 v2, p2, 0x12

    int-to-double v12, v2

    .line 199
    iget v2, v0, Ldv;->k:F

    float-to-double v8, v2

    add-int/lit8 v2, p3, 0x0

    int-to-float v2, v2

    const/high16 v16, 0x3c000000    # 0.0078125f

    mul-float v2, v2, v16

    float-to-double v10, v2

    add-int/lit8 v2, p4, 0x12

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-double v6, v2

    move-object v3, v1

    move-wide v4, v14

    move-wide/from16 v17, v6

    move-wide v6, v12

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    move-wide/from16 v12, v17

    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    add-int/lit8 v2, p1, 0x12

    int-to-double v12, v2

    .line 200
    iget v2, v0, Ldv;->k:F

    float-to-double v8, v2

    add-int/lit8 v2, p3, 0x12

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-double v10, v2

    move-wide v4, v12

    move-wide/from16 v6, v21

    move-wide/from16 v21, v10

    move-wide/from16 v23, v12

    move-wide/from16 v12, v17

    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    add-int/lit8 v2, p2, 0x0

    int-to-double v12, v2

    .line 201
    iget v2, v0, Ldv;->k:F

    float-to-double v8, v2

    add-int/lit8 v2, p4, 0x0

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-double v10, v2

    move-wide/from16 v4, v23

    move-wide v6, v12

    move-wide/from16 v16, v10

    move-wide/from16 v10, v21

    move-wide/from16 v21, v12

    move-wide/from16 v12, v16

    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    .line 202
    iget v2, v0, Ldv;->k:F

    float-to-double v8, v2

    move-wide v4, v14

    move-wide/from16 v6, v21

    move-wide/from16 v10, v19

    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    .line 203
    invoke-virtual {v1}, Lnw;->a()V

    return-void
.end method

.method static synthetic d(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic e(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic f(Ldv;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic g(Ldv;)Lnet/minecraft/client/Minecraft;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->b:Lnet/minecraft/client/Minecraft;

    return-object p0
.end method

.method static synthetic h(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic i(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic j(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic k(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic l(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic m(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic n(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method

.method static synthetic o(Ldv;)Lsj;
    .registers 1

    .line 28
    iget-object p0, p0, Ldv;->g:Lsj;

    return-object p0
.end method


# virtual methods
.method public a(IIF)V
    .registers 11

    .line 102
    iget-object v0, p0, Ldv;->p:Llg;

    invoke-virtual {v0, p1, p2, p3}, Llg;->a(IIF)V

    .line 104
    iget-object v2, p0, Ldv;->g:Lsj;

    iget-object v3, p0, Ldv;->i:Ljava/lang/String;

    iget v0, p0, Ldv;->c:I

    div-int/lit8 v4, v0, 0x2

    const/16 v5, 0x14

    const v6, 0xffffff

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ldv;->a(Lsj;Ljava/lang/String;III)V

    .line 106
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 4

    .line 87
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 88
    :cond_5
    iget v0, p1, Lke;->f:I

    if-nez v0, :cond_11

    .line 89
    iget-object p1, p0, Ldv;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, p0, Ldv;->a:Lda;

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_34

    .line 90
    :cond_11
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 91
    iget-object p1, p0, Ldv;->l:Lsu;

    iput-object p1, p0, Ldv;->p:Llg;

    goto :goto_34

    .line 92
    :cond_1b
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 93
    iget-object p1, p0, Ldv;->m:Lci;

    iput-object p1, p0, Ldv;->p:Llg;

    goto :goto_34

    .line 94
    :cond_25
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 95
    iget-object p1, p0, Ldv;->n:Lga;

    iput-object p1, p0, Ldv;->p:Llg;

    goto :goto_34

    .line 97
    :cond_2f
    iget-object v0, p0, Ldv;->p:Llg;

    invoke-virtual {v0, p1}, Llg;->a(Lke;)V

    :goto_34
    return-void
.end method

.method public b()V
    .registers 4

    const-string v0, "gui.stats"

    .line 52
    invoke-static {v0}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldv;->i:Ljava/lang/String;

    .line 54
    new-instance v0, Lsu;

    invoke-direct {v0, p0}, Lsu;-><init>(Ldv;)V

    iput-object v0, p0, Ldv;->l:Lsu;

    .line 55
    iget-object v1, p0, Ldv;->e:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lsu;->a(Ljava/util/List;II)V

    .line 57
    new-instance v0, Lci;

    invoke-direct {v0, p0}, Lci;-><init>(Ldv;)V

    iput-object v0, p0, Ldv;->m:Lci;

    .line 58
    iget-object v1, p0, Ldv;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lci;->a(Ljava/util/List;II)V

    .line 60
    new-instance v0, Lga;

    invoke-direct {v0, p0}, Lga;-><init>(Ldv;)V

    iput-object v0, p0, Ldv;->n:Lga;

    .line 61
    iget-object v1, p0, Ldv;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lga;->a(Ljava/util/List;II)V

    .line 63
    iget-object v0, p0, Ldv;->l:Lsu;

    iput-object v0, p0, Ldv;->p:Llg;

    .line 65
    invoke-virtual {p0}, Ldv;->k()V

    return-void
.end method

.method public k()V
    .registers 12

    .line 69
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 70
    iget-object v1, p0, Ldv;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x0

    iget v2, p0, Ldv;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0x4

    iget v2, p0, Ldv;->d:I

    add-int/lit8 v5, v2, -0x1c

    const/16 v6, 0x96

    const/16 v7, 0x14

    const-string v2, "gui.done"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Ldv;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x1

    iget v2, p0, Ldv;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v4, v2, -0x9a

    iget v2, p0, Ldv;->d:I

    add-int/lit8 v5, v2, -0x34

    const/16 v6, 0x64

    const-string v2, "stat.generalButton"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Ldv;->e:Ljava/util/List;

    new-instance v9, Lke;

    const/4 v3, 0x2

    iget v2, p0, Ldv;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, -0x2e

    iget v2, p0, Ldv;->d:I

    add-int/lit8 v5, v2, -0x34

    const-string v2, "stat.blocksButton"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Ldv;->e:Ljava/util/List;

    new-instance v10, Lke;

    const/4 v3, 0x3

    iget v2, p0, Ldv;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0x3e

    iget v2, p0, Ldv;->d:I

    add-int/lit8 v5, v2, -0x34

    const-string v2, "stat.itemsButton"

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Ldv;->n:Lga;

    invoke-virtual {v0}, Lga;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_85

    .line 79
    iput-boolean v1, v9, Lke;->g:Z

    .line 81
    :cond_85
    iget-object v0, p0, Ldv;->m:Lci;

    invoke-virtual {v0}, Lci;->a()I

    move-result v0

    if-nez v0, :cond_8f

    .line 82
    iput-boolean v1, v10, Lke;->g:Z

    :cond_8f
    return-void
.end method
