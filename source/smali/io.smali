###### Class defpackage.io (io)
.class public Lio;
.super Lpaulscode/sound/codecs/CodecJOrbis;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lpaulscode/sound/codecs/CodecJOrbis;-><init>()V

    return-void
.end method


# virtual methods
.method protected openInputStream()Ljava/io/InputStream;
    .registers 4

    .line 40
    new-instance v0, Lnp;

    iget-object v1, p0, Lio;->url:Ljava/net/URL;

    iget-object v2, p0, Lio;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lnp;-><init>(Lio;Ljava/net/URL;Ljava/io/InputStream;)V

    return-object v0
.end method
