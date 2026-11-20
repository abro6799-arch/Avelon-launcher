###### Class defpackage.xc (xc)
.class public Lxc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[[Ljava/lang/String;

.field private b:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "X"

    const-string v1, "#"

    .line 7
    filled-new-array {v0, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxc;->a:[[Ljava/lang/String;

    .line 13
    sget-object v0, Luu;->y:Luu;

    sget-object v1, Luu;->x:Luu;

    sget-object v2, Lgm;->m:Lgm;

    sget-object v3, Lgm;->l:Lgm;

    sget-object v4, Lgm;->n:Lgm;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgm;->p:Lgm;

    sget-object v2, Lgm;->t:Lgm;

    sget-object v3, Lgm;->o:Lgm;

    sget-object v4, Lgm;->x:Lgm;

    sget-object v5, Lgm;->E:Lgm;

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lxc;->b:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lhk;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 19
    :goto_6
    iget-object v4, v0, Lxc;->b:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    array-length v5, v4

    const/16 v6, 0x23

    const/16 v7, 0x58

    const/4 v8, 0x1

    if-ge v3, v5, :cond_42

    .line 20
    aget-object v4, v4, v3

    move v5, v2

    .line 22
    :goto_15
    iget-object v9, v0, Lxc;->b:[[Ljava/lang/Object;

    array-length v10, v9

    sub-int/2addr v10, v8

    if-ge v5, v10, :cond_3f

    add-int/lit8 v10, v5, 0x1

    .line 23
    aget-object v9, v9, v10

    aget-object v9, v9, v3

    check-cast v9, Lgm;

    .line 24
    new-instance v11, Liz;

    invoke-direct {v11, v9}, Liz;-><init>(Lgm;)V

    iget-object v9, v0, Lxc;->a:[[Ljava/lang/String;

    aget-object v5, v9, v5

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    sget-object v12, Lgm;->B:Lgm;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    filled-new-array {v5, v9, v12, v13, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v11, v5}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    move v5, v10

    goto :goto_15

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 32
    :cond_42
    new-instance v2, Liz;

    sget-object v3, Lgm;->i:Lgm;

    invoke-direct {v2, v3, v8}, Liz;-><init>(Lgm;I)V

    const-string v9, " #X"

    const-string v10, "# X"

    const-string v11, " #X"

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    sget-object v13, Lgm;->I:Lgm;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    sget-object v15, Lgm;->B:Lgm;

    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 40
    new-instance v2, Liz;

    sget-object v3, Lgm;->j:Lgm;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Liz;-><init>(Lgm;I)V

    const-string v8, "X"

    const-string v9, "#"

    const-string v10, "Y"

    const/16 v3, 0x59

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    sget-object v12, Lgm;->J:Lgm;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    sget-object v14, Lgm;->an:Lgm;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    sget-object v16, Lgm;->B:Lgm;

    filled-new-array/range {v8 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    return-void
.end method
