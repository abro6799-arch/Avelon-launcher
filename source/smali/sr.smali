###### Class defpackage.sr (sr)
.class public Lsr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyn;


# instance fields
.field private a:Ldr;

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lw;->a()Ldr;

    move-result-object v0

    iput-object v0, p0, Lsr;->a:Ldr;

    return-void
.end method


# virtual methods
.method public a(DDD)V
    .registers 7

    .line 16
    iput-wide p1, p0, Lsr;->b:D

    .line 17
    iput-wide p3, p0, Lsr;->c:D

    .line 18
    iput-wide p5, p0, Lsr;->d:D

    return-void
.end method

.method public a(DDDDDD)Z
    .registers 33

    move-object/from16 v0, p0

    .line 26
    iget-object v1, v0, Lsr;->a:Ldr;

    iget-wide v2, v0, Lsr;->b:D

    sub-double v4, p1, v2

    iget-wide v6, v0, Lsr;->c:D

    sub-double v8, p3, v6

    iget-wide v10, v0, Lsr;->d:D

    sub-double v12, p5, v10

    sub-double v14, p7, v2

    sub-double v16, p9, v6

    sub-double v18, p11, v10

    move-wide v2, v4

    move-wide v4, v8

    move-wide v6, v12

    move-wide v8, v14

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    invoke-virtual/range {v1 .. v13}, Ldr;->a(DDDDDD)Z

    move-result v1

    return v1
.end method

.method public a(Leq;)Z
    .registers 15

    .line 30
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->c:D

    iget-wide v7, p1, Leq;->d:D

    iget-wide v9, p1, Leq;->e:D

    iget-wide v11, p1, Leq;->f:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lsr;->a(DDDDDD)Z

    move-result p1

    return p1
.end method
