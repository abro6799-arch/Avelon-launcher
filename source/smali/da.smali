###### Class defpackage.da (da)
.class public Lda;
.super Lub;
.source "SourceFile"


# instance fields
.field private a:Lke;

.field protected b:Lnet/minecraft/client/Minecraft;

.field public c:I

.field public d:I

.field protected e:Ljava/util/List;

.field public f:Z

.field protected g:Lsj;

.field public h:Ldu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lub;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lda;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lda;->f:Z

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lda;->a:Lke;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-static {}, Lmcshim/awt/Toolkit;->getDefaultToolkit()Lmcshim/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lmcshim/awt/Toolkit;->getSystemClipboard()Lmcshim/awt/datatransfer/Clipboard;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmcshim/awt/datatransfer/Clipboard;->getContents(Ljava/lang/Object;)Lmcshim/awt/datatransfer/Transferable;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 46
    sget-object v2, Lmcshim/awt/datatransfer/DataFlavor;->stringFlavor:Lmcshim/awt/datatransfer/DataFlavor;

    invoke-interface {v1, v2}, Lmcshim/awt/datatransfer/Transferable;->isDataFlavorSupported(Lmcshim/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 47
    sget-object v2, Lmcshim/awt/datatransfer/DataFlavor;->stringFlavor:Lmcshim/awt/datatransfer/DataFlavor;

    invoke-interface {v1, v2}, Lmcshim/awt/datatransfer/Transferable;->getTransferData(Lmcshim/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    :cond_20
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method protected a(CI)V
    .registers 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_e

    .line 38
    iget-object p1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 39
    iget-object p1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1}, Lnet/minecraft/client/Minecraft;->g()V

    :cond_e
    return-void
.end method

.method public a(I)V
    .registers 10

    .line 149
    iget-object v0, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 150
    iget v4, p0, Lda;->c:I

    iget v5, p0, Lda;->d:I

    const v6, -0x3fefeff0

    const v7, -0x2fefeff0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lda;->a(IIIIII)V

    goto :goto_1a

    .line 152
    :cond_17
    invoke-virtual {p0, p1}, Lda;->b(I)V

    :goto_1a
    return-void
.end method

.method public a(IIF)V
    .registers 6

    const/4 p3, 0x0

    .line 30
    :goto_1
    iget-object v0, p0, Lda;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_19

    .line 31
    iget-object v0, p0, Lda;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lke;

    .line 32
    iget-object v1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0, v1, p1, p2}, Lke;->a(Lnet/minecraft/client/Minecraft;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method protected a(III)V
    .registers 8

    if-nez p3, :cond_2e

    const/4 p3, 0x0

    .line 67
    :goto_3
    iget-object v0, p0, Lda;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2e

    .line 68
    iget-object v0, p0, Lda;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lke;

    .line 69
    iget-object v1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0, v1, p1, p2}, Lke;->c(Lnet/minecraft/client/Minecraft;II)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 70
    iput-object v0, p0, Lda;->a:Lke;

    .line 71
    iget-object v1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->B:Lyo;

    const-string v2, "random.click"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v3}, Lyo;->a(Ljava/lang/String;FF)V

    .line 72
    invoke-virtual {p0, v0}, Lda;->a(Lke;)V

    :cond_2b
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_2e
    return-void
.end method

.method protected a(Lke;)V
    .registers 2

    return-void
.end method

.method public a(Lnet/minecraft/client/Minecraft;II)V
    .registers 5

    .line 89
    new-instance v0, Ldu;

    invoke-direct {v0, p1}, Ldu;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v0, p0, Lda;->h:Ldu;

    .line 90
    iput-object p1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    .line 91
    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iput-object p1, p0, Lda;->g:Lsj;

    .line 92
    iput p2, p0, Lda;->c:I

    .line 93
    iput p3, p0, Lda;->d:I

    .line 94
    iget-object p1, p0, Lda;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 95
    invoke-virtual {p0}, Lda;->b()V

    return-void
.end method

