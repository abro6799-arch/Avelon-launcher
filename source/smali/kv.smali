###### Class defpackage.kv (kv)
.class public Lkv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final J:[Ljava/lang/String;

.field private static final K:[Ljava/lang/String;

.field private static final L:[Ljava/lang/String;

.field private static final M:[Ljava/lang/String;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:F

.field public H:F

.field public I:I

.field private N:Ljava/io/File;

.field public a:F

.field public b:F

.field public c:F

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Lqb;

.field public n:Lqb;

.field public o:Lqb;

.field public p:Lqb;

.field public q:Lqb;

.field public r:Lqb;

.field public s:Lqb;

.field public t:Lqb;

.field public u:Lqb;

.field public v:Lqb;

.field public w:[Lqb;

.field protected x:Lnet/minecraft/client/Minecraft;

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "options.renderDistance.short"

    const-string v1, "options.renderDistance.tiny"

    const-string v2, "options.renderDistance.far"

    const-string v3, "options.renderDistance.normal"

    .line 72
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkv;->J:[Ljava/lang/String;

    const-string v0, "options.difficulty.normal"

    const-string v1, "options.difficulty.hard"

    const-string v2, "options.difficulty.peaceful"

    const-string v3, "options.difficulty.easy"

    .line 75
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkv;->K:[Ljava/lang/String;

    const-string v0, "options.guiScale.normal"

    const-string v1, "options.guiScale.large"

    const-string v2, "options.guiScale.auto"

    const-string v3, "options.guiScale.small"

    .line 78
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkv;->L:[Ljava/lang/String;

    const-string v0, "performance.balanced"

    const-string v1, "performance.powersaver"

    const-string v2, "performance.max"

    .line 81
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkv;->M:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 16

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lkv;->a:F

    .line 86
    iput v0, p0, Lkv;->b:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 87
    iput v1, p0, Lkv;->c:F

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lkv;->d:Z

    .line 89
    const/4 v2, 0x1

    iput v2, p0, Lkv;->e:I

    const/4 v2, 0x1

    .line 90
    iput-boolean v2, p0, Lkv;->f:Z

    .line 91
    iput-boolean v1, p0, Lkv;->g:Z

    .line 92
    iput-boolean v1, p0, Lkv;->h:Z

    .line 93
    iput v2, p0, Lkv;->i:I

    .line 94
    iput-boolean v1, p0, Lkv;->j:Z

    .line 95
    iput-boolean v1, p0, Lkv;->k:Z

    const-string v2, "Default"

    .line 96
    iput-object v2, p0, Lkv;->l:Ljava/lang/String;

    .line 98
    new-instance v2, Lqb;

    const-string v3, "key.forward"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->m:Lqb;

    .line 99
    new-instance v2, Lqb;

    const-string v3, "key.left"

    const/16 v4, 0x1e

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->n:Lqb;

    .line 100
    new-instance v2, Lqb;

    const-string v3, "key.back"

    const/16 v4, 0x1f

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->o:Lqb;

    .line 101
    new-instance v2, Lqb;

    const-string v3, "key.right"

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->p:Lqb;

    .line 102
    new-instance v2, Lqb;

    const-string v3, "key.jump"

    const/16 v4, 0x39

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->q:Lqb;

    .line 103
    new-instance v2, Lqb;

    const-string v3, "key.inventory"

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->r:Lqb;

    .line 104
    new-instance v2, Lqb;

    const-string v3, "key.drop"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->s:Lqb;

    .line 105
    new-instance v2, Lqb;

    const-string v3, "key.chat"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->t:Lqb;

    .line 106
    new-instance v2, Lqb;

    const-string v3, "key.fog"

    const/16 v4, 0x21

    invoke-direct {v2, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lkv;->u:Lqb;

    .line 107
    new-instance v10, Lqb;

    const-string v2, "key.sneak"

    const/16 v3, 0x2a

    invoke-direct {v10, v2, v3}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v10, p0, Lkv;->v:Lqb;

    .line 110
    iget-object v5, p0, Lkv;->m:Lqb;

    iget-object v6, p0, Lkv;->n:Lqb;

    iget-object v7, p0, Lkv;->o:Lqb;

    iget-object v8, p0, Lkv;->p:Lqb;

    iget-object v9, p0, Lkv;->q:Lqb;

    iget-object v11, p0, Lkv;->s:Lqb;

    iget-object v12, p0, Lkv;->r:Lqb;

    iget-object v13, p0, Lkv;->t:Lqb;

    iget-object v14, p0, Lkv;->u:Lqb;

    filled-new-array/range {v5 .. v14}, [Lqb;

    move-result-object v2

    iput-object v2, p0, Lkv;->w:[Lqb;

    const/4 v2, 0x2

    .line 120
    iput v2, p0, Lkv;->y:I

    .line 121
    iput-boolean v1, p0, Lkv;->z:Z

    .line 122
    iput-boolean v1, p0, Lkv;->A:Z

    .line 123
    iput-boolean v1, p0, Lkv;->B:Z

    const-string v2, ""

    .line 124
    iput-object v2, p0, Lkv;->C:Ljava/lang/String;

    .line 126
    iput-boolean v1, p0, Lkv;->D:Z

    .line 127
    iput-boolean v1, p0, Lkv;->E:Z

    .line 128
    iput-boolean v1, p0, Lkv;->F:Z

    .line 129
    iput v0, p0, Lkv;->G:F

    .line 130
    iput v0, p0, Lkv;->H:F

    .line 131
    iput v1, p0, Lkv;->I:I

    return-void
.end method

.method public constructor <init>(Lnet/minecraft/client/Minecraft;Ljava/io/File;)V
    .registers 19

    move-object/from16 v0, p0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    iput v1, v0, Lkv;->a:F

    .line 86
    iput v1, v0, Lkv;->b:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 87
    iput v2, v0, Lkv;->c:F

    const/4 v2, 0x0

    .line 88
    iput-boolean v2, v0, Lkv;->d:Z

    .line 89
    const/4 v3, 0x1

    iput v3, v0, Lkv;->e:I

    const/4 v3, 0x1

    .line 90
    iput-boolean v3, v0, Lkv;->f:Z

    .line 91
    iput-boolean v2, v0, Lkv;->g:Z

    .line 92
    iput-boolean v2, v0, Lkv;->h:Z

    .line 93
    iput v3, v0, Lkv;->i:I

    .line 94
    iput-boolean v2, v0, Lkv;->j:Z

    .line 95
    iput-boolean v2, v0, Lkv;->k:Z

    const-string v3, "Default"

    .line 96
    iput-object v3, v0, Lkv;->l:Ljava/lang/String;

    .line 98
    new-instance v3, Lqb;

    const-string v4, "key.forward"

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->m:Lqb;

    .line 99
    new-instance v3, Lqb;

    const-string v4, "key.left"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->n:Lqb;

    .line 100
    new-instance v3, Lqb;

    const-string v4, "key.back"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->o:Lqb;

    .line 101
    new-instance v3, Lqb;

    const-string v4, "key.right"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->p:Lqb;

    .line 102
    new-instance v3, Lqb;

    const-string v4, "key.jump"

    const/16 v5, 0x39

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->q:Lqb;

    .line 103
    new-instance v3, Lqb;

    const-string v4, "key.inventory"

    const/16 v5, 0x12

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->r:Lqb;

    .line 104
    new-instance v3, Lqb;

    const-string v4, "key.drop"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->s:Lqb;

    .line 105
    new-instance v3, Lqb;

    const-string v4, "key.chat"

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->t:Lqb;

    .line 106
    new-instance v3, Lqb;

    const-string v4, "key.fog"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lkv;->u:Lqb;

    .line 107
    new-instance v11, Lqb;

    const-string v3, "key.sneak"

    const/16 v4, 0x2a

    invoke-direct {v11, v3, v4}, Lqb;-><init>(Ljava/lang/String;I)V

    iput-object v11, v0, Lkv;->v:Lqb;

    .line 110
    iget-object v6, v0, Lkv;->m:Lqb;

    iget-object v7, v0, Lkv;->n:Lqb;

    iget-object v8, v0, Lkv;->o:Lqb;

    iget-object v9, v0, Lkv;->p:Lqb;

    iget-object v10, v0, Lkv;->q:Lqb;

    iget-object v12, v0, Lkv;->s:Lqb;

    iget-object v13, v0, Lkv;->r:Lqb;

    iget-object v14, v0, Lkv;->t:Lqb;

    iget-object v15, v0, Lkv;->u:Lqb;

    filled-new-array/range {v6 .. v15}, [Lqb;

    move-result-object v3

    iput-object v3, v0, Lkv;->w:[Lqb;

    const/4 v3, 0x2

    .line 120
    iput v3, v0, Lkv;->y:I

    .line 121
    iput-boolean v2, v0, Lkv;->z:Z

    .line 122
    iput-boolean v2, v0, Lkv;->A:Z

    .line 123
    iput-boolean v2, v0, Lkv;->B:Z

    const-string v3, ""

    .line 124
    iput-object v3, v0, Lkv;->C:Ljava/lang/String;

    .line 126
    iput-boolean v2, v0, Lkv;->D:Z

    .line 127
    iput-boolean v2, v0, Lkv;->E:Z

    .line 128
    iput-boolean v2, v0, Lkv;->F:Z

    .line 129
    iput v1, v0, Lkv;->G:F

    .line 130
    iput v1, v0, Lkv;->H:F

    .line 131
    iput v2, v0, Lkv;->I:I

    move-object/from16 v1, p1

    .line 134
    iput-object v1, v0, Lkv;->x:Lnet/minecraft/client/Minecraft;

    .line 135
    new-instance v1, Ljava/io/File;

    const-string v2, "options.txt"

    move-object/from16 v3, p2

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lkv;->N:Ljava/io/File;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lkv;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)F
    .registers 3

    const-string v0, "true"

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_b
    const-string v0, "false"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_15
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lht;)F
    .registers 3

    .line 197
    sget-object v0, Lht;->a:Lht;

    if-ne p1, v0, :cond_7

    iget p1, p0, Lkv;->a:F

    return p1

    .line 198
    :cond_7
    sget-object v0, Lht;->b:Lht;

    if-ne p1, v0, :cond_e

    iget p1, p0, Lkv;->b:F

    return p1

    .line 199
    :cond_e
    sget-object v0, Lht;->d:Lht;

    if-ne p1, v0, :cond_15

    iget p1, p0, Lkv;->c:F

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public a(I)Ljava/lang/String;
    .registers 4

    .line 143
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lkv;->w:[Lqb;

    aget-object p1, v1, p1

    iget-object p1, p1, Lqb;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 10

    .line 269
    :try_start_0
    iget-object v0, p0, Lkv;->N:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 270
    :cond_9
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lkv;->N:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 272
    :cond_15
    :goto_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_17f

    if-eqz v1, :cond_17b

    :try_start_1b
    const-string v2, ":"

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 275
    aget-object v4, v2, v3

    const-string v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_35

    aget-object v4, v2, v5

    invoke-direct {p0, v4}, Lkv;->a(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lkv;->a:F

    .line 276
    :cond_35
    aget-object v4, v2, v3

    const-string v6, "sound"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    aget-object v4, v2, v5

    invoke-direct {p0, v4}, Lkv;->a(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lkv;->b:F

    .line 277
    :cond_47
    aget-object v4, v2, v3

    const-string v6, "mouseSensitivity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    aget-object v4, v2, v5

    invoke-direct {p0, v4}, Lkv;->a(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lkv;->c:F

    .line 278
    :cond_59
    aget-object v4, v2, v3

    const-string v6, "invertYMouse"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_61} :catch_163

    const-string v6, "true"

    if-eqz v4, :cond_6d

    :try_start_65
    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lkv;->d:Z

    .line 279
    :cond_6d
    aget-object v4, v2, v3

    const-string v7, "viewDistance"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lkv;->e:I

    .line 280
    :cond_7f
    aget-object v4, v2, v3

    const-string v7, "guiScale"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lkv;->I:I

    .line 281
    :cond_91
    aget-object v4, v2, v3

    const-string v7, "bobView"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lkv;->f:Z

    .line 282
    :cond_a3
    aget-object v4, v2, v3

    const-string v7, "anaglyph3d"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lkv;->g:Z

    .line 283
    :cond_b5
    aget-object v4, v2, v3

    const-string v7, "advancedOpengl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lkv;->h:Z

    .line 284
    :cond_c7
    aget-object v4, v2, v3

    const-string v7, "fpsLimit"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lkv;->i:I

    .line 285
    :cond_d9
    aget-object v4, v2, v3

    const-string v7, "difficulty"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lkv;->y:I

    .line 286
    :cond_eb
    aget-object v4, v2, v3

    const-string v7, "fancyGraphics"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fd

    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lkv;->j:Z

    .line 287
    :cond_fd
    aget-object v4, v2, v3

    const-string v7, "ao"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10f

    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lkv;->k:Z

    .line 288
    :cond_10f
    aget-object v4, v2, v3

    const-string v6, "skin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d

    aget-object v4, v2, v5

    iput-object v4, p0, Lkv;->l:Ljava/lang/String;

    .line 289
    :cond_11d
    aget-object v4, v2, v3

    const-string v6, "lastServer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12f

    array-length v4, v2

    const/4 v6, 0x2

    if-lt v4, v6, :cond_12f

    aget-object v4, v2, v5

    iput-object v4, p0, Lkv;->C:Ljava/lang/String;

    :cond_12f
    move v4, v3

    .line 291
    :goto_130
    iget-object v6, p0, Lkv;->w:[Lqb;

    array-length v6, v6

    if-ge v4, v6, :cond_15

    .line 292
    aget-object v6, v2, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lkv;->w:[Lqb;

    aget-object v8, v8, v4

    iget-object v8, v8, Lqb;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_160

    .line 293
    iget-object v6, p0, Lkv;->w:[Lqb;

    aget-object v6, v6, v4

    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lqb;->b:I
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_160} :catch_163

    :cond_160
    add-int/lit8 v4, v4, 0x1

    goto :goto_130

    .line 297
    :catch_163
    :try_start_163
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping bad option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 300
    :cond_17b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_17e} :catch_17f

    goto :goto_18a

    :catch_17f
    move-exception v0

    .line 302
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to load options"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18a
    return-void
.end method

.method public a(II)V
    .registers 4

    .line 152
    iget-object v0, p0, Lkv;->w:[Lqb;

    aget-object p1, v0, p1

    iput p2, p1, Lqb;->b:I

    .line 153
    invoke-virtual {p0}, Lkv;->b()V

    return-void
.end method

.method public a(Lht;F)V
    .registers 4

    .line 157
    sget-object v0, Lht;->a:Lht;

    if-ne p1, v0, :cond_d

    .line 158
    iput p2, p0, Lkv;->a:F

    .line 159
    iget-object v0, p0, Lkv;->x:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0}, Lyo;->a()V

    .line 161
    :cond_d
    sget-object v0, Lht;->b:Lht;

    if-ne p1, v0, :cond_1a

    .line 162
    iput p2, p0, Lkv;->b:F

    .line 163
    iget-object v0, p0, Lkv;->x:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0}, Lyo;->a()V

    .line 165
    :cond_1a
    sget-object v0, Lht;->d:Lht;

    if-ne p1, v0, :cond_20

    .line 166
    iput p2, p0, Lkv;->c:F

    :cond_20
    return-void
.end method

.method public a(Lht;I)V
    .registers 4

    .line 171
    sget-object v0, Lht;->c:Lht;

    if-ne p1, v0, :cond_a

    iget-boolean v0, p0, Lkv;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lkv;->d:Z

    .line 172
    :cond_a
    sget-object v0, Lht;->e:Lht;

    if-ne p1, v0, :cond_15

    iget v0, p0, Lkv;->e:I

    add-int/2addr v0, p2

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lkv;->e:I

    .line 173
    :cond_15
    sget-object v0, Lht;->m:Lht;

    if-ne p1, v0, :cond_20

    iget v0, p0, Lkv;->I:I

    add-int/2addr v0, p2

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lkv;->I:I

    .line 174
    :cond_20
    sget-object v0, Lht;->f:Lht;

    if-ne p1, v0, :cond_2a

    iget-boolean v0, p0, Lkv;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lkv;->f:Z

    .line 175
    :cond_2a
    sget-object v0, Lht;->h:Lht;

    if-ne p1, v0, :cond_3b

    .line 176
    iget-boolean v0, p0, Lkv;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lkv;->h:Z

    .line 177
    iget-object v0, p0, Lkv;->x:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {v0}, Ln;->a()V

    .line 179
    :cond_3b
    sget-object v0, Lht;->g:Lht;

    if-ne p1, v0, :cond_4c

    .line 180
    iget-boolean v0, p0, Lkv;->g:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lkv;->g:Z

    .line 181
    iget-object v0, p0, Lkv;->x:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v0}, Lji;->b()V

    .line 183
    :cond_4c
    sget-object v0, Lht;->i:Lht;

    if-ne p1, v0, :cond_59

    iget v0, p0, Lkv;->i:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lkv;->i:I

    .line 184
    :cond_59
    sget-object v0, Lht;->j:Lht;

    if-ne p1, v0, :cond_64

    iget v0, p0, Lkv;->y:I

    add-int/2addr v0, p2

    and-int/lit8 p2, v0, 0x3

    iput p2, p0, Lkv;->y:I

    .line 185
    :cond_64
    sget-object p2, Lht;->k:Lht;

    if-ne p1, p2, :cond_75

    .line 186
    iget-boolean p2, p0, Lkv;->j:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lkv;->j:Z

    .line 187
    iget-object p2, p0, Lkv;->x:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {p2}, Ln;->a()V

    .line 189
    :cond_75
    sget-object p2, Lht;->l:Lht;

    if-ne p1, p2, :cond_86

    .line 190
    iget-boolean p1, p0, Lkv;->k:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lkv;->k:Z

    .line 191
    iget-object p1, p0, Lkv;->x:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {p1}, Ln;->a()V

    .line 193
    :cond_86
    invoke-virtual {p0}, Lkv;->b()V

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    .line 148
    iget-object v0, p0, Lkv;->w:[Lqb;

    aget-object p1, v0, p1

    iget p1, p1, Lqb;->b:I

    invoke-static {p1}, Lorg/lwjgl/input/Keyboard;->getKeyName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 20

    move-object/from16 v1, p0

    const-string v0, "lastServer:"

    const-string v2, "skin:"

    const-string v3, "ao:"

    const-string v4, "fancyGraphics:"

    const-string v5, "difficulty:"

    const-string v6, "fpsLimit:"

    const-string v7, "advancedOpengl:"

    const-string v8, "anaglyph3d:"

    const-string v9, "bobView:"

    const-string v10, "guiScale:"

    const-string v11, "viewDistance:"

    const-string v12, "mouseSensitivity:"

    const-string v13, "invertYMouse:"

    const-string v14, "sound:"

    const-string v15, "music:"

    move-object/from16 v16, v0

    .line 315
    :try_start_22
    new-instance v0, Ljava/io/PrintWriter;

    move-object/from16 v17, v2

    new-instance v2, Ljava/io/FileWriter;

    move-object/from16 v18, v3

    iget-object v3, v1, Lkv;->N:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lkv;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lkv;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lkv;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lkv;->c:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lkv;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lkv;->I:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lkv;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lkv;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lkv;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lkv;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lkv;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lkv;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lkv;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lkv;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lkv;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 333
    :goto_138
    iget-object v3, v1, Lkv;->w:[Lqb;

    array-length v3, v3

    if-ge v2, v3, :cond_168

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lkv;->w:[Lqb;

    aget-object v4, v4, v2

    iget-object v4, v4, Lqb;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lkv;->w:[Lqb;

    aget-object v4, v4, v2

    iget v4, v4, Lqb;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_138

    .line 337
    :cond_168
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_16b} :catch_16c

    goto :goto_177

    :catch_16c
    move-exception v0

    .line 339
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Failed to save options"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_177
    return-void
.end method

.method public b(Lht;)Z
    .registers 3

    .line 204
    sget-object v0, Lfq;->a:[I

    invoke-virtual {p1}, Lht;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_19

    const/4 p1, 0x0

    return p1

    .line 214
    :cond_19
    iget-boolean p1, p0, Lkv;->k:Z

    return p1

    .line 212
    :cond_1c
    iget-boolean p1, p0, Lkv;->h:Z

    return p1

    .line 210
    :cond_1f
    iget-boolean p1, p0, Lkv;->g:Z

    return p1

    .line 208
    :cond_22
    iget-boolean p1, p0, Lkv;->f:Z

    return p1

    .line 206
    :cond_25
    iget-boolean p1, p0, Lkv;->d:Z

    return p1
.end method

.method public c(Lht;)Ljava/lang/String;
    .registers 9

    .line 221
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lht;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lht;->a()Z

    move-result v2

    const-string v3, "options.off"

    if-eqz v2, :cond_ac

    .line 225
    invoke-virtual {p0, p1}, Lkv;->a(Lht;)F

    move-result v2

    .line 227
    sget-object v4, Lht;->d:Lht;

    const-string v5, "%"

    const/4 v6, 0x0

    if-ne p1, v4, :cond_7d

    cmpl-float p1, v2, v6

    if-nez p1, :cond_4a

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "options.sensitivity.min"

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4a
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v2, p1

    if-nez p1, :cond_66

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "options.sensitivity.max"

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 234
    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7d
    cmpl-float p1, v2, v6

    if-nez p1, :cond_95

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 239
    :cond_95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 241
    :cond_ac
    invoke-virtual {p1}, Lht;->b()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 243
    invoke-virtual {p0, p1}, Lkv;->b(Lht;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "options.on"

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_ce
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 248
    :cond_e2
    sget-object v2, Lht;->e:Lht;

    if-ne p1, v2, :cond_100

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkv;->J:[Ljava/lang/String;

    iget v2, p0, Lkv;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 250
    :cond_100
    sget-object v2, Lht;->j:Lht;

    if-ne p1, v2, :cond_11e

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkv;->K:[Ljava/lang/String;

    iget v2, p0, Lkv;->y:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 252
    :cond_11e
    sget-object v2, Lht;->m:Lht;

    if-ne p1, v2, :cond_13c

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkv;->L:[Ljava/lang/String;

    iget v2, p0, Lkv;->I:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 254
    :cond_13c
    sget-object v2, Lht;->i:Lht;

    if-ne p1, v2, :cond_15a

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lkv;->M:[Ljava/lang/String;

    iget v1, p0, Lkv;->i:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 256
    :cond_15a
    sget-object v2, Lht;->k:Lht;

    if-ne p1, v2, :cond_18e

    .line 257
    iget-boolean p1, p0, Lkv;->j:Z

    if-eqz p1, :cond_178

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "options.graphics.fancy"

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 260
    :cond_178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "options.graphics.fast"

    invoke-virtual {v0, v1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18e
    return-object v1
.end method
