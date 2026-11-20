###### Class defpackage.jf (jf)
.class public Ljf;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
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

    .line 18
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljf;->a:I

    .line 19
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Ljf;->b:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 23
    iget v0, p0, Ljf;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 24
    iget-byte v0, p0, Ljf;->b:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 28
    invoke-virtual {p1, p0}, Lti;->a(Ljf;)V

    return-void
.end method