.method public a(ZI)V
    .registers 3

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xb50

    .line 157
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v2, 0xb60

    .line 158
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 159
    sget-object v2, Lnw;->a:Lnw;

    .line 160
    iget-object v3, v0, Lda;->b:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v4, "/gui/background.png"

    invoke-virtual {v3, v4}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 161
    invoke-static {v3, v3, v3, v3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 163
    invoke-virtual {v2}, Lnw;->b()V

    const v3, 0x404040

    .line 164
    invoke-virtual {v2, v3}, Lnw;->b(I)V

    const-wide/16 v4, 0x0

    .line 165
    iget v3, v0, Lda;->d:I

    int-to-double v6, v3

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    int-to-float v3, v3

    const/high16 v14, 0x42000000    # 32.0f

    div-float/2addr v3, v14

    int-to-float v15, v1

    add-float/2addr v3, v15

    float-to-double v12, v3

    move-object v3, v2

    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    .line 166
    iget v3, v0, Lda;->c:I

    int-to-double v4, v3

    iget v6, v0, Lda;->d:I

    int-to-double v7, v6

    const-wide/16 v9, 0x0

    int-to-float v3, v3

    div-float/2addr v3, v14

    float-to-double v11, v3

    int-to-float v3, v6

    div-float/2addr v3, v14

    add-float/2addr v3, v15

    float-to-double v14, v3

    move-object v3, v2

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v14

    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    .line 167
    iget v3, v0, Lda;->c:I

    int-to-double v4, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    int-to-float v3, v3

    const/high16 v10, 0x42000000    # 32.0f

    div-float/2addr v3, v10

    float-to-double v10, v3

    add-int/lit8 v1, v1, 0x0

    int-to-double v14, v1

    move-object v3, v2

    move-wide v12, v14

    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x0

    .line 168
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    .line 169
    invoke-virtual {v2}, Lnw;->a()V

    return-void
.end method

.method protected b(III)V
    .registers 5

    .line 79
    iget-object v0, p0, Lda;->a:Lke;

    if-eqz v0, :cond_c

    if-nez p3, :cond_c

    .line 80
    invoke-virtual {v0, p1, p2}, Lke;->a(II)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lda;->a:Lke;

    :cond_c
    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .registers 2

    .line 107
    :goto_0
    invoke-static {}, Lorg/lwjgl/input/Mouse;->next()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 108
    invoke-virtual {p0}, Lda;->f()V

    goto :goto_0

    .line 111
    :cond_a
    :goto_a
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->next()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 112
    invoke-virtual {p0}, Lda;->g()V

    goto :goto_a

    :cond_14
    return-void
.end method

.method public f()V
    .registers 5

    .line 117
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButtonState()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 118
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventX()I

    move-result v0

    iget v1, p0, Lda;->c:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    iget v1, v1, Lnet/minecraft/client/Minecraft;->d:I

    div-int/2addr v0, v1

    .line 119
    iget v1, p0, Lda;->d:I

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventY()I

    move-result v2

    iget v3, p0, Lda;->d:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    iget v3, v3, Lnet/minecraft/client/Minecraft;->e:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 120
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButton()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lda;->a(III)V

    goto :goto_4f

    .line 122
    :cond_2b
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventX()I

    move-result v0

    iget v1, p0, Lda;->c:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    iget v1, v1, Lnet/minecraft/client/Minecraft;->d:I

    div-int/2addr v0, v1

    .line 123
    iget v1, p0, Lda;->d:I

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventY()I

    move-result v2

    iget v3, p0, Lda;->d:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    iget v3, v3, Lnet/minecraft/client/Minecraft;->e:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 124
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButton()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lda;->b(III)V

    :goto_4f
    return-void
.end method

.method public g()V
    .registers 3

    .line 129
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKeyState()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 130
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_14

    .line 131
    iget-object v0, p0, Lda;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->j()V

    return-void

    .line 134
    :cond_14
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventCharacter()C

    move-result v0

    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lda;->a(CI)V

    :cond_1f
    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lda;->a(I)V

    return-void
.end method

.method public j()V
    .registers 1

    return-void
.end method
