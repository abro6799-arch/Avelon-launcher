###### Class defpackage.ai (ai)
.class public Lai;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:S

.field public b:S

.field public c:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lai;->k:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 42
    iget-object v0, p0, Lai;->c:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lai;->a:S

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lai;->b:S

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    new-array v0, v0, [B

    iput-object v0, p0, Lai;->c:[B

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 31
    iget-short v0, p0, Lai;->a:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 32
    iget-short v0, p0, Lai;->b:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 33
    iget-object v0, p0, Lai;->c:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 34
    iget-object v0, p0, Lai;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 38
    invoke-virtual {p1, p0}, Lti;->a(Lai;)V

    return-void
.end method
