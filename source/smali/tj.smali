###### Class defpackage.tj (tj)
.class Ltj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lnf;

.field final c:Lek;


# direct methods
.method constructor <init>(Lek;Ljava/lang/String;Lnf;)V
    .registers 4

    .line 16
    iput-object p1, p0, Ltj;->c:Lek;

    iput-object p2, p0, Ltj;->a:Ljava/lang/String;

    iput-object p3, p0, Ltj;->b:Lnf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {p0}, LMCPortHooks;->skinOverride(Ltj;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 20
    :try_start_8
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ltj;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_56
    .catchall {:try_start_8 .. :try_end_15} :catchall_51

    const/4 v0, 0x1

    .line 22
    :try_start_16
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 24
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 25
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_4f
    .catchall {:try_start_16 .. :try_end_26} :catchall_61

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2d

    .line 36
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 29
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Ltj;->b:Lnf;

    if-nez v0, :cond_3e

    .line 30
    iget-object v0, p0, Ltj;->c:Lek;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lmcshim/imageio/ImageIO;->read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v2

    iput-object v2, v0, Lek;->a:Lmcshim/awt/image/BufferedImage;

    goto :goto_5d

    .line 32
    :cond_3e
    iget-object v2, p0, Ltj;->c:Lek;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lmcshim/imageio/ImageIO;->read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v3

    invoke-interface {v0, v3}, Lnf;->a(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, v2, Lek;->a:Lmcshim/awt/image/BufferedImage;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f
    .catchall {:try_start_2d .. :try_end_4e} :catchall_61

    goto :goto_5d

    :catch_4f
    move-exception v0

    goto :goto_5a

    :catchall_51
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_62

    :catch_56
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 34
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_61

    .line 36
    :goto_5d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_61
    move-exception v0

    :goto_62
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method
