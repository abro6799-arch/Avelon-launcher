###### Class defpackage.ob (ob)
.class public Lob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lnet/minecraft/client/Minecraft;

.field public b:Z


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lob;->b:Z

    .line 18
    iput-object p1, p0, Lob;->a:Lnet/minecraft/client/Minecraft;

    return-void
.end method


# virtual methods
.method public a(IIIZLgs;)Liz;
    .registers 6

    .line 106
    iget-object p1, p5, Lgs;->e:Ldw;

    invoke-virtual {p1, p2, p3, p4, p5}, Ldw;->a(IIZLgs;)Liz;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(F)V
    .registers 2

    return-void
.end method

.method public a(IIII)V
    .registers 12

    .line 25
    iget-object v0, p0, Lob;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v0, p0, Lob;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->a(Lgs;IIII)V

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lob;->b(IIII)Z

    return-void
.end method

.method public a(ILgs;)V
    .registers 3

    .line 110
    iget-object p1, p2, Lgs;->e:Ldw;

    invoke-virtual {p1, p2}, Ldw;->a(Lgs;)V

    .line 111
    iget-object p1, p2, Lgs;->d:Ldw;

    iput-object p1, p2, Lgs;->e:Ldw;

    return-void
.end method

.method public a(Lfd;)V
    .registers 2

    return-void
.end method

.method public a(Lgs;)V
    .registers 2

    return-void
.end method

.method public a(Lgs;Lsn;)V
    .registers 3

    .line 98
    invoke-virtual {p1, p2}, Lgs;->c(Lsn;)V

    return-void
.end method

.method public a(Lgs;Lfd;Liz;)Z
    .registers 5

    .line 55
    iget v0, p3, Liz;->a:I

    .line 56
    invoke-virtual {p3, p2, p1}, Liz;->a(Lfd;Lgs;)Liz;

    move-result-object p2

    if-ne p2, p3, :cond_11

    if-eqz p2, :cond_f

    .line 57
    iget p3, p2, Liz;->a:I

    if-eq p3, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    .line 58
    :cond_11
    :goto_11
    iget-object p3, p1, Lgs;->c:Lix;

    iget-object p3, p3, Lix;->a:[Liz;

    iget-object v0, p1, Lgs;->c:Lix;

    iget v0, v0, Lix;->c:I

    aput-object p2, p3, v0

    .line 59
    iget p2, p2, Liz;->a:I

    if-nez p2, :cond_2a

    .line 60
    iget-object p2, p1, Lgs;->c:Lix;

    iget-object p2, p2, Lix;->a:[Liz;

    iget-object p1, p1, Lgs;->c:Lix;

    iget p1, p1, Lix;->c:I

    const/4 p3, 0x0

    aput-object p3, p2, p1

    :cond_2a
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lgs;Lfd;Liz;IIII)Z
    .registers 16

    .line 85
    invoke-virtual {p2, p4, p5, p6}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_17

    .line 87
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, v0

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Luu;->a(Lfd;IIILgs;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    if-nez p3, :cond_1b

    const/4 p1, 0x0

    return p1

    :cond_1b
    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 90
    invoke-virtual/range {v0 .. v6}, Liz;->a(Lgs;Lfd;IIII)Z

    move-result p1

    return p1
.end method

.method public b()F
    .registers 2

    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method public b(Lfd;)Lgs;
    .registers 6

    .line 94
    new-instance v0, Ldc;

    iget-object v1, p0, Lob;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v1, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v3, p1, Lfd;->t:Lxa;

    iget v3, v3, Lxa;->g:I

    invoke-direct {v0, v1, p1, v2, v3}, Ldc;-><init>(Lnet/minecraft/client/Minecraft;Lfd;Lgr;I)V

    return-object v0
.end method

.method public b(Lgs;)V
    .registers 2

    return-void
.end method

.method public b(Lgs;Lsn;)V
    .registers 3

    .line 102
    invoke-virtual {p1, p2}, Lgs;->d(Lsn;)V

    return-void
.end method

.method public b(IIII)Z
    .registers 13

    .line 30
    iget-object p4, p0, Lob;->a:Lnet/minecraft/client/Minecraft;

    iget-object p4, p4, Lnet/minecraft/client/Minecraft;->f:Lfd;

    .line 31
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {p4, p1, p2, p3}, Lfd;->a(III)I

    move-result v1

    aget-object v6, v0, v1

    const/16 v1, 0x7d1

    .line 32
    iget v0, v6, Luu;->bn:I

    invoke-virtual {p4, p1, p2, p3}, Lfd;->e(III)I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    add-int v5, v0, v2

    move-object v0, p4

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    .line 33
    invoke-virtual {p4, p1, p2, p3}, Lfd;->e(III)I

    move-result v5

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p4, p1, p2, p3, v0}, Lfd;->f(IIII)Z

    move-result v7

    if-eqz v6, :cond_34

    if-eqz v7, :cond_34

    move-object v0, v6

    move-object v1, p4

    move v2, p1

    move v3, p2

    move v4, p3

    .line 36
    invoke-virtual/range {v0 .. v5}, Luu;->c(Lfd;IIII)V

    :cond_34
    return v7
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(IIII)V
    .registers 5

    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
