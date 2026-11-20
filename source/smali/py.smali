###### Class defpackage.py (py)
.class public Lpy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field private f:D

.field private g:J

.field private h:J

.field private i:J

.field private j:D


# direct methods
.method public constructor <init>(F)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lpy;->d:F

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lpy;->e:F

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 18
    iput-wide v0, p0, Lpy;->j:D

    .line 21
    iput p1, p0, Lpy;->a:F

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpy;->g:J

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lpy;->h:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 15

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    iget-wide v2, p0, Lpy;->g:J

    sub-long v2, v0, v2

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-double v6, v4

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v10, v2, v8

    if-lez v10, :cond_20

    .line 34
    iput-wide v6, p0, Lpy;->f:D

    goto :goto_51

    :cond_20
    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-gez v12, :cond_29

    .line 36
    iput-wide v6, p0, Lpy;->f:D

    goto :goto_51

    .line 38
    :cond_29
    iget-wide v12, p0, Lpy;->i:J

    add-long/2addr v12, v2

    iput-wide v12, p0, Lpy;->i:J

    cmp-long v2, v12, v8

    if-lez v2, :cond_49

    .line 40
    iget-wide v2, p0, Lpy;->h:J

    sub-long v2, v4, v2

    long-to-double v8, v12

    long-to-double v2, v2

    div-double/2addr v8, v2

    .line 43
    iget-wide v2, p0, Lpy;->j:D

    sub-double/2addr v8, v2

    const-wide v12, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v8, v12

    add-double/2addr v2, v8

    iput-wide v2, p0, Lpy;->j:D

    .line 45
    iput-wide v4, p0, Lpy;->h:J

    .line 46
    iput-wide v10, p0, Lpy;->i:J

    .line 48
    :cond_49
    iget-wide v2, p0, Lpy;->i:J

    cmp-long v2, v2, v10

    if-gez v2, :cond_51

    .line 49
    iput-wide v4, p0, Lpy;->h:J

    .line 52
    :cond_51
    :goto_51
    iput-wide v0, p0, Lpy;->g:J

    .line 54
    iget-wide v0, p0, Lpy;->f:D

    sub-double v0, v6, v0

    iget-wide v2, p0, Lpy;->j:D

    mul-double/2addr v0, v2

    .line 55
    iput-wide v6, p0, Lpy;->f:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_63

    move-wide v0, v2

    :cond_63
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6a

    move-wide v0, v2

    .line 60
    :cond_6a
    iget v2, p0, Lpy;->e:F

    float-to-double v2, v2

    iget v4, p0, Lpy;->d:F

    float-to-double v4, v4

    mul-double/2addr v0, v4

    iget v4, p0, Lpy;->a:F

    float-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    double-to-float v0, v2

    float-to-int v1, v0

    .line 62
    iput v1, p0, Lpy;->b:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 63
    iput v0, p0, Lpy;->e:F

    const/16 v2, 0xa

    if-le v1, v2, :cond_84

    .line 64
    iput v2, p0, Lpy;->b:I

    .line 65
    :cond_84
    iput v0, p0, Lpy;->c:F

    return-void
.end method
