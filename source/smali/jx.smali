###### Class defpackage.jx (jx)
.class public Ljx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient a:[Lwm;

.field private transient b:I

.field private c:I

.field private final d:F

.field private volatile transient e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 18
    iput v0, p0, Ljx;->d:F

    const/16 v0, 0xc

    .line 19
    iput v0, p0, Ljx;->c:I

    const/16 v0, 0x10

    new-array v0, v0, [Lwm;

    .line 20
    iput-object v0, p0, Ljx;->a:[Lwm;

    return-void
.end method

.method private static a(II)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private a(IILjava/lang/Object;I)V
    .registers 8

    .line 215
    iget-object v0, p0, Ljx;->a:[Lwm;

    aget-object v1, v0, p4

    .line 216
    new-instance v2, Lwm;

    invoke-direct {v2, p1, p2, p3, v1}, Lwm;-><init>(IILjava/lang/Object;Lwm;)V

    aput-object v2, v0, p4

    .line 217
    iget p1, p0, Ljx;->b:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljx;->b:I

    iget p2, p0, Ljx;->c:I

    if-lt p1, p2, :cond_1d

    iget-object p1, p0, Ljx;->a:[Lwm;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Ljx;->f(I)V

    :cond_1d
    return-void
.end method

.method private a([Lwm;)V
    .registers 9

    .line 89
    iget-object v0, p0, Ljx;->a:[Lwm;

    .line 90
    array-length v1, p1

    const/4 v2, 0x0

    .line 91
    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 92
    aget-object v3, v0, v2

    if-eqz v3, :cond_21

    const/4 v4, 0x0

    .line 94
    aput-object v4, v0, v2

    .line 96
    :goto_e
    iget-object v4, v3, Lwm;->c:Lwm;

    .line 97
    iget v5, v3, Lwm;->d:I

    invoke-static {v5, v1}, Ljx;->a(II)I

    move-result v5

    .line 98
    aget-object v6, p1, v5

    iput-object v6, v3, Lwm;->c:Lwm;

    .line 99
    aput-object v3, p1, v5

    if-nez v4, :cond_1f

    goto :goto_21

    :cond_1f
    move-object v3, v4

    goto :goto_e

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_24
    return-void
.end method

.method static synthetic d(I)I
    .registers 1

    .line 3
    invoke-static {p0}, Ljx;->e(I)I

    move-result p0

    return p0
.end method

.method private static e(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private f(I)V
    .registers 4

    .line 75
    iget-object v0, p0, Ljx;->a:[Lwm;

    .line 76
    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    const p1, 0x7fffffff

    .line 78
    iput p1, p0, Ljx;->c:I

    return-void

    .line 82
    :cond_d
    new-array v0, p1, [Lwm;

    .line 83
    invoke-direct {p0, v0}, Ljx;->a([Lwm;)V

    .line 84
    iput-object v0, p0, Ljx;->a:[Lwm;

    int-to-float p1, p1

    .line 85
    iget v0, p0, Ljx;->d:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Ljx;->c:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 5

    .line 41
    invoke-static {p1}, Ljx;->e(I)I

    move-result v0

    .line 42
    iget-object v1, p0, Ljx;->a:[Lwm;

    array-length v2, v1

    invoke-static {v0, v2}, Ljx;->a(II)I

    move-result v0

    aget-object v0, v1, v0

    :goto_d
    if-eqz v0, :cond_19

    .line 43
    iget v1, v0, Lwm;->a:I

    if-ne v1, p1, :cond_16

    iget-object p1, v0, Lwm;->b:Ljava/lang/Object;

    return-object p1

    .line 42
    :cond_16
    iget-object v0, v0, Lwm;->c:Lwm;

    goto :goto_d

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 5

    .line 134
    iget v0, p0, Ljx;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljx;->e:I

    .line 135
    iget-object v0, p0, Ljx;->a:[Lwm;

    const/4 v1, 0x0

    move v2, v1

    .line 136
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_13

    const/4 v3, 0x0

    .line 137
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 138
    :cond_13
    iput v1, p0, Ljx;->b:I

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 7

    .line 61
    invoke-static {p1}, Ljx;->e(I)I

    move-result v0

    .line 62
    iget-object v1, p0, Ljx;->a:[Lwm;

    array-length v1, v1

    invoke-static {v0, v1}, Ljx;->a(II)I

    move-result v1

    .line 63
    iget-object v2, p0, Ljx;->a:[Lwm;

    aget-object v2, v2, v1

    :goto_f
    if-eqz v2, :cond_1a

    .line 64
    iget v3, v2, Lwm;->a:I

    if-ne v3, p1, :cond_17

    .line 65
    iput-object p2, v2, Lwm;->b:Ljava/lang/Object;

    .line 63
    :cond_17
    iget-object v2, v2, Lwm;->c:Lwm;

    goto :goto_f

    .line 69
    :cond_1a
    iget v2, p0, Ljx;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljx;->e:I

    .line 70
    invoke-direct {p0, v0, p1, p2, v1}, Ljx;->a(IILjava/lang/Object;I)V

    return-void
.end method

.method public b(I)Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Ljx;->c(I)Lwm;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    .line 108
    :cond_8
    iget-object p1, p1, Lwm;->b:Ljava/lang/Object;

    :goto_a
    return-object p1
.end method

.method final c(I)Lwm;
    .registers 7

    .line 112
    invoke-static {p1}, Ljx;->e(I)I

    move-result v0

    .line 113
    iget-object v1, p0, Ljx;->a:[Lwm;

    array-length v1, v1

    invoke-static {v0, v1}, Ljx;->a(II)I

    move-result v0

    .line 114
    iget-object v1, p0, Ljx;->a:[Lwm;

    aget-object v1, v1, v0

    move-object v2, v1

    :goto_10
    if-eqz v1, :cond_31

    .line 118
    iget-object v3, v1, Lwm;->c:Lwm;

    .line 119
    iget v4, v1, Lwm;->a:I

    if-ne v4, p1, :cond_2e

    .line 120
    iget p1, p0, Ljx;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljx;->e:I

    .line 121
    iget p1, p0, Ljx;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljx;->b:I

    if-ne v2, v1, :cond_2b

    .line 122
    iget-object p1, p0, Ljx;->a:[Lwm;

    aput-object v3, p1, v0

    goto :goto_2d

    .line 123
    :cond_2b
    iput-object v3, v2, Lwm;->c:Lwm;

    :goto_2d
    return-object v1

    :cond_2e
    move-object v2, v1

    move-object v1, v3

    goto :goto_10

    :cond_31
    return-object v1
.end method
