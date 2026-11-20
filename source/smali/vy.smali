###### Class defpackage.vy (vy)
.class public Lvy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field private c:Lmcshim/awt/Component;

.field private d:Lorg/lwjgl/input/Cursor;

.field private e:I


# direct methods
.method public constructor <init>(Lmcshim/awt/Component;)V
    .registers 10

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 22
    iput v0, p0, Lvy;->e:I

    .line 25
    iput-object p1, p0, Lvy;->c:Lmcshim/awt/Component;

    const/4 p1, 0x1

    .line 29
    invoke-static {p1}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 p1, 0x0

    .line 30
    invoke-virtual {v7, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 31
    invoke-virtual {v7}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    const/16 p1, 0x400

    .line 33
    invoke-static {p1}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 36
    :try_start_1b
    new-instance p1, Lorg/lwjgl/input/Cursor;

    const/16 v1, 0x20

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/lwjgl/input/Cursor;-><init>(IIIIILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    iput-object p1, p0, Lvy;->d:Lorg/lwjgl/input/Cursor;
    :try_end_2c
    .catch Lorg/lwjgl/LWJGLException; {:try_start_1b .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    .line 38
    invoke-virtual {p1}, Lorg/lwjgl/LWJGLException;->printStackTrace()V

    :goto_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 64
    invoke-static {v0}, Lorg/lwjgl/input/Mouse;->setGrabbed(Z)V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lvy;->a:I

    .line 74
    iput v0, p0, Lvy;->b:I

    return-void
.end method

.method public b()V
    .registers 3

    .line 79
    iget-object v0, p0, Lvy;->c:Lmcshim/awt/Component;

    invoke-virtual {v0}, Lmcshim/awt/Component;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lvy;->c:Lmcshim/awt/Component;

    invoke-virtual {v1}, Lmcshim/awt/Component;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/lwjgl/input/Mouse;->setCursorPosition(II)V

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Lorg/lwjgl/input/Mouse;->setGrabbed(Z)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 92
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getDX()I

    move-result v0

    iput v0, p0, Lvy;->a:I

    .line 93
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getDY()I

    move-result v0

    iput v0, p0, Lvy;->b:I

    return-void
.end method
