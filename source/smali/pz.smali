###### Class defpackage.pz (pz)
.class public Lpz;
.super Luh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Luh;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lpz;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 22
    invoke-super {p0, p1}, Luh;->a(Ljava/io/DataInputStream;)V

    .line 23
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lpz;->b:B

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lpz;->c:B

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lpz;->d:B

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lpz;->e:B

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lpz;->f:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 31
    invoke-super {p0, p1}, Luh;->a(Ljava/io/DataOutputStream;)V

    .line 32
    iget-byte v0, p0, Lpz;->b:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 33
    iget-byte v0, p0, Lpz;->c:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 34
    iget-byte v0, p0, Lpz;->d:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 35
    iget-byte v0, p0, Lpz;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 36
    iget-byte v0, p0, Lpz;->f:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method
