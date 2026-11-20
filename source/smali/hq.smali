###### Class defpackage.hq (hq)
.class public Lhq;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Liz;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 5

    .line 32
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lhq;->a:I

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lhq;->b:I

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    if-ltz v0, :cond_22

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 37
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    .line 39
    new-instance v2, Liz;

    invoke-direct {v2, v0, v1, p1}, Liz;-><init>(III)V

    iput-object v2, p0, Lhq;->c:Liz;

    goto :goto_25

    :cond_22
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lhq;->c:Liz;

    :goto_25
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 46
    iget v0, p0, Lhq;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 47
    iget v0, p0, Lhq;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 48
    iget-object v0, p0, Lhq;->c:Liz;

    if-nez v0, :cond_13

    const/4 v0, -0x1

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_28

    .line 51
    :cond_13
    iget v0, v0, Liz;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget-object v0, p0, Lhq;->c:Liz;

    iget v0, v0, Liz;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 53
    iget-object v0, p0, Lhq;->c:Liz;

    invoke-virtual {v0}, Liz;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_28
    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 28
    invoke-virtual {p1, p0}, Lti;->a(Lhq;)V

    return-void
.end method
