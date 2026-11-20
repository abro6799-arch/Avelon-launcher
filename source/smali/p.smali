###### Class defpackage.p (p)
.class public Lp;
.super Lij;
.source "SourceFile"


# instance fields
.field public a:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lij;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lij;-><init>()V

    .line 12
    iput p1, p0, Lp;->a:F

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 2

    .line 20
    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result p1

    iput p1, p0, Lp;->a:F

    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 3

    .line 16
    iget v0, p0, Lp;->a:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lp;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
