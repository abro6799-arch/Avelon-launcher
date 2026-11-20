###### Class defpackage.sv (sv)
.class public Lsv;
.super Luh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Luh;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 56
    invoke-super {p0, p1}, Luh;->a(Ljava/io/DataInputStream;)V

    .line 57
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsv;->b:B

    .line 58
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsv;->c:B

    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lsv;->d:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 63
    invoke-super {p0, p1}, Luh;->a(Ljava/io/DataOutputStream;)V

    .line 64
    iget-byte v0, p0, Lsv;->b:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 65
    iget-byte v0, p0, Lsv;->c:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 66
    iget-byte v0, p0, Lsv;->d:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method
