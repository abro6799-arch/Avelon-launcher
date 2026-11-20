###### Class defpackage.hp (hp)
.class public Lhp;
.super Lid;
.source "SourceFile"


# instance fields
.field private l:Llw;

.field private m:Llw;

.field private n:I


# direct methods
.method public constructor <init>(Llw;Llw;)V
    .registers 4

    .line 14
    new-instance v0, Lcd;

    invoke-direct {v0, p1, p2}, Lcd;-><init>(Llw;Llw;)V

    invoke-direct {p0, v0}, Lid;-><init>(Ldw;)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lhp;->n:I

    .line 15
    iput-object p1, p0, Lhp;->l:Llw;

    .line 16
    iput-object p2, p0, Lhp;->m:Llw;

    .line 17
    iput-boolean v0, p0, Lhp;->f:Z

    .line 21
    invoke-interface {p2}, Llw;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x9

    iput p1, p0, Lhp;->n:I

    mul-int/lit8 p1, p1, 0x12

    const/16 p2, 0x72

    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Lhp;->i:I

    return-void
.end method


# virtual methods
.method protected a(F)V
    .registers 10

    .line 49
    iget-object p1, p0, Lhp;->b:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v0, "/gui/container.png"

    invoke-virtual {p1, v0}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 51
    iget-object v0, p0, Lhp;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v0, p1}, Lji;->b(I)V

    .line 52
    iget p1, p0, Lhp;->c:I

    iget v0, p0, Lhp;->a:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 53
    iget v0, p0, Lhp;->d:I

    iget v1, p0, Lhp;->i:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 54
    iget v5, p0, Lhp;->a:I

    iget v0, p0, Lhp;->n:I

    mul-int/lit8 v0, v0, 0x12

    add-int/lit8 v6, v0, 0x11

    move-object v0, p0

    move v1, p1

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Lhp;->b(IIIIII)V

    .line 55
    iget v0, p0, Lhp;->n:I

    mul-int/lit8 v0, v0, 0x12

    add-int/2addr v7, v0

    add-int/lit8 v2, v7, 0x11

    const/16 v4, 0x7e

    iget v5, p0, Lhp;->a:I

    const/16 v6, 0x60

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lhp;->b(IIIIII)V

    return-void
.end method

.method protected k()V
    .registers 6

    .line 44
    iget-object v0, p0, Lhp;->g:Lsj;

    iget-object v1, p0, Lhp;->m:Llw;

    invoke-interface {v1}, Llw;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x6

    const v4, 0x404040

    invoke-virtual {v0, v1, v2, v3, v4}, Lsj;->b(Ljava/lang/String;III)V

    .line 45
    iget-object v0, p0, Lhp;->g:Lsj;

    iget-object v1, p0, Lhp;->l:Llw;

    invoke-interface {v1}, Llw;->c()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lhp;->i:I

    add-int/lit8 v3, v3, -0x60

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lsj;->b(Ljava/lang/String;III)V

    return-void
.end method
