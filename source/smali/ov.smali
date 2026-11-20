###### Class defpackage.ov (ov)
.class public Lov;
.super Lid;
.source "SourceFile"


# instance fields
.field private l:Lsk;


# direct methods
.method public constructor <init>(Lix;Lsk;)V
    .registers 4

    .line 12
    new-instance v0, Lbm;

    invoke-direct {v0, p1, p2}, Lbm;-><init>(Lix;Lsk;)V

    invoke-direct {p0, v0}, Lid;-><init>(Ldw;)V

    .line 13
    iput-object p2, p0, Lov;->l:Lsk;

    return-void
.end method


# virtual methods
.method protected a(F)V
    .registers 12

    .line 22
    iget-object v0, p0, Lov;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/gui/furnace.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 24
    iget-object v1, p0, Lov;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v1, v0}, Lji;->b(I)V

    .line 25
    iget v0, p0, Lov;->c:I

    iget v1, p0, Lov;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 26
    iget v0, p0, Lov;->d:I

    iget v1, p0, Lov;->i:I

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 27
    iget v5, p0, Lov;->a:I

    iget v6, p0, Lov;->i:I

    move-object v0, p0

    move v1, v7

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Lov;->b(IIIIII)V

    .line 28
    iget-object v0, p0, Lov;->l:Lsk;

    invoke-virtual {v0}, Lsk;->b()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 29
    iget-object v0, p0, Lov;->l:Lsk;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lsk;->c(I)I

    move-result v0

    add-int/lit8 v2, v7, 0x38

    add-int/lit8 v3, v8, 0x24

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    const/16 v4, 0xb0

    rsub-int/lit8 v5, v0, 0xc

    const/16 v6, 0xe

    add-int/lit8 v9, v0, 0x2

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v9

    .line 30
    invoke-virtual/range {v0 .. v6}, Lov;->b(IIIIII)V

    .line 33
    :cond_58
    iget-object v0, p0, Lov;->l:Lsk;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lsk;->b(I)I

    move-result v0

    add-int/lit8 v1, v7, 0x4f

    add-int/lit8 v2, v8, 0x22

    const/16 v3, 0xb0

    const/16 v4, 0xe

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x10

    move-object v0, p0

    .line 34
    invoke-virtual/range {v0 .. v6}, Lov;->b(IIIIII)V

    return-void
.end method

.method protected k()V
    .registers 6

    .line 17
    iget-object v0, p0, Lov;->g:Lsj;

    const-string v1, "Furnace"

    const/16 v2, 0x3c

    const/4 v3, 0x6

    const v4, 0x404040

    invoke-virtual {v0, v1, v2, v3, v4}, Lsj;->b(Ljava/lang/String;III)V

    .line 18
    iget-object v0, p0, Lov;->g:Lsj;

    iget v1, p0, Lov;->i:I

    add-int/lit8 v1, v1, -0x60

    add-int/lit8 v1, v1, 0x2

    const-string v2, "Inventory"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1, v4}, Lsj;->b(Ljava/lang/String;III)V

    return-void
.end method
