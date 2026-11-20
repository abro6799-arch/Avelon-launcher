###### Class defpackage.pa (pa)
.class public Lpa;
.super Li;
.source "SourceFile"


# instance fields
.field private e:I

.field private f:Lmcshim/awt/image/BufferedImage;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Li;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lpa;->e:I

    const-string v0, "Default"

    .line 17
    iput-object v0, p0, Lpa;->a:Ljava/lang/String;

    const-string v0, "The default look of Minecraft"

    .line 18
    iput-object v0, p0, Lpa;->b:Ljava/lang/String;

    .line 21
    :try_start_e
    const-class v0, Lpa;

    const-string v1, "/pack.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lmcshim/imageio/ImageIO;->read(Ljava/net/URL;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lpa;->f:Lmcshim/awt/image/BufferedImage;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_21
    return-void
.end method


# virtual methods
.method public b(Lnet/minecraft/client/Minecraft;)V
    .registers 3

    .line 28
    iget-object v0, p0, Lpa;->f:Lmcshim/awt/image/BufferedImage;

    if-eqz v0, :cond_b

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget v0, p0, Lpa;->e:I

    invoke-virtual {p1, v0}, Lji;->a(I)V

    :cond_b
    return-void
.end method

.method public c(Lnet/minecraft/client/Minecraft;)V
    .registers 4

    .line 32
    iget-object v0, p0, Lpa;->f:Lmcshim/awt/image/BufferedImage;

    if-eqz v0, :cond_12

    iget v0, p0, Lpa;->e:I

    if-gez v0, :cond_12

    iget-object v0, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v1, p0, Lpa;->f:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v0, v1}, Lji;->a(Lmcshim/awt/image/BufferedImage;)I

    move-result v0

    iput v0, p0, Lpa;->e:I

    .line 33
    :cond_12
    iget-object v0, p0, Lpa;->f:Lmcshim/awt/image/BufferedImage;

    if-eqz v0, :cond_1e

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget v0, p0, Lpa;->e:I

    invoke-virtual {p1, v0}, Lji;->b(I)V

    goto :goto_2b

    .line 34
    :cond_1e
    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v0, "/gui/unknown_pack.png"

    invoke-virtual {p1, v0}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    :goto_2b
    return-void
.end method
