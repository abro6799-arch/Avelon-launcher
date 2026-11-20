###### Class defpackage.hg (hg)
.class public Lhg;
.super Lki;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lki;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 4

    .line 16
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lhg;->a:J

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 20
    iget-wide v0, p0, Lhg;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public a(Lti;)V
    .registers 2

    .line 24
    invoke-virtual {p1, p0}, Lti;->a(Lhg;)V

    return-void
.end method
