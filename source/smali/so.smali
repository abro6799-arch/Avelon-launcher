###### Class defpackage.so (so)
.class public Lso;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 94
    iget v0, p0, Lso;->i:I

    add-int/lit8 v0, v0, 0x15

    if-lez v0, :cond_8

    const/4 v0, 0x6

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 62
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lso;->a:I

    .line 63
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lso;->h:I

    .line 64
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lso;->b:I

    .line 65
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lso;->c:I

    .line 66
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lso;->d:I

    .line 67
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lso;->i:I

    if-lez v0, :cond_38

    .line 69
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lso;->e:I

    .line 70
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lso;->f:I

    .line 71
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lso;->g:I

    :cond_38
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 76
    iget v0, p0, Lso;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    iget v0, p0, Lso;->h:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 78
    iget v0, p0, Lso;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 79
    iget v0, p0, Lso;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget v0, p0, Lso;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 81
    iget v0, p0, Lso;->i:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    iget v0, p0, Lso;->i:I

    if-lez v0, :cond_31

    .line 83
    iget v0, p0, Lso;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    iget v0, p0, Lso;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 85
    iget v0, p0, Lso;->g:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_31
    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 90
    invoke-virtual {p1, p0}, Lti;->a(Lso;)V

    return-void
.end method
