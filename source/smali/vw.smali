###### Class defpackage.vw (vw)
.class public Lvw;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 22
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lvw;->a:I

    .line 23
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lvw;->b:I

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lvw;->c:I

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iput v0, p0, Lvw;->d:I

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lvw;->e:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 30
    iget v0, p0, Lvw;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    iget v0, p0, Lvw;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 32
    iget v0, p0, Lvw;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 33
    iget v0, p0, Lvw;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 34
    iget v0, p0, Lvw;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 38
    invoke-virtual {p1, p0}, Lti;->a(Lvw;)V

    return-void
.end method
