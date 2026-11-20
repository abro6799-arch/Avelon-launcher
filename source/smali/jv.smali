###### Class defpackage.jv (jv)
.class public Ljv;
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

    .line 14
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    .line 17
    invoke-direct {p0}, Lki;-><init>()V

    .line 18
    iput p1, p0, Ljv;->e:I

    .line 19
    iput p2, p0, Ljv;->a:I

    .line 20
    iput p3, p0, Ljv;->b:I

    .line 21
    iput p4, p0, Ljv;->c:I

    .line 22
    iput p5, p0, Ljv;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iput v0, p0, Ljv;->e:I

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljv;->a:I

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iput v0, p0, Ljv;->b:I

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljv;->c:I

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Ljv;->d:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 34
    iget v0, p0, Ljv;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 35
    iget v0, p0, Ljv;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    iget v0, p0, Ljv;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 37
    iget v0, p0, Ljv;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 38
    iget v0, p0, Ljv;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 42
    invoke-virtual {p1, p0}, Lti;->a(Ljv;)V

    return-void
.end method
