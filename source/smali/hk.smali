###### Class defpackage.hk (hk)
.class public Lhk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lhk;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lhk;

    invoke-direct {v0}, Lhk;-><init>()V

    sput-object v0, Lhk;->a:Lhk;

    return-void
.end method

.method private constructor <init>()V
    .registers 33

    move-object/from16 v0, p0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lhk;->b:Ljava/util/List;

    .line 21
    new-instance v1, Lha;

    invoke-direct {v1}, Lha;-><init>()V

    invoke-virtual {v1, v0}, Lha;->a(Lhk;)V

    .line 22
    new-instance v1, Lxc;

    invoke-direct {v1}, Lxc;-><init>()V

    invoke-virtual {v1, v0}, Lxc;->a(Lhk;)V

    .line 23
    new-instance v1, Ltp;

    invoke-direct {v1}, Ltp;-><init>()V

    invoke-virtual {v1, v0}, Ltp;->a(Lhk;)V

    .line 24
    new-instance v1, Lod;

    invoke-direct {v1}, Lod;-><init>()V

    invoke-virtual {v1, v0}, Lod;->a(Lhk;)V

    .line 25
    new-instance v1, Ljy;

    invoke-direct {v1}, Ljy;-><init>()V

    invoke-virtual {v1, v0}, Ljy;->a(Lhk;)V

    .line 26
    new-instance v1, Lz;

    invoke-direct {v1}, Lz;-><init>()V

    invoke-virtual {v1, v0}, Lz;->a(Lhk;)V

    .line 27
    new-instance v1, Lng;

    invoke-direct {v1}, Lng;-><init>()V

    invoke-virtual {v1, v0}, Lng;->a(Lhk;)V

    .line 29
    new-instance v1, Liz;

    sget-object v2, Lgm;->aI:Lgm;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Liz;-><init>(Lgm;I)V

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v4, Lgm;->aH:Lgm;

    const-string v13, "###"

    filled-new-array {v13, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 34
    new-instance v1, Liz;

    sget-object v4, Lgm;->aJ:Lgm;

    const/4 v15, 0x1

    invoke-direct {v1, v4, v15}, Liz;-><init>(Lgm;I)V

    sget-object v4, Lgm;->aI:Lgm;

    const-string v14, "#"

    filled-new-array {v14, v14, v14, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 41
    new-instance v1, Liz;

    sget-object v4, Luu;->ba:Luu;

    const/4 v11, 0x2

    invoke-direct {v1, v4, v11}, Liz;-><init>(Luu;I)V

    sget-object v4, Lgm;->B:Lgm;

    filled-new-array {v13, v13, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 47
    new-instance v1, Liz;

    sget-object v4, Luu;->aZ:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    const-string v4, "###"

    const-string v5, "#X#"

    const-string v6, "###"

    sget-object v8, Luu;->y:Luu;

    const/16 v7, 0x58

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    sget-object v10, Lgm;->l:Lgm;

    move-object v7, v2

    move-object/from16 v9, v16

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 54
    new-instance v1, Liz;

    sget-object v4, Luu;->S:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    const-string v4, "###"

    const-string v5, "#X#"

    const-string v6, "###"

    sget-object v8, Luu;->y:Luu;

    sget-object v10, Lgm;->aA:Lgm;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 61
    new-instance v1, Liz;

    sget-object v4, Luu;->ao:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    const-string v4, "###"

    const-string v5, "XXX"

    const-string v6, "###"

    sget-object v8, Luu;->y:Luu;

    sget-object v10, Lgm;->aJ:Lgm;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 68
    new-instance v1, Liz;

    sget-object v4, Luu;->aV:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    sget-object v4, Lgm;->aB:Lgm;

    const-string v12, "##"

    filled-new-array {v12, v12, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 74
    new-instance v1, Liz;

    sget-object v4, Luu;->aX:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    sget-object v4, Lgm;->aG:Lgm;

    filled-new-array {v12, v12, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 80
    new-instance v1, Liz;

    sget-object v4, Luu;->am:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    sget-object v4, Lgm;->aF:Lgm;

    filled-new-array {v12, v12, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 86
    new-instance v1, Liz;

    sget-object v4, Luu;->be:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    sget-object v4, Lgm;->aR:Lgm;

    filled-new-array {v12, v12, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 92
    new-instance v1, Liz;

    sget-object v4, Luu;->ac:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    sget-object v4, Lgm;->I:Lgm;

    filled-new-array {v12, v12, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 98
    new-instance v1, Liz;

    sget-object v4, Luu;->an:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    const-string v4, "X#X"

    const-string v5, "#X#"

    const-string v6, "X#X"

    sget-object v8, Lgm;->K:Lgm;

    sget-object v10, Luu;->F:Luu;

    move-object/from16 v7, v16

    move-object v9, v2

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 106
    new-instance v1, Liz;

    sget-object v4, Luu;->al:Luu;

    invoke-direct {v1, v4, v3, v3}, Liz;-><init>(Luu;II)V

    sget-object v4, Luu;->x:Luu;

    filled-new-array {v13, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 111
    new-instance v1, Liz;

    sget-object v4, Luu;->al:Luu;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Liz;-><init>(Luu;II)V

    sget-object v4, Luu;->u:Luu;

    filled-new-array {v13, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 116
    new-instance v1, Liz;

    sget-object v4, Luu;->al:Luu;

    invoke-direct {v1, v4, v3, v15}, Liz;-><init>(Luu;II)V

    sget-object v4, Luu;->R:Luu;

    filled-new-array {v13, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 121
    new-instance v1, Liz;

    sget-object v4, Luu;->al:Luu;

    invoke-direct {v1, v4, v3, v11}, Liz;-><init>(Luu;II)V

    sget-object v3, Luu;->y:Luu;

    filled-new-array {v13, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 126
    new-instance v1, Liz;

    sget-object v3, Luu;->aG:Luu;

    invoke-direct {v1, v3, v11}, Liz;-><init>(Luu;I)V

    sget-object v3, Lgm;->B:Lgm;

    const-string v10, "# #"

    filled-new-array {v10, v13, v10, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 133
    new-instance v1, Liz;

    sget-object v3, Lgm;->at:Lgm;

    invoke-direct {v1, v3, v15}, Liz;-><init>(Lgm;I)V

    sget-object v3, Luu;->y:Luu;

    filled-new-array {v12, v12, v12, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 140
    new-instance v1, Liz;

    sget-object v3, Luu;->bl:Luu;

    invoke-direct {v1, v3, v11}, Liz;-><init>(Luu;I)V

    sget-object v3, Luu;->y:Luu;

    filled-new-array {v13, v13, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 146
    new-instance v1, Liz;

    sget-object v3, Lgm;->az:Lgm;

    invoke-direct {v1, v3, v15}, Liz;-><init>(Lgm;I)V

    sget-object v3, Lgm;->m:Lgm;

    filled-new-array {v12, v12, v12, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 153
    new-instance v1, Liz;

    sget-object v3, Lgm;->as:Lgm;

    invoke-direct {v1, v3, v15}, Liz;-><init>(Lgm;I)V

    const-string v4, "###"

    const-string v5, "###"

    const-string v6, " X "

    sget-object v8, Luu;->y:Luu;

    sget-object v3, Lgm;->B:Lgm;

    move-object v7, v2

    move-object/from16 v9, v16

    move-object v11, v10

    move-object v10, v3

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 160
    new-instance v1, Liz;

    sget-object v3, Lgm;->aX:Lgm;

    invoke-direct {v1, v3, v15}, Liz;-><init>(Lgm;I)V

    const-string v17, "AAA"

    const-string v18, "BEB"

    const-string v19, "CCC"

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v21, Lgm;->aE:Lgm;

    const/16 v4, 0x42

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    sget-object v23, Lgm;->aW:Lgm;

    const/16 v4, 0x43

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    sget-object v25, Lgm;->R:Lgm;

    const/16 v4, 0x45

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v26

    sget-object v27, Lgm;->aN:Lgm;

    move-object/from16 v20, v3

    move-object/from16 v22, v28

    filled-new-array/range {v17 .. v27}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 169
    new-instance v1, Liz;

    sget-object v4, Lgm;->aW:Lgm;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Lgm;I)V

    sget-object v4, Lgm;->aH:Lgm;

    filled-new-array {v14, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 174
    new-instance v1, Liz;

    sget-object v4, Luu;->y:Luu;

    const/4 v10, 0x4

    invoke-direct {v1, v4, v10}, Liz;-><init>(Luu;I)V

    sget-object v4, Luu;->K:Luu;

    filled-new-array {v14, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 179
    new-instance v1, Liz;

    sget-object v4, Lgm;->B:Lgm;

    invoke-direct {v1, v4, v10}, Liz;-><init>(Lgm;I)V

    sget-object v4, Luu;->y:Luu;

    filled-new-array {v14, v14, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 186
    new-instance v1, Liz;

    sget-object v4, Luu;->ar:Luu;

    invoke-direct {v1, v4, v10}, Liz;-><init>(Luu;I)V

    const-string v4, "X"

    const-string v5, "#"

    sget-object v7, Lgm;->k:Lgm;

    sget-object v9, Lgm;->B:Lgm;

    move-object/from16 v6, v16

    move-object v8, v2

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 193
    new-instance v1, Liz;

    sget-object v4, Luu;->ar:Luu;

    invoke-direct {v1, v4, v10}, Liz;-><init>(Luu;I)V

    const-string v4, "X"

    const-string v5, "#"

    new-instance v7, Liz;

    sget-object v6, Lgm;->k:Lgm;

    invoke-direct {v7, v6, v15, v15}, Liz;-><init>(Lgm;II)V

    sget-object v9, Lgm;->B:Lgm;

    move-object/from16 v6, v16

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 200
    new-instance v1, Liz;

    sget-object v4, Lgm;->C:Lgm;

    invoke-direct {v1, v4, v10}, Liz;-><init>(Lgm;I)V

    sget-object v4, Luu;->y:Luu;

    const-string v9, " # "

    filled-new-array {v11, v9, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 206
    new-instance v1, Liz;

    sget-object v4, Luu;->aH:Luu;

    const/16 v5, 0x10

    invoke-direct {v1, v4, v5}, Liz;-><init>(Luu;I)V

    const-string v4, "X X"

    const-string v5, "X#X"

    const-string v6, "X X"

    sget-object v8, Lgm;->m:Lgm;

    sget-object v17, Lgm;->B:Lgm;

    move-object/from16 v7, v16

    move-object/from16 v29, v9

    move-object v9, v2

    move-object/from16 v10, v17

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 214
    new-instance v1, Liz;

    sget-object v4, Luu;->U:Luu;

    const/4 v10, 0x6

    invoke-direct {v1, v4, v10}, Liz;-><init>(Luu;I)V

    const-string v4, "X X"

    const-string v5, "X#X"

    const-string v6, "XRX"

    sget-object v8, Lgm;->n:Lgm;

    const/16 v7, 0x52

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    sget-object v18, Lgm;->aA:Lgm;

    sget-object v19, Lgm;->B:Lgm;

    move-object/from16 v7, v16

    move-object/from16 v9, v17

    move v15, v10

    move-object/from16 v10, v18

    move-object/from16 v30, v11

    move-object v11, v2

    move-object/from16 v31, v12

    move-object/from16 v12, v19

    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 223
    new-instance v1, Liz;

    sget-object v4, Luu;->V:Luu;

    invoke-direct {v1, v4, v15}, Liz;-><init>(Luu;I)V

    const-string v4, "X X"

    const-string v5, "X#X"

    const-string v6, "XRX"

    sget-object v8, Lgm;->m:Lgm;

    sget-object v10, Lgm;->aA:Lgm;

    sget-object v12, Luu;->aL:Luu;

    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 232
    new-instance v1, Liz;

    sget-object v4, Lgm;->ax:Lgm;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Liz;-><init>(Lgm;I)V

    sget-object v4, Lgm;->m:Lgm;

    move-object/from16 v10, v30

    filled-new-array {v10, v13, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 238
    new-instance v1, Liz;

    sget-object v4, Luu;->bg:Luu;

    invoke-direct {v1, v4, v5}, Liz;-><init>(Luu;I)V

    const-string v4, "A"

    const-string v5, "B"

    sget-object v7, Luu;->bb:Luu;

    sget-object v9, Luu;->ar:Luu;

    move-object v6, v3

    move-object/from16 v8, v28

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 244
    new-instance v1, Liz;

    sget-object v4, Lgm;->aL:Lgm;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Liz;-><init>(Lgm;I)V

    const-string v4, "A"

    const-string v5, "B"

    sget-object v7, Luu;->av:Luu;

    sget-object v9, Lgm;->ax:Lgm;

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 250
    new-instance v1, Liz;

    sget-object v4, Lgm;->aM:Lgm;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Liz;-><init>(Lgm;I)V

    const-string v4, "A"

    const-string v5, "B"

    sget-object v7, Luu;->aC:Luu;

    sget-object v9, Lgm;->ax:Lgm;

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 256
    new-instance v1, Liz;

    sget-object v4, Lgm;->aC:Lgm;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Liz;-><init>(Lgm;I)V

    sget-object v4, Luu;->y:Luu;

    filled-new-array {v10, v13, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 262
    new-instance v1, Liz;

    sget-object v4, Lgm;->au:Lgm;

    invoke-direct {v1, v4, v5}, Liz;-><init>(Lgm;I)V

    sget-object v4, Lgm;->m:Lgm;

    move-object/from16 v6, v29

    filled-new-array {v10, v6, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 268
    new-instance v1, Liz;

    sget-object v4, Lgm;->g:Lgm;

    invoke-direct {v1, v4, v5}, Liz;-><init>(Lgm;I)V

    const-string v4, "A "

    const-string v5, " B"

    sget-object v7, Lgm;->m:Lgm;

    sget-object v9, Lgm;->an:Lgm;

    move-object v6, v3

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 274
    new-instance v1, Liz;

    sget-object v3, Lgm;->S:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    sget-object v3, Lgm;->R:Lgm;

    filled-new-array {v13, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 279
    new-instance v1, Liz;

    sget-object v3, Luu;->au:Luu;

    const/4 v11, 0x4

    invoke-direct {v1, v3, v11}, Liz;-><init>(Luu;I)V

    sget-object v3, Luu;->y:Luu;

    const-string v12, "#  "

    const-string v15, "## "

    filled-new-array {v12, v15, v13, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 286
    new-instance v1, Liz;

    sget-object v3, Lgm;->aP:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, "  #"

    const-string v5, " #X"

    const-string v6, "# X"

    sget-object v8, Lgm;->B:Lgm;

    sget-object v10, Lgm;->I:Lgm;

    move-object v7, v2

    move-object/from16 v9, v16

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 293
    new-instance v1, Liz;

    sget-object v3, Luu;->aI:Luu;

    invoke-direct {v1, v3, v11}, Liz;-><init>(Luu;I)V

    sget-object v3, Luu;->x:Luu;

    filled-new-array {v12, v15, v13, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 300
    new-instance v1, Liz;

    sget-object v3, Lgm;->aq:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, "###"

    const-string v5, "#X#"

    const-string v6, "###"

    sget-object v8, Lgm;->B:Lgm;

    sget-object v10, Luu;->ac:Luu;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 307
    new-instance v1, Liz;

    sget-object v3, Lgm;->ar:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, "###"

    const-string v5, "#X#"

    const-string v6, "###"

    sget-object v8, Luu;->ai:Luu;

    sget-object v10, Lgm;->h:Lgm;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 314
    new-instance v1, Liz;

    sget-object v3, Luu;->aK:Luu;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    const-string v4, "X"

    const-string v5, "#"

    sget-object v7, Luu;->x:Luu;

    sget-object v9, Lgm;->B:Lgm;

    move-object v6, v2

    move-object/from16 v8, v16

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 320
    new-instance v1, Liz;

    sget-object v3, Luu;->aR:Luu;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    const-string v4, "X"

    const-string v5, "#"

    sget-object v7, Lgm;->B:Lgm;

    sget-object v9, Lgm;->aA:Lgm;

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 326
    new-instance v1, Liz;

    sget-object v3, Lgm;->aZ:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, "#X#"

    const-string v5, "III"

    sget-object v7, Luu;->aR:Luu;

    sget-object v9, Lgm;->aA:Lgm;

    const/16 v3, 0x49

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    sget-object v11, Luu;->u:Luu;

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 333
    new-instance v1, Liz;

    sget-object v3, Lgm;->aQ:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, " # "

    const-string v5, "#X#"

    const-string v6, " # "

    sget-object v8, Lgm;->n:Lgm;

    sget-object v10, Lgm;->aA:Lgm;

    move-object v7, v2

    move-object/from16 v9, v16

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 340
    new-instance v1, Liz;

    sget-object v3, Lgm;->aO:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, " # "

    const-string v5, "#X#"

    const-string v6, " # "

    sget-object v8, Lgm;->m:Lgm;

    sget-object v10, Lgm;->aA:Lgm;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 347
    new-instance v1, Liz;

    sget-object v3, Lgm;->bb:Lwr;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, "###"

    const-string v5, "#X#"

    const-string v6, "###"

    sget-object v8, Lgm;->aI:Lgm;

    sget-object v10, Lgm;->aO:Lgm;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 354
    new-instance v1, Liz;

    sget-object v3, Luu;->aS:Luu;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    sget-object v3, Luu;->u:Luu;

    filled-new-array {v14, v14, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 361
    new-instance v1, Liz;

    sget-object v3, Luu;->aL:Luu;

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    sget-object v3, Luu;->u:Luu;

    move-object/from16 v5, v31

    filled-new-array {v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 366
    new-instance v1, Liz;

    sget-object v3, Luu;->aN:Luu;

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    sget-object v3, Luu;->y:Luu;

    filled-new-array {v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 371
    new-instance v1, Liz;

    sget-object v3, Luu;->Q:Luu;

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    const-string v4, "###"

    const-string v5, "#X#"

    const-string v6, "#R#"

    sget-object v8, Luu;->x:Luu;

    sget-object v10, Lgm;->i:Lgm;

    sget-object v12, Lgm;->aA:Lgm;

    move-object/from16 v11, v17

    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 378
    new-instance v1, Liz;

    sget-object v3, Luu;->aa:Luu;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    const-string v4, "TTT"

    const-string v5, "#X#"

    const-string v6, "#R#"

    sget-object v8, Luu;->x:Luu;

    sget-object v10, Lgm;->m:Lgm;

    sget-object v12, Lgm;->aA:Lgm;

    const/16 v3, 0x54

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    sget-object v14, Luu;->y:Luu;

    filled-new-array/range {v4 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 385
    new-instance v1, Liz;

    sget-object v3, Luu;->W:Luu;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Luu;I)V

    const-string v5, "S"

    const-string v6, "P"

    const/16 v3, 0x53

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    sget-object v8, Lgm;->aK:Lgm;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    sget-object v10, Luu;->aa:Luu;

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 392
    new-instance v1, Liz;

    sget-object v3, Lgm;->aY:Lgm;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v4, "###"

    const-string v5, "XXX"

    sget-object v7, Luu;->ac:Luu;

    sget-object v9, Luu;->y:Luu;

    move-object v6, v2

    move-object/from16 v8, v16

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 399
    iget-object v1, v0, Lhk;->b:Ljava/util/List;

    new-instance v2, Lky;

    invoke-direct {v2, v0}, Lky;-><init>(Lhk;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 416
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lhk;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " recipes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static final a()Lhk;
    .registers 1

    .line 17
    sget-object v0, Lhk;->a:Lhk;

    return-object v0
.end method


# virtual methods
.method public a(Lmq;)Liz;
    .registers 5

    const/4 v0, 0x0

    .line 489
    :goto_1
    iget-object v1, p0, Lhk;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 490
    iget-object v1, p0, Lhk;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldt;

    .line 491
    invoke-interface {v1, p1}, Ldt;->a(Lmq;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1, p1}, Ldt;->b(Lmq;)Liz;

    move-result-object p1

    return-object p1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs a(Liz;[Ljava/lang/Object;)V
    .registers 14

    const/4 v0, 0x0

    .line 425
    aget-object v1, p2, v0

    instance-of v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v2, :cond_31

    .line 426
    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move v2, v0

    move v5, v2

    move v6, v5

    .line 427
    :goto_11
    array-length v7, v1

    if-ge v2, v7, :cond_2f

    .line 428
    aget-object v6, v1, v2

    add-int/lit8 v5, v5, 0x1

    .line 430
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_11

    :cond_2f
    move v1, v3

    goto :goto_54

    :cond_31
    move v1, v0

    move v5, v1

    move v6, v5

    .line 434
    :goto_34
    aget-object v2, p2, v1

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_54

    add-int/lit8 v1, v1, 0x1

    .line 435
    check-cast v2, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    .line 437
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    .line 442
    :cond_54
    :goto_54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 443
    :goto_59
    array-length v7, p2

    const/4 v8, 0x0

    if-ge v1, v7, :cond_8b

    .line 444
    aget-object v7, p2, v1

    check-cast v7, Ljava/lang/Character;

    add-int/lit8 v9, v1, 0x1

    .line 446
    aget-object v9, p2, v9

    instance-of v10, v9, Lgm;

    if-eqz v10, :cond_71

    .line 447
    new-instance v8, Liz;

    check-cast v9, Lgm;

    invoke-direct {v8, v9}, Liz;-><init>(Lgm;)V

    goto :goto_85

    .line 448
    :cond_71
    instance-of v10, v9, Luu;

    if-eqz v10, :cond_7e

    .line 449
    new-instance v8, Liz;

    check-cast v9, Luu;

    const/4 v10, -0x1

    invoke-direct {v8, v9, v3, v10}, Liz;-><init>(Luu;II)V

    goto :goto_85

    .line 450
    :cond_7e
    instance-of v10, v9, Liz;

    if-eqz v10, :cond_85

    .line 451
    move-object v8, v9

    check-cast v8, Liz;

    .line 453
    :cond_85
    :goto_85
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_59

    :cond_8b
    mul-int p2, v6, v5

    .line 456
    new-array v1, p2, [Liz;

    :goto_8f
    if-ge v0, p2, :cond_b5

    .line 459
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 460
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 461
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liz;

    invoke-virtual {v3}, Liz;->k()Liz;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_b2

    .line 463
    :cond_b0
    aput-object v8, v1, v0

    :goto_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 466
    :cond_b5
    iget-object p2, p0, Lhk;->b:Ljava/util/List;

    new-instance v0, Lis;

    invoke-direct {v0, v6, v5, v1, p1}, Lis;-><init>(II[Liz;Liz;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    .line 497
    iget-object v0, p0, Lhk;->b:Ljava/util/List;

    return-object v0
.end method

.method varargs b(Liz;[Ljava/lang/Object;)V
    .registers 8

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    array-length v1, p2

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_41

    aget-object v3, p2, v2

    .line 474
    instance-of v4, v3, Liz;

    if-eqz v4, :cond_19

    .line 475
    check-cast v3, Liz;

    invoke-virtual {v3}, Liz;->k()Liz;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 476
    :cond_19
    instance-of v4, v3, Lgm;

    if-eqz v4, :cond_28

    .line 477
    new-instance v4, Liz;

    check-cast v3, Lgm;

    invoke-direct {v4, v3}, Liz;-><init>(Lgm;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 478
    :cond_28
    instance-of v4, v3, Luu;

    if-eqz v4, :cond_39

    .line 479
    new-instance v4, Liz;

    check-cast v3, Luu;

    invoke-direct {v4, v3}, Liz;-><init>(Luu;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 481
    :cond_39
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid shapeless recipy!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_41
    iget-object p2, p0, Lhk;->b:Ljava/util/List;

    new-instance v1, Ltt;

    invoke-direct {v1, p1, v0}, Ltt;-><init>(Liz;Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
