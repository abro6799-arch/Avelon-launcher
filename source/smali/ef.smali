###### Class defpackage.ef (ef)
.class public Lef;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[B

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lef;->k:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 85
    iget v0, p0, Lef;->h:I

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 4

    .line 44
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lef;->a:I

    .line 45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lef;->b:I

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lef;->c:I

    .line 47
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lef;->d:I

    .line 48
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lef;->e:I

    .line 49
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lef;->f:I

    .line 51
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lef;->h:I

    .line 52
    new-array v0, v0, [B

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 55
    iget p1, p0, Lef;->d:I

    iget v1, p0, Lef;->e:I

    mul-int/2addr p1, v1

    iget v1, p0, Lef;->f:I

    mul-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lef;->g:[B

    .line 57
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 60
    :try_start_4d
    iget-object v0, p0, Lef;->g:[B

    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_52
    .catch Ljava/util/zip/DataFormatException; {:try_start_4d .. :try_end_52} :catch_58
    .catchall {:try_start_4d .. :try_end_52} :catchall_56

    .line 64
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    return-void

    :catchall_56
    move-exception v0

    goto :goto_60

    .line 62
    :catch_58
    :try_start_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad compressed data format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_56

    .line 64
    :goto_60
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 5

    .line 69
    iget v0, p0, Lef;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    iget v0, p0, Lef;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    iget v0, p0, Lef;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 72
    iget v0, p0, Lef;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 73
    iget v0, p0, Lef;->e:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 74
    iget v0, p0, Lef;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 76
    iget v0, p0, Lef;->h:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lef;->g:[B

    const/4 v1, 0x0

    iget v2, p0, Lef;->h:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 81
    invoke-virtual {p1, p0}, Lti;->a(Lef;)V

    return-void
.end method
