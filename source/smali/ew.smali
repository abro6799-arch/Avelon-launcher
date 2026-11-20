###### Class defpackage.ew (ew)
.class public Lew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxp;


# instance fields
.field private a:I

.field private b:I

.field private c:[[Llm;

.field private d:Lfd;


# direct methods
.method public constructor <init>(Lfd;IIIIII)V
    .registers 9

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lew;->d:Lfd;

    shr-int/lit8 p2, p2, 0x4

    .line 19
    iput p2, p0, Lew;->a:I

    shr-int/lit8 p3, p4, 0x4

    .line 20
    iput p3, p0, Lew;->b:I

    shr-int/lit8 p4, p5, 0x4

    shr-int/lit8 p5, p7, 0x4

    sub-int p2, p4, p2

    add-int/lit8 p2, p2, 0x1

    sub-int p3, p5, p3

    add-int/lit8 p3, p3, 0x1

    .line 24
    filled-new-array {p2, p3}, [I

    move-result-object p2

    const-class p3, Llm;

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Llm;

    iput-object p2, p0, Lew;->c:[[Llm;

    .line 26
    iget p2, p0, Lew;->a:I

    :goto_29
    if-gt p2, p4, :cond_47

    .line 27
    iget p3, p0, Lew;->b:I

    :goto_2d
    if-gt p3, p5, :cond_44

    .line 28
    iget-object p6, p0, Lew;->c:[[Llm;

    iget p7, p0, Lew;->a:I

    sub-int p7, p2, p7

    aget-object p6, p6, p7

    iget p7, p0, Lew;->b:I

    sub-int p7, p3, p7

    invoke-virtual {p1, p2, p3}, Lfd;->c(II)Llm;

    move-result-object v0

    aput-object v0, p6, p7

    add-int/lit8 p3, p3, 0x1

    goto :goto_2d

    :cond_44
    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_47
    return-void
.end method


# virtual methods
.method public a(IIII)F
    .registers 5

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lew;->d(III)I

    move-result p1

    if-ge p1, p4, :cond_7

    goto :goto_8

    :cond_7
    move p4, p1

    .line 60
    :goto_8
    iget-object p1, p0, Lew;->d:Lfd;

    iget-object p1, p1, Lfd;->t:Lxa;

    iget-object p1, p1, Lxa;->f:[F

    aget p1, p1, p4

    return p1
.end method

.method public a(III)I
    .registers 9

    const/4 v0, 0x0

    if-gez p2, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x80

    if-lt p2, v1, :cond_9

    return v0

    :cond_9
    shr-int/lit8 v1, p1, 0x4

    .line 37
    iget v2, p0, Lew;->a:I

    sub-int/2addr v1, v2

    shr-int/lit8 v2, p3, 0x4

    .line 38
    iget v3, p0, Lew;->b:I

    sub-int/2addr v2, v3

    if-ltz v1, :cond_30

    .line 40
    iget-object v3, p0, Lew;->c:[[Llm;

    array-length v4, v3

    if-ge v1, v4, :cond_30

    if-ltz v2, :cond_30

    aget-object v1, v3, v1

    array-length v3, v1

    if-lt v2, v3, :cond_22

    goto :goto_30

    .line 44
    :cond_22
    aget-object v1, v1, v2

    if-nez v1, :cond_27

    return v0

    :cond_27
    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    .line 47
    invoke-virtual {v1, p1, p2, p3}, Llm;->a(III)I

    move-result p1

    return p1

    :cond_30
    :goto_30
    return v0
.end method

.method public a(IIIZ)I
    .registers 9

    const/16 v0, 0xf

    const v1, -0x1e84800

    if-lt p1, v1, :cond_8b

    if-lt p3, v1, :cond_8b

    const v1, 0x1e84800

    if-ge p1, v1, :cond_8b

    if-le p3, v1, :cond_12

    goto/16 :goto_8b

    :cond_12
    const/4 v1, 0x0

    if-eqz p4, :cond_5f

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lew;->a(III)I

    move-result p4

    .line 78
    sget-object v2, Luu;->al:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq p4, v2, :cond_31

    sget-object v2, Luu;->aB:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq p4, v2, :cond_31

    sget-object v2, Luu;->au:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq p4, v2, :cond_31

    sget-object v2, Luu;->aI:Luu;

    iget v2, v2, Luu;->bn:I

    if-ne p4, v2, :cond_5f

    :cond_31
    add-int/lit8 p4, p2, 0x1

    .line 79
    invoke-virtual {p0, p1, p4, p3, v1}, Lew;->a(IIIZ)I

    move-result p4

    add-int/lit8 v0, p1, 0x1

    .line 80
    invoke-virtual {p0, v0, p2, p3, v1}, Lew;->a(IIIZ)I

    move-result v0

    add-int/lit8 v2, p1, -0x1

    .line 81
    invoke-virtual {p0, v2, p2, p3, v1}, Lew;->a(IIIZ)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    .line 82
    invoke-virtual {p0, p1, p2, v3, v1}, Lew;->a(IIIZ)I

    move-result v3

    add-int/lit8 p3, p3, -0x1

    .line 83
    invoke-virtual {p0, p1, p2, p3, v1}, Lew;->a(IIIZ)I

    move-result p1

    if-le v0, p4, :cond_52

    move p4, v0

    :cond_52
    if-le v2, p4, :cond_55

    goto :goto_56

    :cond_55
    move v2, p4

    :goto_56
    if-le v3, v2, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v2

    :goto_5a
    if-le p1, v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move p1, v3

    :goto_5e
    return p1

    :cond_5f
    if-gez p2, :cond_62

    return v1

    :cond_62
    const/16 p4, 0x80

    if-lt p2, p4, :cond_70

    .line 94
    iget-object p1, p0, Lew;->d:Lfd;

    iget p1, p1, Lfd;->f:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v0

    :goto_6f
    return v1

    :cond_70
    shr-int/lit8 p4, p1, 0x4

    .line 99
    iget v1, p0, Lew;->a:I

    sub-int/2addr p4, v1

    shr-int/lit8 v1, p3, 0x4

    .line 100
    iget v2, p0, Lew;->b:I

    sub-int/2addr v1, v2

    .line 102
    iget-object v2, p0, Lew;->c:[[Llm;

    aget-object p4, v2, p4

    aget-object p4, p4, v1

    and-int/2addr p1, v0

    and-int/2addr p3, v0

    iget-object v0, p0, Lew;->d:Lfd;

    iget v0, v0, Lfd;->f:I

    invoke-virtual {p4, p1, p2, p3, v0}, Llm;->c(IIII)I

    move-result p1

    return p1

    :cond_8b
    :goto_8b
    return v0
.end method

.method public a()Lxv;
    .registers 2

    .line 121
    iget-object v0, p0, Lew;->d:Lfd;

    invoke-virtual {v0}, Lfd;->a()Lxv;

    move-result-object v0

    return-object v0
.end method

.method public b(III)Low;
    .registers 7

    shr-int/lit8 v0, p1, 0x4

    .line 51
    iget v1, p0, Lew;->a:I

    sub-int/2addr v0, v1

    shr-int/lit8 v1, p3, 0x4

    .line 52
    iget v2, p0, Lew;->b:I

    sub-int/2addr v1, v2

    .line 54
    iget-object v2, p0, Lew;->c:[[Llm;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    invoke-virtual {v0, p1, p2, p3}, Llm;->d(III)Low;

    move-result-object p1

    return-object p1
.end method

.method public c(III)F
    .registers 5

    .line 64
    iget-object v0, p0, Lew;->d:Lfd;

    iget-object v0, v0, Lfd;->t:Lxa;

    iget-object v0, v0, Lxa;->f:[F

    invoke-virtual {p0, p1, p2, p3}, Lew;->d(III)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public d(III)I
    .registers 5

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, p1, p2, p3, v0}, Lew;->a(IIIZ)I

    move-result p1

    return p1
.end method

.method public e(III)I
    .registers 7

    const/4 v0, 0x0

    if-gez p2, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x80

    if-lt p2, v1, :cond_9

    return v0

    :cond_9
    shr-int/lit8 v0, p1, 0x4

    .line 108
    iget v1, p0, Lew;->a:I

    sub-int/2addr v0, v1

    shr-int/lit8 v1, p3, 0x4

    .line 109
    iget v2, p0, Lew;->b:I

    sub-int/2addr v1, v2

    .line 111
    iget-object v2, p0, Lew;->c:[[Llm;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p3, p3, 0xf

    invoke-virtual {v0, p1, p2, p3}, Llm;->b(III)I

    move-result p1

    return p1
.end method

.method public f(III)Lln;
    .registers 4

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lew;->a(III)I

    move-result p1

    if-nez p1, :cond_9

    .line 116
    sget-object p1, Lln;->a:Lln;

    return-object p1

    .line 117
    :cond_9
    sget-object p2, Luu;->m:[Luu;

    aget-object p1, p2, p1

    iget-object p1, p1, Luu;->bA:Lln;

    return-object p1
.end method

.method public g(III)Z
    .registers 5

    .line 125
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {p0, p1, p2, p3}, Lew;->a(III)I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_c
    invoke-virtual {p1}, Luu;->c()Z

    move-result p1

    return p1
.end method

.method public h(III)Z
    .registers 5

    .line 131
    sget-object v0, Luu;->m:[Luu;

    invoke-virtual {p0, p1, p2, p3}, Lew;->a(III)I

    move-result p1

    aget-object p1, v0, p1

    const/4 p2, 0x0

    if-nez p1, :cond_c

    return p2

    .line 133
    :cond_c
    iget-object p3, p1, Luu;->bA:Lln;

    invoke-virtual {p3}, Lln;->c()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Luu;->d()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p2, 0x1

    :cond_1b
    return p2
.end method
