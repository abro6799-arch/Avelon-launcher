###### Class defpackage.hn (hn)
.class public Lhn;
.super Lij;
.source "SourceFile"


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lij;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lij;-><init>()V

    .line 11
    iput-object p1, p0, Lhn;->a:[B

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 3

    .line 20
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 21
    new-array v0, v0, [B

    iput-object v0, p0, Lhn;->a:[B

    .line 22
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lhn;->a:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 16
    iget-object v0, p0, Lhn;->a:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhn;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
