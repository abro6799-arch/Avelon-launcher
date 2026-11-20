###### Class defpackage.vp (vp)
.class public Lvp;
.super Li;
.source "SourceFile"


# instance fields
.field private e:Ljava/util/zip/ZipFile;

.field private f:I

.field private g:Lmcshim/awt/image/BufferedImage;

.field private h:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Li;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lvp;->f:I

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvp;->a:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lvp;->h:Ljava/io/File;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_f

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x22

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_f
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 95
    :try_start_0
    iget-object v0, p0, Lvp;->e:Ljava/util/zip/ZipFile;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 97
    iget-object v1, p0, Lvp;->e:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p1

    .line 102
    :catch_14
    :cond_14
    const-class v0, Li;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lvp;->h:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lvp;->e:Ljava/util/zip/ZipFile;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public a(Lnet/minecraft/client/Minecraft;)V
    .registers 5

    const/4 p1, 0x0

    .line 33
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lvp;->h:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_58
    .catchall {:try_start_1 .. :try_end_8} :catchall_55

    :try_start_8
    const-string v1, "pack.txt"

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 37
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lvp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvp;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lvp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvp;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_5f

    :catch_36
    :try_start_36
    const-string v1, "pack.png"

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lmcshim/imageio/ImageIO;->read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v1

    iput-object v1, p0, Lvp;->g:Lmcshim/awt/image/BufferedImage;

    .line 48
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_49} :catch_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_5f

    .line 52
    :catch_49
    :try_start_49
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_53
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5f

    .line 57
    :goto_4c
    :try_start_4c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_4f

    .line 61
    :catch_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_5e

    goto :goto_5e

    :catch_53
    move-exception v1

    goto :goto_5a

    :catchall_55
    move-exception v1

    move-object v0, p1

    goto :goto_60

    :catch_58
    move-exception v1

    move-object v0, p1

    .line 54
    :goto_5a
    :try_start_5a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5f

    goto :goto_4c

    :catch_5e
    :goto_5e
    return-void

    :catchall_5f
    move-exception v1

    .line 57
    :goto_60
    :try_start_60
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_63

    .line 61
    :catch_63
    :try_start_63
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_66

    .line 63
    :catch_66
    throw v1
.end method

.method public b()V
    .registers 2

    .line 87
    :try_start_0
    iget-object v0, p0, Lvp;->e:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lvp;->e:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public b(Lnet/minecraft/client/Minecraft;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lvp;->g:Lmcshim/awt/image/BufferedImage;

    if-eqz v0, :cond_b

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget v0, p0, Lvp;->f:I

    invoke-virtual {p1, v0}, Lji;->a(I)V

    .line 69
    :cond_b
    invoke-virtual {p0}, Lvp;->b()V

    return-void
.end method

.method public c(Lnet/minecraft/client/Minecraft;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lvp;->g:Lmcshim/awt/image/BufferedImage;

    if-eqz v0, :cond_12

    iget v0, p0, Lvp;->f:I

    if-gez v0, :cond_12

    iget-object v0, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v1, p0, Lvp;->g:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v0, v1}, Lji;->a(Lmcshim/awt/image/BufferedImage;)I

    move-result v0

    iput v0, p0, Lvp;->f:I

    .line 74
    :cond_12
    iget-object v0, p0, Lvp;->g:Lmcshim/awt/image/BufferedImage;

    if-eqz v0, :cond_1e

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget v0, p0, Lvp;->f:I

    invoke-virtual {p1, v0}, Lji;->b(I)V

    goto :goto_2b

    .line 75
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
