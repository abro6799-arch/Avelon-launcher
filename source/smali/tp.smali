###### Class defpackage.tp (tp)
.class public Ltp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Luu;->ai:Luu;

    new-instance v1, Liz;

    sget-object v2, Lgm;->n:Lgm;

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Liz;-><init>(Lgm;I)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Luu;->aj:Luu;

    new-instance v2, Liz;

    sget-object v4, Lgm;->m:Lgm;

    invoke-direct {v2, v4, v3}, Liz;-><init>(Lgm;I)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Luu;->ay:Luu;

    new-instance v4, Liz;

    sget-object v5, Lgm;->l:Lgm;

    invoke-direct {v4, v5, v3}, Liz;-><init>(Lgm;I)V

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Luu;->P:Luu;

    new-instance v5, Liz;

    sget-object v6, Lgm;->aU:Lgm;

    const/4 v7, 0x4

    invoke-direct {v5, v6, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltp;->a:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lhk;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 22
    :goto_2
    iget-object v2, p0, Ltp;->a:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_36

    .line 23
    aget-object v2, v2, v1

    aget-object v3, v2, v0

    check-cast v3, Luu;

    const/4 v4, 0x1

    .line 24
    aget-object v2, v2, v4

    check-cast v2, Liz;

    .line 25
    new-instance v4, Liz;

    invoke-direct {v4, v3}, Liz;-><init>(Luu;)V

    const/16 v5, 0x23

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const-string v7, "###"

    filled-new-array {v7, v7, v7, v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    const-string v4, "#"

    .line 32
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    filled-new-array {v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lhk;->a(Liz;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method
