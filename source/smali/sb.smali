###### Class defpackage.sb (sb)
.class public Lsb;
.super Luh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Luh;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lsb;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 87
    invoke-super {p0, p1}, Luh;->a(Ljava/io/DataInputStream;)V

    .line 88
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsb;->e:B

    .line 89
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lsb;->f:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 93
    invoke-super {p0, p1}, Luh;->a(Ljava/io/DataOutputStream;)V

    .line 94
    iget-byte v0, p0, Lsb;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 95
    iget-byte v0, p0, Lsb;->f:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method
