###### Class defpackage.qs (qs)
.class public Lqs;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:S

.field public e:Liz;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZLiz;S)V
    .registers 7

    .line 18
    invoke-direct {p0}, Lki;-><init>()V

    .line 19
    iput p1, p0, Lqs;->a:I

    .line 20
    iput p2, p0, Lqs;->b:I

    .line 21
    iput p3, p0, Lqs;->c:I

    .line 22
    iput-object p5, p0, Lqs;->e:Liz;

    .line 23
    iput-short p6, p0, Lqs;->d:S

    .line 24
    iput-boolean p4, p0, Lqs;->f:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 5

    .line 32
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lqs;->a:I

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lqs;->b:I

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lqs;->c:I

    .line 35
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lqs;->d:S

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lqs;->f:Z

    .line 38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    if-ltz v0, :cond_34

    .line 40
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 41
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    .line 43
    new-instance v2, Liz;

    invoke-direct {v2, v0, v1, p1}, Liz;-><init>(III)V

    iput-object v2, p0, Lqs;->e:Liz;

    goto :goto_37

    :cond_34
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lqs;->e:Liz;

    :goto_37
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 50
    iget v0, p0, Lqs;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    iget v0, p0, Lqs;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget v0, p0, Lqs;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 53
    iget-short v0, p0, Lqs;->d:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 54
    iget-boolean v0, p0, Lqs;->f:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 56
    iget-object v0, p0, Lqs;->e:Liz;

    if-nez v0, :cond_22

    const/4 v0, -0x1

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_37

    .line 59
    :cond_22
    iget v0, v0, Liz;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    iget-object v0, p0, Lqs;->e:Liz;

    iget v0, v0, Liz;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 61
    iget-object v0, p0, Lqs;->e:Liz;

    invoke-virtual {v0}, Liz;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_37
    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 28
    invoke-virtual {p1, p0}, Lti;->a(Lqs;)V

    return-void
.end method
