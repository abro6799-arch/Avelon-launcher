###### Class defpackage.nd (nd)
.class public Lnd;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:B

.field public f:B

.field public g:B

.field public h:I

.field public i:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhl;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Lki;-><init>()V

    .line 21
    iget v0, p1, Lhl;->aD:I

    iput v0, p0, Lnd;->a:I

    .line 22
    iget-object v0, p1, Lhl;->a:Liz;

    iget v0, v0, Liz;->c:I

    iput v0, p0, Lnd;->h:I

    .line 23
    iget-object v0, p1, Lhl;->a:Liz;

    iget v0, v0, Liz;->a:I

    iput v0, p0, Lnd;->i:I

    .line 24
    iget-object v0, p1, Lhl;->a:Liz;

    invoke-virtual {v0}, Liz;->i()I

    move-result v0

    iput v0, p0, Lnd;->l:I

    .line 25
    iget-wide v0, p1, Lhl;->aM:D

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lnd;->b:I

    .line 26
    iget-wide v0, p1, Lhl;->aN:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lnd;->c:I

    .line 27
    iget-wide v0, p1, Lhl;->aO:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lnd;->d:I

    .line 28
    iget-wide v0, p1, Lhl;->aP:D

    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnd;->e:B

    .line 29
    iget-wide v0, p1, Lhl;->aQ:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnd;->f:B

    .line 30
    iget-wide v0, p1, Lhl;->aR:D

    mul-double/2addr v0, v2

    double-to-int p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lnd;->g:B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnd;->a:I

    .line 35
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lnd;->h:I

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lnd;->i:I

    .line 37
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lnd;->l:I

    .line 38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnd;->b:I

    .line 39
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnd;->c:I

    .line 40
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnd;->d:I

    .line 41
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lnd;->e:B

    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lnd;->f:B

    .line 43
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lnd;->g:B

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 47
    iget v0, p0, Lnd;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    iget v0, p0, Lnd;->h:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 49
    iget v0, p0, Lnd;->i:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 50
    iget v0, p0, Lnd;->l:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 51
    iget v0, p0, Lnd;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 52
    iget v0, p0, Lnd;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 53
    iget v0, p0, Lnd;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 54
    iget-byte v0, p0, Lnd;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 55
    iget-byte v0, p0, Lnd;->f:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 56
    iget-byte v0, p0, Lnd;->g:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 60
    invoke-virtual {p1, p0}, Lti;->a(Lnd;)V

    return-void
.end method
