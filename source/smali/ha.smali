###### Class defpackage.ha (ha)
.class public Lha;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[[Ljava/lang/String;

.field private b:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XXX"

    const-string v1, " # "

    .line 9
    filled-new-array {v0, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "X"

    const-string v2, "#"

    filled-new-array {v1, v2, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "XX"

    const-string v3, "X#"

    const-string v4, " #"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v3, v2}, [[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lha;->a:[[Ljava/lang/String;

    .line 27
    sget-object v0, Luu;->y:Luu;

    sget-object v1, Luu;->x:Luu;

    sget-object v2, Lgm;->m:Lgm;

    sget-object v3, Lgm;->l:Lgm;

    sget-object v4, Lgm;->n:Lgm;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgm;->r:Lgm;

    sget-object v2, Lgm;->v:Lgm;

    sget-object v3, Lgm;->e:Lgm;

    sget-object v4, Lgm;->z:Lgm;

    sget-object v5, Lgm;->G:Lgm;

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgm;->q:Lgm;

    sget-object v3, Lgm;->u:Lgm;

    sget-object v4, Lgm;->d:Lgm;

    sget-object v5, Lgm;->y:Lgm;

    sget-object v6, Lgm;->F:Lgm;

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgm;->s:Lgm;

    sget-object v4, Lgm;->w:Lgm;

    sget-object v5, Lgm;->f:Lgm;

    sget-object v6, Lgm;->A:Lgm;

    sget-object v7, Lgm;->H:Lgm;

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgm;->L:Lgm;

    sget-object v5, Lgm;->M:Lgm;

    sget-object v6, Lgm;->N:Lgm;

    sget-object v7, Lgm;->O:Lgm;

    sget-object v8, Lgm;->P:Lgm;

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lha;->b:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lhk;)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    .line 37
    :goto_2
    iget-object v2, p0, Lha;->b:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    array-length v3, v2

    const/16 v4, 0x23

    if-ge v1, v3, :cond_3e

    .line 38
    aget-object v2, v2, v1

    move v3, v0

    .line 40
    :goto_e
    iget-object v5, p0, Lha;->b:[[Ljava/lang/Object;

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_3b

    add-int/lit8 v6, v3, 0x1

    .line 41
    aget-object v5, v5, v6

    aget-object v5, v5, v1

    check-cast v5, Lgm;

    .line 42
    new-instance v7, Liz;

    invoke-direct {v7, v5}, Liz;-><init>(Lgm;)V

    iget-object v5, p0, Lha;->a:[[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    sget-object v8, Lgm;->B:Lgm;

    const/16 v9, 0x58

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    filled-new-array {v3, v5, v8, v9, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    move v3, v6

    goto :goto_e

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    :cond_3e
    new-instance v0, Liz;

    sget-object v1, Lgm;->bc:Lbl;

    invoke-direct {v0, v1}, Liz;-><init>(Lgm;)V

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lgm;->m:Lgm;

    const-string v3, " #"

    const-string v4, "# "

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    return-void
.end method
