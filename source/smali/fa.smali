###### Class defpackage.fa (fa)
.class public Lfa;
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

    .line 16
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsn;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Lki;-><init>()V

    .line 20
    iget v0, p1, Lsn;->aD:I

    iput v0, p0, Lfa;->a:I

    .line 21
    iget-wide v0, p1, Lsn;->aM:D

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lfa;->b:I

    .line 22
    iget-wide v0, p1, Lsn;->aN:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lfa;->c:I

    .line 23
    iget-wide v0, p1, Lsn;->aO:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lfa;->d:I

    .line 24
    instance-of p1, p1, Lc;

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lfa;->e:I

    :cond_2b
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lfa;->a:I

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lfa;->e:I

    .line 32
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lfa;->b:I

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lfa;->c:I

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lfa;->d:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 38
    iget v0, p0, Lfa;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 39
    iget v0, p0, Lfa;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    iget v0, p0, Lfa;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 41
    iget v0, p0, Lfa;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    iget v0, p0, Lfa;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 46
    invoke-virtual {p1, p0}, Lti;->a(Lfa;)V

    return-void
.end method
