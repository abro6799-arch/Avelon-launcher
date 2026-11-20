###### Class defpackage.ul (ul)
.class public Lul;
.super Lij;
.source "SourceFile"


# instance fields
.field public a:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lij;-><init>()V

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lij;-><init>()V

    .line 12
    iput-short p1, p0, Lul;->a:S

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 2

    .line 20
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lul;->a:S

    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 3

    .line 16
    iget-short v0, p0, Lul;->a:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lul;->a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
