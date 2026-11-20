###### Class defpackage.vb (vb)
.class public Lvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 8

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lvb;->a:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lvb;->b:Ljava/lang/String;

    .line 14
    iput-wide p3, p0, Lvb;->c:J

    .line 15
    iput-wide p5, p0, Lvb;->d:J

    .line 16
    iput-boolean p7, p0, Lvb;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lvb;)I
    .registers 7

    .line 40
    iget-wide v0, p0, Lvb;->c:J

    iget-wide v2, p1, Lvb;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 p1, -0x1

    return p1

    .line 46
    :cond_10
    iget-object v0, p0, Lvb;->a:Ljava/lang/String;

    iget-object p1, p1, Lvb;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lvb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lvb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lvb;->d:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3
    check-cast p1, Lvb;

    invoke-virtual {p0, p1}, Lvb;->a(Lvb;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lvb;->e:Z

    return v0
.end method

.method public e()J
    .registers 3

    .line 36
    iget-wide v0, p0, Lvb;->c:J

    return-wide v0
.end method
