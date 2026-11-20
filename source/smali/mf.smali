###### Class defpackage.mf (mf)
.class public Lmf;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:B

.field public g:B

.field public h:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgs;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Lki;-><init>()V

    .line 20
    iget v0, p1, Lgs;->aD:I

    iput v0, p0, Lmf;->a:I

    .line 21
    iget-object v0, p1, Lgs;->l:Ljava/lang/String;

    iput-object v0, p0, Lmf;->b:Ljava/lang/String;

    .line 22
    iget-wide v0, p1, Lgs;->aM:D

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lmf;->c:I

    .line 23
    iget-wide v0, p1, Lgs;->aN:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lmf;->d:I

    .line 24
    iget-wide v0, p1, Lgs;->aO:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iput v0, p0, Lmf;->e:I

    .line 25
    iget v0, p1, Lgs;->aS:F

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lmf;->f:B

    .line 26
    iget v0, p1, Lgs;->aT:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lmf;->g:B

    .line 28
    iget-object p1, p1, Lgs;->c:Lix;

    invoke-virtual {p1}, Lix;->b()Liz;

    move-result-object p1

    if-nez p1, :cond_46

    const/4 p1, 0x0

    goto :goto_48

    .line 29
    :cond_46
    iget p1, p1, Liz;->c:I

    :goto_48
    iput p1, p0, Lmf;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x1c

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lmf;->a:I

    const/16 v0, 0x10

    .line 34
    invoke-static {p1, v0}, Lmf;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lmf;->c:I

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lmf;->d:I

    .line 37
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lmf;->e:I

    .line 38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lmf;->f:B

    .line 39
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lmf;->g:B

    .line 40
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lmf;->h:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 44
    iget v0, p0, Lmf;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lmf;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lmf;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 46
    iget v0, p0, Lmf;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    iget v0, p0, Lmf;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    iget v0, p0, Lmf;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget-byte v0, p0, Lmf;->f:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 50
    iget-byte v0, p0, Lmf;->g:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    iget v0, p0, Lmf;->h:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 55
    invoke-virtual {p1, p0}, Lti;->a(Lmf;)V

    return-void
.end method
