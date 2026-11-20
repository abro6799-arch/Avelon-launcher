###### Class defpackage.lf (lf)
.class public Llf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ld;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [Ld;

    .line 5
    iput-object v0, p0, Llf;->a:[Ld;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Llf;->b:I

    return-void
.end method

.method private a(I)V
    .registers 7

    .line 88
    iget-object v0, p0, Llf;->a:[Ld;

    aget-object v0, v0, p1

    .line 89
    iget v1, v0, Ld;->g:F

    :goto_6
    if-lez p1, :cond_1e

    add-int/lit8 v2, p1, -0x1

    shr-int/lit8 v2, v2, 0x1

    .line 93
    iget-object v3, p0, Llf;->a:[Ld;

    aget-object v3, v3, v2

    .line 94
    iget v4, v3, Ld;->g:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1e

    .line 96
    iget-object v4, p0, Llf;->a:[Ld;

    aput-object v3, v4, p1

    .line 97
    iput p1, v3, Ld;->d:I

    move p1, v2

    goto :goto_6

    .line 102
    :cond_1e
    iget-object v1, p0, Llf;->a:[Ld;

    aput-object v0, v1, p1

    .line 103
    iput p1, v0, Ld;->d:I

    return-void
.end method

.method private b(I)V
    .registers 11

    .line 108
    iget-object v0, p0, Llf;->a:[Ld;

    aget-object v0, v0, p1

    .line 109
    iget v1, v0, Ld;->g:F

    :goto_6
    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    .line 116
    iget v4, p0, Llf;->b:I

    if-lt v2, v4, :cond_11

    goto :goto_41

    .line 119
    :cond_11
    iget-object v4, p0, Llf;->a:[Ld;

    aget-object v4, v4, v2

    .line 120
    iget v5, v4, Ld;->g:F

    .line 125
    iget v6, p0, Llf;->b:I

    if-lt v3, v6, :cond_1f

    const/4 v6, 0x0

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_25

    .line 133
    :cond_1f
    iget-object v6, p0, Llf;->a:[Ld;

    aget-object v6, v6, v3

    .line 134
    iget v7, v6, Ld;->g:F

    :goto_25
    cmpg-float v8, v5, v7

    if-gez v8, :cond_35

    cmpg-float v3, v5, v1

    if-gez v3, :cond_41

    .line 143
    iget-object v3, p0, Llf;->a:[Ld;

    aput-object v4, v3, p1

    .line 144
    iput p1, v4, Ld;->d:I

    move p1, v2

    goto :goto_6

    :cond_35
    cmpg-float v2, v7, v1

    if-gez v2, :cond_41

    .line 153
    iget-object v2, p0, Llf;->a:[Ld;

    aput-object v6, v2, p1

    .line 154
    iput p1, v6, Ld;->d:I

    move p1, v3

    goto :goto_6

    .line 161
    :cond_41
    :goto_41
    iget-object v1, p0, Llf;->a:[Ld;

    aput-object v0, v1, p1

    .line 162
    iput p1, v0, Ld;->d:I

    return-void
.end method


# virtual methods
.method public a(Ld;)Ld;
    .registers 6

    .line 11
    iget v0, p1, Ld;->d:I

    if-gez v0, :cond_27

    .line 13
    iget v0, p0, Llf;->b:I

    iget-object v1, p0, Llf;->a:[Ld;

    array-length v2, v1

    if-ne v0, v2, :cond_15

    shl-int/lit8 v2, v0, 0x1

    .line 15
    new-array v2, v2, [Ld;

    const/4 v3, 0x0

    .line 16
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iput-object v2, p0, Llf;->a:[Ld;

    .line 21
    :cond_15
    iget-object v0, p0, Llf;->a:[Ld;

    iget v1, p0, Llf;->b:I

    aput-object p1, v0, v1

    .line 22
    iput v1, p1, Ld;->d:I

    .line 23
    iget v0, p0, Llf;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llf;->b:I

    invoke-direct {p0, v0}, Llf;->a(I)V

    return-object p1

    .line 11
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OW KNOWS!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Llf;->b:I

    return-void
.end method

.method public a(Ld;F)V
    .registers 4

    .line 69
    iget v0, p1, Ld;->g:F

    .line 70
    iput p2, p1, Ld;->g:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_e

    .line 73
    iget p1, p1, Ld;->d:I

    invoke-direct {p0, p1}, Llf;->a(I)V

    goto :goto_13

    .line 77
    :cond_e
    iget p1, p1, Ld;->d:I

    invoke-direct {p0, p1}, Llf;->b(I)V

    :goto_13
    return-void
.end method

.method public b()Ld;
    .registers 6

    .line 39
    iget-object v0, p0, Llf;->a:[Ld;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 40
    iget v3, p0, Llf;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Llf;->b:I

    aget-object v4, v0, v3

    aput-object v4, v0, v1

    const/4 v4, 0x0

    .line 41
    aput-object v4, v0, v3

    if-lez v3, :cond_17

    .line 42
    invoke-direct {p0, v1}, Llf;->b(I)V

    :cond_17
    const/4 v0, -0x1

    .line 43
    iput v0, v2, Ld;->d:I

    return-object v2
.end method

.method public c()Z
    .registers 2

    .line 166
    iget v0, p0, Llf;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
