###### Class defpackage.qp (qp)
.class public Lqp;
.super Lij;
.source "SourceFile"


# instance fields
.field public a:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lij;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lij;-><init>()V

    .line 12
    iput-byte p1, p0, Lqp;->a:B

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 2

    .line 20
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    iput-byte p1, p0, Lqp;->a:B

    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 3

    .line 16
    iget-byte v0, p0, Lqp;->a:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lqp;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
