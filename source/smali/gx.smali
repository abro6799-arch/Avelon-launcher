###### Class defpackage.gx (gx)
.class public Lgx;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Liz;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILiz;)V
    .registers 6

    .line 16
    invoke-direct {p0}, Lki;-><init>()V

    .line 17
    iput p1, p0, Lgx;->a:I

    .line 18
    iput p2, p0, Lgx;->b:I

    .line 19
    iput p3, p0, Lgx;->c:I

    .line 20
    iput p4, p0, Lgx;->d:I

    .line 21
    iput-object p5, p0, Lgx;->e:Liz;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 5

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lgx;->a:I

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iput v0, p0, Lgx;->b:I

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lgx;->c:I

    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iput v0, p0, Lgx;->d:I

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    if-ltz v0, :cond_2e

    .line 32
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    .line 35
    new-instance v2, Liz;

    invoke-direct {v2, v0, v1, p1}, Liz;-><init>(III)V

    iput-object v2, p0, Lgx;->e:Liz;

    goto :goto_31

    :cond_2e
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lgx;->e:Liz;

    :goto_31
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 42
    iget v0, p0, Lgx;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 43
    iget v0, p0, Lgx;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 44
    iget v0, p0, Lgx;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    iget v0, p0, Lgx;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 47
    iget-object v0, p0, Lgx;->e:Liz;

    if-nez v0, :cond_1d

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_32

    .line 50
    :cond_1d
    iget v0, v0, Liz;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 51
    iget-object v0, p0, Lgx;->e:Liz;

    iget v0, v0, Liz;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 52
    iget-object v0, p0, Lgx;->e:Liz;

    invoke-virtual {v0}, Liz;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_32
    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 57
    invoke-virtual {p1, p0}, Lti;->a(Lgx;)V

    return-void
.end method
