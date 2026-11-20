###### Class defpackage.sh (sh)
.class public Lsh;
.super Ldw;
.source "SourceFile"


# instance fields
.field private a:Laz;


# direct methods
.method public constructor <init>(Llw;Laz;)V
    .registers 11

    .line 10
    invoke-direct {p0}, Ldw;-><init>()V

    .line 11
    iput-object p2, p0, Lsh;->a:Laz;

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    const/4 v2, 0x3

    if-ge v1, v2, :cond_26

    move v3, v0

    :goto_b
    if-ge v3, v2, :cond_23

    .line 15
    new-instance v4, Lgp;

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v3

    mul-int/lit8 v6, v3, 0x12

    add-int/lit8 v6, v6, 0x3e

    mul-int/lit8 v7, v1, 0x12

    add-int/lit8 v7, v7, 0x11

    invoke-direct {v4, p2, v5, v6, v7}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v4}, Lsh;->a(Lgp;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_26
    move p2, v0

    :goto_27
    const/16 v1, 0x9

    if-ge p2, v2, :cond_48

    move v3, v0

    :goto_2c
    if-ge v3, v1, :cond_45

    .line 21
    new-instance v4, Lgp;

    mul-int/lit8 v5, p2, 0x9

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    mul-int/lit8 v6, v3, 0x12

    add-int/lit8 v6, v6, 0x8

    mul-int/lit8 v7, p2, 0x12

    add-int/lit8 v7, v7, 0x54

    invoke-direct {v4, p1, v5, v6, v7}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v4}, Lsh;->a(Lgp;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_45
    add-int/lit8 p2, p2, 0x1

    goto :goto_27

    :cond_48
    :goto_48
    if-ge v0, v1, :cond_5b

    .line 25
    new-instance p2, Lgp;

    mul-int/lit8 v2, v0, 0x12

    add-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8e

    invoke-direct {p2, p1, v0, v2, v3}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, p2}, Lsh;->a(Lgp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_5b
    return-void
.end method


# virtual methods
.method public b(Lgs;)Z
    .registers 3

    .line 30
    iget-object v0, p0, Lsh;->a:Laz;

    invoke-virtual {v0, p1}, Laz;->a_(Lgs;)Z

    move-result p1

    return p1
.end method
