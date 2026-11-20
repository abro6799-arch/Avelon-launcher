###### Class defpackage.oo (oo)
.class public Loo;
.super Lid;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lix;Lfd;III)V
    .registers 13

    .line 10
    new-instance v6, Lit;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lit;-><init>(Lix;Lfd;III)V

    invoke-direct {p0, v6}, Lid;-><init>(Ldw;)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .registers 9

    .line 24
    iget-object p1, p0, Loo;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v0, "/gui/crafting.png"

    invoke-virtual {p1, v0}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 26
    iget-object v0, p0, Loo;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v0, p1}, Lji;->b(I)V

    .line 27
    iget p1, p0, Loo;->c:I

    iget v0, p0, Loo;->a:I

    sub-int/2addr p1, v0

    div-int/lit8 v1, p1, 0x2

    .line 28
    iget p1, p0, Loo;->d:I

    iget v0, p0, Loo;->i:I

    sub-int/2addr p1, v0

    div-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 29
    iget v5, p0, Loo;->a:I

    iget v6, p0, Loo;->i:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Loo;->b(IIIIII)V

    return-void
.end method

.method public h()V
    .registers 3

    .line 14
    invoke-super {p0}, Lid;->h()V

    .line 15
    iget-object v0, p0, Loo;->j:Ldw;

    iget-object v1, p0, Loo;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v1}, Ldw;->a(Lgs;)V

    return-void
.end method

.method protected k()V
    .registers 6

    .line 19
    iget-object v0, p0, Loo;->g:Lsj;

    const-string v1, "Crafting"

    const/16 v2, 0x1c

    const/4 v3, 0x6

    const v4, 0x404040

    invoke-virtual {v0, v1, v2, v3, v4}, Lsj;->b(Ljava/lang/String;III)V

    .line 20
    iget-object v0, p0, Loo;->g:Lsj;

    iget v1, p0, Loo;->i:I

    add-int/lit8 v1, v1, -0x60

    add-int/lit8 v1, v1, 0x2

    const-string v2, "Inventory"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1, v4}, Lsj;->b(Ljava/lang/String;III)V

    return-void
.end method
