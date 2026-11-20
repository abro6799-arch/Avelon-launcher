###### Class defpackage.mi (mi)
.class public Lmi;
.super Lij;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lij;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lij;-><init>()V

    .line 12
    iput-wide p1, p0, Lmi;->a:J

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 4

    .line 20
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmi;->a:J

    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 4

    .line 16
    iget-wide v0, p0, Lmi;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lmi;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
