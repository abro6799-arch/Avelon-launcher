###### Class defpackage.gj (gj)
.class public Lgj;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method

.method public constructor <init>(IDDD)V
    .registers 10

    .line 20
    invoke-direct {p0}, Lki;-><init>()V

    .line 21
    iput p1, p0, Lgj;->a:I

    const-wide v0, -0x3ff0cccccccccccdL    # -3.9

    cmpg-double p1, p2, v0

    if-gez p1, :cond_f

    move-wide p2, v0

    :cond_f
    cmpg-double p1, p4, v0

    if-gez p1, :cond_14

    move-wide p4, v0

    :cond_14
    cmpg-double p1, p6, v0

    if-gez p1, :cond_19

    move-wide p6, v0

    :cond_19
    const-wide v0, 0x400f333333333333L    # 3.9

    cmpl-double p1, p2, v0

    if-lez p1, :cond_23

    move-wide p2, v0

    :cond_23
    cmpl-double p1, p4, v0

    if-lez p1, :cond_28

    move-wide p4, v0

    :cond_28
    cmpl-double p1, p6, v0

    if-lez p1, :cond_2d

    move-wide p6, v0

    :cond_2d
    const-wide v0, 0x40bf400000000000L    # 8000.0

    mul-double/2addr p2, v0

    double-to-int p1, p2

    .line 29
    iput p1, p0, Lgj;->b:I

    mul-double/2addr p4, v0

    double-to-int p1, p4

    .line 30
    iput p1, p0, Lgj;->c:I

    mul-double/2addr p6, v0

    double-to-int p1, p6

    .line 31
    iput p1, p0, Lgj;->d:I

    return-void
.end method

.method public constructor <init>(Lsn;)V
    .registers 10

    .line 17
    iget v1, p1, Lsn;->aD:I

    iget-wide v2, p1, Lsn;->aP:D

    iget-wide v4, p1, Lsn;->aQ:D

    iget-wide v6, p1, Lsn;->aR:D

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lgj;-><init>(IDDD)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3

    .line 35
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lgj;->a:I

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lgj;->b:I

    .line 37
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lgj;->c:I

    .line 38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lgj;->d:I

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 3

    .line 42
    iget v0, p0, Lgj;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 43
    iget v0, p0, Lgj;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 44
    iget v0, p0, Lgj;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    iget v0, p0, Lgj;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 49
    invoke-virtual {p1, p0}, Lti;->a(Lgj;)V

    return-void
.end method
