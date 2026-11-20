###### Class defpackage.ht (ht)
.class public final enum Lht;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lht;

.field public static final enum b:Lht;

.field public static final enum c:Lht;

.field public static final enum d:Lht;

.field public static final enum e:Lht;

.field public static final enum f:Lht;

.field public static final enum g:Lht;

.field public static final enum h:Lht;

.field public static final enum i:Lht;

.field public static final enum j:Lht;

.field public static final enum k:Lht;

.field public static final enum l:Lht;

.field public static final enum m:Lht;

.field private static final synthetic q:[Lht;


# instance fields
.field private final n:Z

.field private final o:Z

.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 27

    .line 19
    new-instance v6, Lht;

    const-string v1, "MUSIC"

    const/4 v2, 0x0

    const-string v3, "options.music"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v6, Lht;->a:Lht;

    .line 20
    new-instance v1, Lht;

    const-string v8, "SOUND"

    const/4 v9, 0x1

    const-string v10, "options.sound"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v1, Lht;->b:Lht;

    .line 21
    new-instance v2, Lht;

    const-string v14, "INVERT_MOUSE"

    const/4 v15, 0x2

    const-string v16, "options.invertMouse"

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v2, Lht;->c:Lht;

    .line 22
    new-instance v3, Lht;

    const-string v8, "SENSITIVITY"

    const/4 v9, 0x3

    const-string v10, "options.sensitivity"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lht;->d:Lht;

    .line 23
    new-instance v4, Lht;

    const-string v14, "RENDER_DISTANCE"

    const/4 v15, 0x4

    const-string v16, "options.renderDistance"

    const/16 v18, 0x0

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v4, Lht;->e:Lht;

    .line 24
    new-instance v5, Lht;

    const-string v8, "VIEW_BOBBING"

    const/4 v9, 0x5

    const-string v10, "options.viewBobbing"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v5, Lht;->f:Lht;

    .line 25
    new-instance v7, Lht;

    const-string v14, "ANAGLYPH"

    const/4 v15, 0x6

    const-string v16, "options.anaglyph"

    const/16 v18, 0x1

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v7, Lht;->g:Lht;

    .line 26
    new-instance v14, Lht;

    const-string v9, "ADVANCED_OPENGL"

    const/4 v10, 0x7

    const-string v11, "options.advancedOpengl"

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v14, Lht;->h:Lht;

    .line 27
    new-instance v8, Lht;

    const-string v16, "FRAMERATE_LIMIT"

    const/16 v17, 0x8

    const-string v18, "options.framerateLimit"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v8, Lht;->i:Lht;

    .line 28
    new-instance v9, Lht;

    const-string v22, "DIFFICULTY"

    const/16 v23, 0x9

    const-string v24, "options.difficulty"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v9, Lht;->j:Lht;

    .line 29
    new-instance v10, Lht;

    const-string v16, "GRAPHICS"

    const/16 v17, 0xa

    const-string v18, "options.graphics"

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v10, Lht;->k:Lht;

    .line 30
    new-instance v11, Lht;

    const-string v22, "AMBIENT_OCCLUSION"

    const/16 v23, 0xb

    const-string v24, "options.ao"

    const/16 v26, 0x1

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v11, Lht;->l:Lht;

    .line 31
    new-instance v12, Lht;

    const-string v16, "GUI_SCALE"

    const/16 v17, 0xc

    const-string v18, "options.guiScale"

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lht;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v12, Lht;->m:Lht;

    move-object v6, v7

    move-object v7, v14

    .line 16
    filled-new-array/range {v0 .. v12}, [Lht;

    move-result-object v0

    sput-object v0, Lht;->q:[Lht;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .registers 6

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lht;->p:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lht;->n:Z

    .line 51
    iput-boolean p5, p0, Lht;->o:Z

    return-void
.end method

.method public static a(I)Lht;
    .registers 6

    .line 40
    invoke-static {}, Lht;->values()[Lht;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 41
    invoke-virtual {v3}, Lht;->c()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lht;
    .registers 2

    .line 16
    const-class v0, Lht;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lht;

    return-object p0
.end method

.method public static values()[Lht;
    .registers 1

    .line 16
    sget-object v0, Lht;->q:[Lht;

    invoke-virtual {v0}, [Lht;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lht;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lht;->n:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lht;->o:Z

    return v0
.end method

.method public c()I
    .registers 2

    .line 63
    invoke-virtual {p0}, Lht;->ordinal()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lht;->p:Ljava/lang/String;

    return-object v0
.end method
