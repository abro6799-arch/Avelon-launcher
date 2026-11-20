###### Class defpackage.wu (wu)
.class public Lwu;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[S

.field public d:[B

.field public e:[B

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lki;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lwu;->k:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 70
    iget v0, p0, Lwu;->f:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 5

    .line 40
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lwu;->a:I

    .line 41
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lwu;->b:I

    .line 43
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lwu;->f:I

    .line 44
    new-array v1, v0, [S

    iput-object v1, p0, Lwu;->c:[S

    .line 45
    new-array v1, v0, [B

    iput-object v1, p0, Lwu;->d:[B

    .line 46
    new-array v0, v0, [B

    iput-object v0, p0, Lwu;->e:[B

    const/4 v0, 0x0

    .line 47
    :goto_23
    iget v1, p0, Lwu;->f:I

    if-ge v0, v1, :cond_32

    .line 48
    iget-object v1, p0, Lwu;->c:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 50
    :cond_32
    iget-object v0, p0, Lwu;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 51
    iget-object v0, p0, Lwu;->e:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 55
    iget v0, p0, Lwu;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    iget v0, p0, Lwu;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 57
    iget v0, p0, Lwu;->f:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    .line 58
    :goto_11
    iget v1, p0, Lwu;->f:I

    if-ge v0, v1, :cond_1f

    .line 59
    iget-object v1, p0, Lwu;->c:[S

    aget-short v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 61
    :cond_1f
    iget-object v0, p0, Lwu;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 62
    iget-object v0, p0, Lwu;->e:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 66
    invoke-virtual {p1, p0}, Lti;->a(Lwu;)V

    return-void
.end method
