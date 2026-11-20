###### Class defpackage.rg (rg)
.class public Lrg;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:B

.field public f:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsn;)V
    .registers 6

    .line 17
    invoke-direct {p0}, Lki;-><init>()V

    .line 18
    iget v0, p1, Lsn;->aD:I

    iput v0, p0, Lrg;->a:I

    .line 19
    iget-wide v0, p1, Lsn;->aM:D

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lrg;->b:I

    .line 20
    iget-wide v0, p1, Lsn;->aN:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lrg;->c:I

    .line 21
    iget-wide v0, p1, Lsn;->aO:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lrg;->d:I

    .line 22
    iget v0, p1, Lsn;->aS:F

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lrg;->e:B

    .line 23
    iget p1, p1, Lsn;->aT:F

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    float-to-int p1, p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lrg;->f:B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lrg;->a:I

    .line 37
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lrg;->b:I

    .line 38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lrg;->c:I

    .line 39
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lrg;->d:I

    .line 40
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lrg;->e:B

    .line 41
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lrg;->f:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 45
    iget v0, p0, Lrg;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    iget v0, p0, Lrg;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    iget v0, p0, Lrg;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    iget v0, p0, Lrg;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget-byte v0, p0, Lrg;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 50
    iget-byte v0, p0, Lrg;->f:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 54
    invoke-virtual {p1, p0}, Lti;->a(Lrg;)V

    return-void
.end method
