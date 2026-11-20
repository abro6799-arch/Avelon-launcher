###### Class defpackage.sz (sz)
.class public Lsz;
.super Lij;
.source "SourceFile"


# instance fields
.field public a:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lij;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lij;-><init>()V

    .line 12
    iput-wide p1, p0, Lsz;->a:D

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 4

    .line 20
    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lsz;->a:D

    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 4

    .line 16
    iget-wide v0, p0, Lsz;->a:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lsz;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
