###### Class defpackage.od (od)
.class public Lod;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhk;)V
    .registers 18

    move-object/from16 v0, p1

    .line 11
    new-instance v1, Liz;

    sget-object v2, Lgm;->D:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    const-string v3, "Y"

    const-string v4, "X"

    const-string v5, "#"

    const/16 v2, 0x58

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v7, Luu;->ag:Lwb;

    const/16 v6, 0x59

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    sget-object v9, Luu;->ah:Lwb;

    const/16 v6, 0x23

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    sget-object v11, Lgm;->C:Lgm;

    move-object v6, v2

    move-object v8, v12

    move-object v10, v15

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 20
    new-instance v1, Liz;

    sget-object v3, Lgm;->D:Lgm;

    invoke-direct {v1, v3}, Liz;-><init>(Lgm;)V

    const-string v6, "Y"

    const-string v7, "X"

    const-string v8, "#"

    sget-object v10, Luu;->ah:Lwb;

    sget-object v3, Luu;->ag:Lwb;

    sget-object v14, Lgm;->C:Lgm;

    move-object v9, v2

    move-object v11, v12

    move-object v12, v3

    move-object v13, v15

    filled-new-array/range {v6 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    .line 29
    new-instance v1, Liz;

    sget-object v3, Lgm;->ba:Lgm;

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4}, Liz;-><init>(Lgm;I)V

    new-instance v3, Liz;

    sget-object v4, Lgm;->aU:Lgm;

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Liz;-><init>(Lgm;II)V

    sget-object v4, Lgm;->R:Lgm;

    const-string v5, "#X#"

    filled-new-array {v5, v2, v3, v15, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    return-void
.end method
