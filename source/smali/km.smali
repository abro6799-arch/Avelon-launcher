###### Class defpackage.km (km)
.class public Lkm;
.super Lgm;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final bk:[I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "black"

    const-string v1, "red"

    const-string v2, "green"

    const-string v3, "brown"

    const-string v4, "blue"

    const-string v5, "purple"

    const-string v6, "cyan"

    const-string v7, "silver"

    const-string v8, "gray"

    const-string v9, "pink"

    const-string v10, "lime"

    const-string v11, "yellow"

    const-string v12, "lightBlue"

    const-string v13, "magenta"

    const-string v14, "orange"

    const-string v15, "white"

    .line 11
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkm;->a:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_30

    sput-object v0, Lkm;->bk:[I

    return-void

    :array_30
    .array-data 4
        0x1e1b1b
        0xb3312c
        0x3b511a
        0x51301a
        0x253192
        0x7b2fbe
        0x287697
        0x287697
        0x434343
        0xd88198
        0x41cd34
        0xdecf2a
        0x6689d3
        0xc354cd
        0xeb8844
        0xf0f0f0
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lkm;->a(Z)Lgm;

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lkm;->e(I)Lgm;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .line 46
    iget v0, p0, Lkm;->bh:I

    rem-int/lit8 v1, p1, 0x8

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    div-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method public a(Liz;)Ljava/lang/String;
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lgm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkm;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Liz;Lls;)V
    .registers 5

    .line 109
    instance-of v0, p2, Ldl;

    if-eqz v0, :cond_23

    .line 110
    check-cast p2, Ldl;

    .line 112
    invoke-virtual {p1}, Liz;->i()I

    move-result v0

    invoke-static {v0}, Lee;->d(I)I

    move-result v0

    .line 113
    invoke-virtual {p2}, Ldl;->s()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p2}, Ldl;->r()I

    move-result v1

    if-eq v1, v0, :cond_23

    .line 114
    invoke-virtual {p2, v0}, Ldl;->e_(I)V

    .line 115
    iget p2, p1, Liz;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Liz;->a:I

    :cond_23
    return-void
.end method

.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 16

    .line 57
    invoke-virtual {p1}, Liz;->i()I

    move-result p2

    const/16 p7, 0xf

    const/4 v0, 0x0

    if-ne p2, p7, :cond_ce

    .line 60
    invoke-virtual {p3, p4, p5, p6}, Lfd;->a(III)I

    move-result p2

    .line 61
    sget-object p7, Luu;->z:Luu;

    iget p7, p7, Luu;->bn:I

    const/4 v1, 0x1

    if-ne p2, p7, :cond_2c

    .line 62
    iget-boolean p2, p3, Lfd;->B:Z

    if-nez p2, :cond_2b

    .line 63
    sget-object p2, Luu;->z:Luu;

    move-object v2, p2

    check-cast v2, Lhe;

    iget-object v7, p3, Lfd;->r:Ljava/util/Random;

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v2 .. v7}, Lhe;->c(Lfd;IIILjava/util/Random;)V

    .line 64
    iget p2, p1, Liz;->a:I

    sub-int/2addr p2, v1

    iput p2, p1, Liz;->a:I

    :cond_2b
    return v1

    .line 67
    :cond_2c
    sget-object p7, Luu;->aA:Luu;

    iget p7, p7, Luu;->bn:I

    if-ne p2, p7, :cond_43

    .line 68
    iget-boolean p2, p3, Lfd;->B:Z

    if-nez p2, :cond_42

    .line 69
    sget-object p2, Luu;->aA:Luu;

    check-cast p2, Lni;

    invoke-virtual {p2, p3, p4, p5, p6}, Lni;->d_(Lfd;III)V

    .line 70
    iget p2, p1, Liz;->a:I

    sub-int/2addr p2, v1

    iput p2, p1, Liz;->a:I

    :cond_42
    return v1

    .line 73
    :cond_43
    sget-object p7, Luu;->v:Lwp;

    iget p7, p7, Lwp;->bn:I

    if-ne p2, p7, :cond_ce

    .line 74
    iget-boolean p2, p3, Lfd;->B:Z

    if-nez p2, :cond_cd

    .line 75
    iget p2, p1, Liz;->a:I

    sub-int/2addr p2, v1

    iput p2, p1, Liz;->a:I

    move p1, v0

    :goto_53
    const/16 p2, 0x80

    if-ge p1, p2, :cond_cd

    add-int/lit8 p2, p5, 0x1

    move v4, p2

    move v3, p4

    move v5, p6

    move p2, v0

    .line 80
    :goto_5d
    div-int/lit8 p7, p1, 0x10

    const/4 v2, 0x3

    if-ge p2, p7, :cond_99

    .line 81
    sget-object p7, Lkm;->b:Ljava/util/Random;

    invoke-virtual {p7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p7

    sub-int/2addr p7, v1

    add-int/2addr v3, p7

    .line 82
    sget-object p7, Lkm;->b:Ljava/util/Random;

    invoke-virtual {p7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p7

    sub-int/2addr p7, v1

    sget-object v6, Lkm;->b:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    mul-int/2addr p7, v6

    div-int/lit8 p7, p7, 0x2

    add-int/2addr v4, p7

    .line 83
    sget-object p7, Lkm;->b:Ljava/util/Random;

    invoke-virtual {p7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p7

    sub-int/2addr p7, v1

    add-int/2addr v5, p7

    add-int/lit8 p7, v4, -0x1

    .line 84
    invoke-virtual {p3, v3, p7, v5}, Lfd;->a(III)I

    move-result p7

    sget-object v2, Luu;->v:Lwp;

    iget v2, v2, Lwp;->bn:I

    if-ne p7, v2, :cond_ca

    invoke-virtual {p3, v3, v4, v5}, Lfd;->h(III)Z

    move-result p7

    if-eqz p7, :cond_96

    goto :goto_ca

    :cond_96
    add-int/lit8 p2, p2, 0x1

    goto :goto_5d

    .line 89
    :cond_99
    invoke-virtual {p3, v3, v4, v5}, Lfd;->a(III)I

    move-result p2

    if-nez p2, :cond_ca

    .line 90
    sget-object p2, Lkm;->b:Ljava/util/Random;

    const/16 p7, 0xa

    invoke-virtual {p2, p7}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    if-eqz p2, :cond_b3

    .line 91
    sget-object p2, Luu;->Y:Lru;

    iget v6, p2, Lru;->bn:I

    const/4 v7, 0x1

    move-object v2, p3

    invoke-virtual/range {v2 .. v7}, Lfd;->b(IIIII)Z

    goto :goto_ca

    .line 92
    :cond_b3
    sget-object p2, Lkm;->b:Ljava/util/Random;

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    if-eqz p2, :cond_c3

    .line 93
    sget-object p2, Luu;->ae:Lwb;

    iget p2, p2, Lwb;->bn:I

    invoke-virtual {p3, v3, v4, v5, p2}, Lfd;->f(IIII)Z

    goto :goto_ca

    .line 95
    :cond_c3
    sget-object p2, Luu;->af:Lwb;

    iget p2, p2, Lwb;->bn:I

    invoke-virtual {p3, v3, v4, v5, p2}, Lfd;->f(IIII)Z

    :cond_ca
    :goto_ca
    add-int/lit8 p1, p1, 0x1

    goto :goto_53

    :cond_cd
    return v1

    :cond_ce
    return v0
.end method
