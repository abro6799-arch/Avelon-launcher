###### Class defpackage.fy (fy)
.class Lfy;
.super Lmcshim/awt/Canvas;
.source "SourceFile"


# instance fields
.field private a:Lmcshim/awt/image/BufferedImage;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Lmcshim/awt/Canvas;-><init>()V

    .line 22
    :try_start_3
    const-class v0, Lcb;

    const-string v1, "/gui/logo.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lmcshim/imageio/ImageIO;->read(Ljava/net/URL;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lfy;->a:Lmcshim/awt/image/BufferedImage;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_11

    .line 26
    :catch_11
    new-instance v0, Lmcshim/awt/Dimension;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Lmcshim/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lfy;->setPreferredSize(Lmcshim/awt/Dimension;)V

    .line 27
    new-instance v0, Lmcshim/awt/Dimension;

    invoke-direct {v0, v1, v1}, Lmcshim/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lfy;->setMinimumSize(Lmcshim/awt/Dimension;)V

    return-void
.end method


# virtual methods
.method public paint(Lmcshim/awt/Graphics;)V
    .registers 6

    .line 31
    invoke-super {p0, p1}, Lmcshim/awt/Canvas;->paint(Lmcshim/awt/Graphics;)V

    .line 32
    iget-object v0, p0, Lfy;->a:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {p0}, Lfy;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lfy;->a:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lmcshim/awt/Graphics;->drawImage(Lmcshim/awt/Image;IILmcshim/awt/image/ImageObserver;)Z

    return-void
.end method
