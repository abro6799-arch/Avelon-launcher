###### Class defpackage.pj (pj)
.class public Lpj;
.super Lob;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lob;-><init>(Lnet/minecraft/client/Minecraft;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lpj;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lfd;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lob;->a(Lfd;)V

    return-void
.end method

.method public b(Lgs;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_35

    .line 35
    iget-object v1, p1, Lgs;->c:Lix;

    iget-object v1, v1, Lix;->a:[Liz;

    aget-object v1, v1, v0

    if-nez v1, :cond_25

    .line 36
    iget-object v1, p0, Lpj;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, v1, Ldc;->c:Lix;

    iget-object v1, v1, Lix;->a:[Liz;

    new-instance v2, Liz;

    sget-object v3, Lgr;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luu;

    invoke-direct {v2, v3}, Liz;-><init>(Luu;)V

    aput-object v2, v1, v0

    goto :goto_32

    .line 38
    :cond_25
    iget-object v1, p0, Lpj;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, v1, Ldc;->c:Lix;

    iget-object v1, v1, Lix;->a:[Liz;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput v2, v1, Liz;->a:I

    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_35
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
