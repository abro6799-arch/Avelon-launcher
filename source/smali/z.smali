###### Class defpackage.z (z)
.class public Lz;
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

    const-string v1, "X X"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v0}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3, v0, v1}, [[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz;->a:[[Ljava/lang/String;

    .line 23
    sget-object v0, Lgm;->aD:Lgm;

    sget-object v1, Luu;->as:Lyq;

    sget-object v2, Lgm;->m:Lgm;

    sget-object v3, Lgm;->l:Lgm;

    sget-object v4, Lgm;->n:Lgm;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgm;->T:Lgm;

    sget-object v2, Lgm;->X:Lgm;

    sget-object v3, Lgm;->ab:Lgm;

    sget-object v4, Lgm;->af:Lgm;

    sget-object v5, Lgm;->aj:Lgm;

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgm;->U:Lgm;

    sget-object v3, Lgm;->Y:Lgm;

    sget-object v4, Lgm;->ac:Lgm;

    sget-object v5, Lgm;->ag:Lgm;

    sget-object v6, Lgm;->ak:Lgm;

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgm;->V:Lgm;

    sget-object v4, Lgm;->Z:Lgm;

    sget-object v5, Lgm;->ad:Lgm;

    sget-object v6, Lgm;->ah:Lgm;

    sget-object v7, Lgm;->al:Lgm;

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgm;->W:Lgm;

    sget-object v5, Lgm;->aa:Lgm;

    sget-object v6, Lgm;->ae:Lgm;

    sget-object v7, Lgm;->ai:Lgm;

    sget-object v8, Lgm;->am:Lgm;

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz;->b:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lhk;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 32
    :goto_2
    iget-object v2, p0, Lz;->b:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    array-length v3, v2

    if-ge v1, v3, :cond_36

    .line 33
    aget-object v2, v2, v1

    move v3, v0

    .line 35
    :goto_c
    iget-object v4, p0, Lz;->b:[[Ljava/lang/Object;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_33

    add-int/lit8 v5, v3, 0x1

    .line 36
    aget-object v4, v4, v5

    aget-object v4, v4, v1

    check-cast v4, Lgm;

    .line 38
    new-instance v6, Liz;

    invoke-direct {v6, v4}, Liz;-><init>(Lgm;)V

    iget-object v4, p0, Lz;->a:[[Ljava/lang/String;

    aget-object v3, v4, v3

    const/16 v4, 0x58

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    move v3, v5

    goto :goto_c

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method
