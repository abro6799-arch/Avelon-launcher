###### Class defpackage.mv (mv)
.class public Lmv;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lmv;->a:I

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lmv;->b:I

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lmv;->c:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 32
    iget v0, p0, Lmv;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 33
    iget v0, p0, Lmv;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 34
    iget v0, p0, Lmv;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 22
    invoke-virtual {p1, p0}, Lti;->a(Lmv;)V

    return-void
.end method
