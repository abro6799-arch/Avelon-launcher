###### Class defpackage.gq (gq)
.class public Lgq;
.super Lid;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lix;Laz;)V
    .registers 4

    .line 11
    new-instance v0, Lsh;

    invoke-direct {v0, p1, p2}, Lsh;-><init>(Llw;Laz;)V

    invoke-direct {p0, v0}, Lid;-><init>(Ldw;)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .registers 9

    .line 20
    iget-object p1, p0, Lgq;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v0, "/gui/trap.png"

    invoke-virtual {p1, v0}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 22
    iget-object v0, p0, Lgq;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v0, p1}, Lji;->b(I)V

    .line 23
    iget p1, p0, Lgq;->c:I

    iget v0, p0, Lgq;->a:I

    sub-int/2addr p1, v0

    div-int/lit8 v1, p1, 0x2

    .line 24
    iget p1, p0, Lgq;->d:I

    iget v0, p0, Lgq;->i:I

    sub-int/2addr p1, v0

    div-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25
    iget v5, p0, Lgq;->a:I

    iget v6, p0, Lgq;->i:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lgq;->b(IIIIII)V

    return-void
.end method

.method protected k()V
    .registers 6

    .line 15
    iget-object v0, p0, Lgq;->g:Lsj;

    const-string v1, "Dispenser"

    const/16 v2, 0x3c

    const/4 v3, 0x6

    const v4, 0x404040

    invoke-virtual {v0, v1, v2, v3, v4}, Lsj;->b(Ljava/lang/String;III)V

    .line 16
    iget-object v0, p0, Lgq;->g:Lsj;

    iget v1, p0, Lgq;->i:I

    add-int/lit8 v1, v1, -0x60

    add-int/lit8 v1, v1, 0x2

    const-string v2, "Inventory"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1, v4}, Lsj;->b(Ljava/lang/String;III)V

    return-void
.end method
