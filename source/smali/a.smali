###### Class defpackage.a (a)
.class public La;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 14
    invoke-direct {p0}, Lki;-><init>()V

    .line 15
    iput p1, p0, La;->a:I

    .line 16
    iput p2, p0, La;->b:I

    .line 17
    iput p3, p0, La;->c:I

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

    .line 21
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, La;->a:I

    .line 22
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, La;->b:I

    .line 23
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, La;->c:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 27
    iget v0, p0, La;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 28
    iget v0, p0, La;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    iget v0, p0, La;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 33
    invoke-virtual {p1, p0}, Lti;->a(La;)V

    return-void
.end method
