###### Class defpackage.gk (gk)
.class public Lgk;
.super Luu;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 13
    sget-object v0, Lln;->n:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method

.method public static c_(Lfd;III)Z
    .registers 4

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_8

    return p1

    .line 55
    :cond_8
    sget-object p2, Luu;->as:Lyq;

    iget p2, p2, Lyq;->bn:I

    if-ne p0, p2, :cond_f

    return p1

    .line 56
    :cond_f
    sget-object p2, Luu;->m:[Luu;

    aget-object p0, p2, p0

    iget-object p0, p0, Luu;->bA:Lln;

    .line 57
    sget-object p2, Lln;->g:Lln;

    if-ne p0, p2, :cond_1a

    return p1

    .line 58
    :cond_1a
    sget-object p2, Lln;->h:Lln;

    if-ne p0, p2, :cond_1f

    return p1

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private h(Lfd;III)V
    .registers 15

    add-int/lit8 v0, p3, -0x1

    .line 32
    invoke-static {p1, p2, v0, p4}, Lgk;->c_(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_52

    if-ltz p3, :cond_52

    .line 34
    sget-boolean v0, Lgk;->a:Z

    if-nez v0, :cond_3a

    add-int/lit8 v2, p2, -0x20

    add-int/lit8 v3, p3, -0x20

    add-int/lit8 v4, p4, -0x20

    add-int/lit8 v5, p2, 0x20

    add-int/lit8 v6, p3, 0x20

    add-int/lit8 v7, p4, 0x20

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lfd;->a(IIIIII)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_3a

    .line 42
    :cond_22
    new-instance v0, Lju;

    int-to-float p2, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-double v3, p2

    int-to-float p2, p3

    add-float/2addr p2, v1

    float-to-double v5, p2

    int-to-float p2, p4

    add-float/2addr p2, v1

    float-to-double v7, p2

    iget v9, p0, Lgk;->bn:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lju;-><init>(Lfd;DDDI)V

    .line 43
    invoke-virtual {p1, v0}, Lfd;->b(Lsn;)Z

    goto :goto_52

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    :goto_3e
    add-int/lit8 v0, p3, -0x1

    .line 36
    invoke-static {p1, p2, v0, p4}, Lgk;->c_(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-lez p3, :cond_4b

    add-int/lit8 p3, p3, -0x1

    goto :goto_3e

    :cond_4b
    if-lez p3, :cond_52

    .line 39
    iget v0, p0, Lgk;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 6

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lgk;->h(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 12

    .line 21
    iget v4, p0, Lgk;->bn:I

    invoke-virtual {p0}, Lgk;->e()I

    move-result v5

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    return-void
.end method

.method public c(Lfd;III)V
    .registers 11

    .line 17
    iget v4, p0, Lgk;->bn:I

    invoke-virtual {p0}, Lgk;->e()I

    move-result v5

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    return-void
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
