###### Class defpackage.qy (qy)
.class public Lqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static f:J


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 9

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-wide v0, Lqy;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lqy;->f:J

    iput-wide v0, p0, Lqy;->g:J

    .line 10
    iput p1, p0, Lqy;->a:I

    .line 11
    iput p2, p0, Lqy;->b:I

    .line 12
    iput p3, p0, Lqy;->c:I

    .line 13
    iput p4, p0, Lqy;->d:I

    return-void
.end method


# virtual methods
.method public a(Lqy;)I
    .registers 10

    .line 34
    iget-wide v0, p0, Lqy;->e:J

    iget-wide v2, p1, Lqy;->e:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-gez v4, :cond_a

    return v5

    :cond_a
    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_10

    return v1

    .line 36
    :cond_10
    iget-wide v2, p0, Lqy;->g:J

    iget-wide v6, p1, Lqy;->g:J

    cmp-long p1, v2, v6

    if-gez p1, :cond_19

    return v5

    :cond_19
    cmp-long p1, v2, v6

    if-lez p1, :cond_1e

    return v1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public a(J)Lqy;
    .registers 3

    .line 29
    iput-wide p1, p0, Lqy;->e:J

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3
    check-cast p1, Lqy;

    invoke-virtual {p0, p1}, Lqy;->a(Lqy;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 17
    instance-of v0, p1, Lqy;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 18
    check-cast p1, Lqy;

    .line 19
    iget v0, p0, Lqy;->a:I

    iget v2, p1, Lqy;->a:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lqy;->b:I

    iget v2, p1, Lqy;->b:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lqy;->c:I

    iget v2, p1, Lqy;->c:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lqy;->d:I

    iget p1, p1, Lqy;->d:I

    if-ne v0, p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 25
    iget v0, p0, Lqy;->a:I

    mul-int/lit16 v0, v0, 0x80

    mul-int/lit16 v0, v0, 0x400

    iget v1, p0, Lqy;->c:I

    mul-int/lit16 v1, v1, 0x80

    add-int/2addr v0, v1

    iget v1, p0, Lqy;->b:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x100

    iget v1, p0, Lqy;->d:I

    add-int/2addr v0, v1

    return v0
.end method
