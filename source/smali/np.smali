###### Class defpackage.np (np)
.class Lnp;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field a:[B

.field final synthetic b:Lio;

.field private c:I

.field private d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lio;Ljava/net/URL;Ljava/io/InputStream;)V
    .registers 5

    .line 14
    iput-object p1, p0, Lnp;->b:Lio;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, 0x1

    new-array v0, p1, [B

    .line 21
    iput-object v0, p0, Lnp;->a:[B

    .line 15
    iput-object p3, p0, Lnp;->d:Ljava/io/InputStream;

    .line 16
    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "/"

    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lnp;->c:I

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4

    .line 24
    iget-object v0, p0, Lnp;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnp;->read([BII)I

    move-result v0

    if-gez v0, :cond_b

    return v0

    .line 26
    :cond_b
    iget-object v0, p0, Lnp;->a:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public read([BII)I
    .registers 9

    .line 30
    iget-object v0, p0, Lnp;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p3, :cond_23

    add-int v1, p2, v0

    .line 32
    aget-byte v2, p1, v1

    iget v3, p0, Lnp;->c:I

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    const v1, 0x1dba038f

    mul-int/2addr v3, v1

    const v1, 0x14ee3

    mul-int/2addr v2, v1

    add-int/2addr v3, v2

    .line 33
    iput v3, p0, Lnp;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    return p3
.end method
