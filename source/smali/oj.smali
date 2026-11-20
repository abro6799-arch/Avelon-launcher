###### Class defpackage.oj (oj)
.class public Loj;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:S

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(ISZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Lki;-><init>()V

    .line 16
    iput p1, p0, Loj;->a:I

    .line 17
    iput-short p2, p0, Loj;->b:S

    .line 18
    iput-boolean p3, p0, Loj;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Loj;->a:I

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Loj;->b:S

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Loj;->c:Z

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 32
    iget v0, p0, Loj;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 33
    iget-short v0, p0, Loj;->b:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 34
    iget-boolean v0, p0, Loj;->c:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 22
    invoke-virtual {p1, p0}, Lti;->a(Loj;)V

    return-void
.end method
