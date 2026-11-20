###### Class defpackage.ng (ng)
.class public Lng;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhk;)V
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x10

    const/4 v3, 0x1

    if-ge v1, v2, :cond_30

    .line 16
    new-instance v2, Liz;

    sget-object v4, Luu;->ac:Luu;

    invoke-static {v1}, Lee;->e(I)I

    move-result v5

    invoke-direct {v2, v4, v3, v5}, Liz;-><init>(Luu;II)V

    new-instance v4, Liz;

    sget-object v5, Lgm;->aU:Lgm;

    invoke-direct {v4, v5, v3, v1}, Liz;-><init>(Lgm;II)V

    new-instance v5, Liz;

    sget-object v6, Lgm;->c:[Lgm;

    sget-object v7, Luu;->ac:Luu;

    iget v7, v7, Luu;->bn:I

    aget-object v6, v6, v7

    invoke-direct {v5, v6, v3, v0}, Liz;-><init>(Lgm;II)V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21
    :cond_30
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-direct {v1, v2, v4, v5}, Liz;-><init>(Lgm;II)V

    sget-object v2, Luu;->ae:Lwb;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 22
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    invoke-direct {v1, v2, v4, v3}, Liz;-><init>(Lgm;II)V

    sget-object v2, Luu;->af:Lwb;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 23
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/4 v6, 0x3

    const/16 v7, 0xf

    invoke-direct {v1, v2, v6, v7}, Liz;-><init>(Lgm;II)V

    sget-object v2, Lgm;->aV:Lgm;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 24
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/16 v8, 0x9

    invoke-direct {v1, v2, v4, v8}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v2, v9, v3, v3}, Liz;-><init>(Lgm;II)V

    new-instance v9, Liz;

    sget-object v10, Lgm;->aU:Lgm;

    invoke-direct {v9, v10, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 26
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/16 v9, 0xe

    invoke-direct {v1, v2, v4, v9}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v2, v9, v3, v3}, Liz;-><init>(Lgm;II)V

    new-instance v9, Liz;

    sget-object v10, Lgm;->aU:Lgm;

    invoke-direct {v9, v10, v3, v5}, Liz;-><init>(Lgm;II)V

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 28
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/16 v5, 0xa

    invoke-direct {v1, v2, v4, v5}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v5, Lgm;->aU:Lgm;

    invoke-direct {v2, v5, v3, v4}, Liz;-><init>(Lgm;II)V

    new-instance v5, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v5, v9, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 30
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/16 v5, 0x8

    invoke-direct {v1, v2, v4, v5}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v2, v9, v3, v0}, Liz;-><init>(Lgm;II)V

    new-instance v9, Liz;

    sget-object v10, Lgm;->aU:Lgm;

    invoke-direct {v9, v10, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 32
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/4 v9, 0x7

    invoke-direct {v1, v2, v4, v9}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v10, Lgm;->aU:Lgm;

    invoke-direct {v2, v10, v3, v5}, Liz;-><init>(Lgm;II)V

    new-instance v5, Liz;

    sget-object v10, Lgm;->aU:Lgm;

    invoke-direct {v5, v10, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 34
    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    invoke-direct {v1, v2, v6, v9}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v5, Lgm;->aU:Lgm;

    invoke-direct {v2, v5, v3, v0}, Liz;-><init>(Lgm;II)V

    new-instance v0, Liz;

    sget-object v5, Lgm;->aU:Lgm;

    invoke-direct {v0, v5, v3, v7}, Liz;-><init>(Lgm;II)V

    new-instance v5, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v5, v9, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v2, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 40
    new-instance v0, Liz;

    sget-object v1, Lgm;->aU:Lgm;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Liz;-><init>(Lgm;II)V

    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v5}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v2, v9, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 42
    new-instance v0, Liz;

    sget-object v1, Lgm;->aU:Lgm;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Liz;-><init>(Lgm;II)V

    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    invoke-direct {v1, v2, v3, v5}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v2, v9, v3, v4}, Liz;-><init>(Lgm;II)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 44
    new-instance v0, Liz;

    sget-object v1, Lgm;->aU:Lgm;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Liz;-><init>(Lgm;II)V

    new-instance v1, Liz;

    sget-object v9, Lgm;->aU:Lgm;

    invoke-direct {v1, v9, v3, v5}, Liz;-><init>(Lgm;II)V

    new-instance v9, Liz;

    sget-object v10, Lgm;->aU:Lgm;

    invoke-direct {v9, v10, v3, v3}, Liz;-><init>(Lgm;II)V

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Liz;

    sget-object v1, Lgm;->aU:Lgm;

    const/16 v9, 0xd

    invoke-direct {v0, v1, v4, v9}, Liz;-><init>(Lgm;II)V

    new-instance v1, Liz;

    sget-object v4, Lgm;->aU:Lgm;

    invoke-direct {v1, v4, v3, v2}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v4, Lgm;->aU:Lgm;

    invoke-direct {v2, v4, v3, v8}, Liz;-><init>(Lgm;II)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 48
    new-instance v0, Liz;

    sget-object v1, Lgm;->aU:Lgm;

    invoke-direct {v0, v1, v6, v9}, Liz;-><init>(Lgm;II)V

    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    invoke-direct {v1, v2, v3, v5}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v4, Lgm;->aU:Lgm;

    invoke-direct {v2, v4, v3, v3}, Liz;-><init>(Lgm;II)V

    new-instance v4, Liz;

    sget-object v6, Lgm;->aU:Lgm;

    invoke-direct {v4, v6, v3, v8}, Liz;-><init>(Lgm;II)V

    filled-new-array {v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    .line 50
    new-instance v0, Liz;

    sget-object v1, Lgm;->aU:Lgm;

    invoke-direct {v0, v1, v5, v9}, Liz;-><init>(Lgm;II)V

    new-instance v1, Liz;

    sget-object v2, Lgm;->aU:Lgm;

    invoke-direct {v1, v2, v3, v5}, Liz;-><init>(Lgm;II)V

    new-instance v2, Liz;

    sget-object v4, Lgm;->aU:Lgm;

    invoke-direct {v2, v4, v3, v3}, Liz;-><init>(Lgm;II)V

    new-instance v4, Liz;

    sget-object v5, Lgm;->aU:Lgm;

    invoke-direct {v4, v5, v3, v3}, Liz;-><init>(Lgm;II)V

    new-instance v5, Liz;

    sget-object v6, Lgm;->aU:Lgm;

    invoke-direct {v5, v6, v3, v7}, Liz;-><init>(Lgm;II)V

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lhk;->b(Liz;[Ljava/lang/Object;)V

    return-void
.end method
