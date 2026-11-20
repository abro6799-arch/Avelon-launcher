###### Class defpackage.jm (jm)
.class public Ljm;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:B

.field public c:I

.field public d:I

.field public e:I

.field public f:B

.field public g:B

.field private h:Lud;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lls;)V
    .registers 6

    .line 26
    invoke-direct {p0}, Lki;-><init>()V

    .line 27
    iget v0, p1, Lls;->aD:I

    iput v0, p0, Ljm;->a:I

    .line 29
    invoke-static {p1}, Ljc;->a(Lsn;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljm;->b:B

    .line 30
    iget-wide v0, p1, Lls;->aM:D

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Ljm;->c:I

    .line 31
    iget-wide v0, p1, Lls;->aN:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Ljm;->d:I

    .line 32
    iget-wide v0, p1, Lls;->aO:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Ljm;->e:I

    .line 33
    iget v0, p1, Lls;->aS:F

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljm;->f:B

    .line 34
    iget v0, p1, Lls;->aT:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljm;->g:B

    .line 36
    invoke-virtual {p1}, Lls;->ad()Lud;

    move-result-object p1

    iput-object p1, p0, Ljm;->h:Lud;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 40
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljm;->a:I

    .line 41
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljm;->b:B

    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljm;->c:I

    .line 43
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljm;->d:I

    .line 44
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljm;->e:I

    .line 45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljm;->f:B

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljm;->g:B

    .line 47
    invoke-static {p1}, Lud;->a(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljm;->i:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 51
    iget v0, p0, Ljm;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 52
    iget-byte v0, p0, Ljm;->b:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 53
    iget v0, p0, Ljm;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 54
    iget v0, p0, Ljm;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 55
    iget v0, p0, Ljm;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    iget-byte v0, p0, Ljm;->f:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    iget-byte v0, p0, Ljm;->g:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    iget-object v0, p0, Ljm;->h:Lud;

    invoke-virtual {v0, p1}, Lud;->a(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 62
    invoke-virtual {p1, p0}, Lti;->a(Ljm;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    .line 70
    iget-object v0, p0, Ljm;->i:Ljava/util/List;

    return-object v0
.end method
