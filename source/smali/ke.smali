###### Class defpackage.ke (ke)
.class public Lke;
.super Lub;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .registers 8

    .line 22
    invoke-direct {p0}, Lub;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lke;->g:Z

    .line 16
    iput-boolean v0, p0, Lke;->h:Z

    .line 23
    iput p1, p0, Lke;->f:I

    .line 24
    iput p2, p0, Lke;->c:I

    .line 25
    iput p3, p0, Lke;->d:I

    .line 26
    iput p4, p0, Lke;->a:I

    .line 27
    iput p5, p0, Lke;->b:I

    .line 28
    iput-object p6, p0, Lke;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .registers 12

    const/16 v4, 0xc8

    const/16 v5, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 19
    invoke-direct/range {v0 .. v6}, Lke;-><init>(IIIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Z)I
    .registers 3

    .line 33
    iget-boolean v0, p0, Lke;->g:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_b

    :cond_6
    if-eqz p1, :cond_a

    const/4 p1, 0x2

    goto :goto_b

    :cond_a
    const/4 p1, 0x1

    :goto_b
    return p1
.end method

.method public a(II)V
    .registers 3

    return-void
.end method

.method public a(Lnet/minecraft/client/Minecraft;II)V
    .registers 18

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 39
    iget-boolean v0, v7, Lke;->h:Z

    if-nez v0, :cond_b

    return-void

    .line 41
    :cond_b
    iget-object v11, v8, Lnet/minecraft/client/Minecraft;->q:Lsj;

    .line 43
    iget-object v0, v8, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/gui/gui.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 47
    iget v0, v7, Lke;->c:I

    if-lt v9, v0, :cond_33

    iget v1, v7, Lke;->d:I

    if-lt v10, v1, :cond_33

    iget v2, v7, Lke;->a:I

    add-int/2addr v0, v2

    if-ge v9, v0, :cond_33

    iget v0, v7, Lke;->b:I

    add-int/2addr v1, v0

    if-ge v10, v1, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    move v12, v0

    .line 48
    invoke-virtual {p0, v12}, Lke;->a(Z)I

    move-result v0

    .line 50
    iget v1, v7, Lke;->c:I

    iget v2, v7, Lke;->d:I

    const/4 v3, 0x0

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v13, v0, 0x2e

    iget v0, v7, Lke;->a:I

    div-int/lit8 v5, v0, 0x2

    iget v6, v7, Lke;->b:I

    move-object v0, p0

    move v4, v13

    invoke-virtual/range {v0 .. v6}, Lke;->b(IIIIII)V

    .line 51
    iget v0, v7, Lke;->c:I

    iget v1, v7, Lke;->a:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    iget v3, v7, Lke;->d:I

    div-int/lit8 v0, v1, 0x2

    rsub-int v4, v0, 0xc8

    div-int/lit8 v5, v1, 0x2

    iget v6, v7, Lke;->b:I

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v13

    invoke-virtual/range {v0 .. v6}, Lke;->b(IIIIII)V

    .line 53
    invoke-virtual/range {p0 .. p3}, Lke;->b(Lnet/minecraft/client/Minecraft;II)V

    .line 55
    iget-boolean v0, v7, Lke;->g:Z

    if-nez v0, :cond_8a

    .line 56
    iget-object v2, v7, Lke;->e:Ljava/lang/String;

    iget v0, v7, Lke;->c:I

    iget v1, v7, Lke;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    iget v0, v7, Lke;->d:I

    iget v1, v7, Lke;->b:I

    add-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    const v5, -0x5f5f60

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lke;->a(Lsj;Ljava/lang/String;III)V

    goto :goto_c5

    :cond_8a
    if-eqz v12, :cond_a9

    .line 59
    iget-object v2, v7, Lke;->e:Ljava/lang/String;

    iget v0, v7, Lke;->c:I

    iget v1, v7, Lke;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    iget v0, v7, Lke;->d:I

    iget v1, v7, Lke;->b:I

    add-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    const v5, 0xffffa0

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lke;->a(Lsj;Ljava/lang/String;III)V

    goto :goto_c5

    .line 61
    :cond_a9
    iget-object v2, v7, Lke;->e:Ljava/lang/String;

    iget v0, v7, Lke;->c:I

    iget v1, v7, Lke;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    iget v0, v7, Lke;->d:I

    iget v1, v7, Lke;->b:I

    add-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    const v5, 0xe0e0e0

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lke;->a(Lsj;Ljava/lang/String;III)V

    :goto_c5
    return-void
.end method

.method protected b(Lnet/minecraft/client/Minecraft;II)V
    .registers 4

    return-void
.end method

.method public c(Lnet/minecraft/client/Minecraft;II)Z
    .registers 6

    .line 73
    iget-boolean p1, p0, Lke;->g:Z

    if-eqz p1, :cond_18

    iget p1, p0, Lke;->c:I

    if-lt p2, p1, :cond_18

    iget v0, p0, Lke;->d:I

    if-lt p3, v0, :cond_18

    iget v1, p0, Lke;->a:I

    add-int/2addr p1, v1

    if-ge p2, p1, :cond_18

    iget p1, p0, Lke;->b:I

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method
