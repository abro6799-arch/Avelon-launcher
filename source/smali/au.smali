###### Class defpackage.au (au)
.class public Lau;
.super Ldq;
.source "SourceFile"


# static fields
.field private static bk:[Luu;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 7
    sget-object v0, Luu;->x:Luu;

    sget-object v1, Luu;->ak:Luu;

    sget-object v2, Luu;->al:Luu;

    sget-object v3, Luu;->u:Luu;

    sget-object v4, Luu;->R:Luu;

    sget-object v5, Luu;->ap:Luu;

    sget-object v6, Luu;->I:Luu;

    sget-object v7, Luu;->aj:Luu;

    sget-object v8, Luu;->J:Luu;

    sget-object v9, Luu;->ai:Luu;

    sget-object v10, Luu;->H:Luu;

    sget-object v11, Luu;->ax:Luu;

    sget-object v12, Luu;->ay:Luu;

    sget-object v13, Luu;->aU:Luu;

    sget-object v14, Luu;->bc:Luu;

    sget-object v15, Luu;->O:Luu;

    sget-object v16, Luu;->P:Luu;

    filled-new-array/range {v0 .. v16}, [Luu;

    move-result-object v0

    sput-object v0, Lau;->bk:[Luu;

    return-void
.end method

.method protected constructor <init>(ILbu;)V
    .registers 5

    const/4 v0, 0x2

    .line 14
    sget-object v1, Lau;->bk:[Luu;

    invoke-direct {p0, p1, v0, p2, v1}, Ldq;-><init>(IILbu;[Luu;)V

    return-void
.end method


# virtual methods
.method public a(Luu;)Z
    .registers 6

    .line 18
    sget-object v0, Luu;->aq:Luu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lau;->a:Lbu;

    invoke-virtual {p1}, Lbu;->d()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    move v1, v2

    :cond_10
    return v1

    .line 19
    :cond_11
    sget-object v0, Luu;->ay:Luu;

    const/4 v3, 0x2

    if-eq p1, v0, :cond_76

    sget-object v0, Luu;->ax:Luu;

    if-ne p1, v0, :cond_1b

    goto :goto_76

    .line 20
    :cond_1b
    sget-object v0, Luu;->ai:Luu;

    if-eq p1, v0, :cond_6c

    sget-object v0, Luu;->H:Luu;

    if-ne p1, v0, :cond_24

    goto :goto_6c

    .line 21
    :cond_24
    sget-object v0, Luu;->aj:Luu;

    if-eq p1, v0, :cond_62

    sget-object v0, Luu;->I:Luu;

    if-ne p1, v0, :cond_2d

    goto :goto_62

    .line 22
    :cond_2d
    sget-object v0, Luu;->P:Luu;

    if-eq p1, v0, :cond_58

    sget-object v0, Luu;->O:Luu;

    if-ne p1, v0, :cond_36

    goto :goto_58

    .line 23
    :cond_36
    sget-object v0, Luu;->aO:Luu;

    if-eq p1, v0, :cond_4e

    sget-object v0, Luu;->aP:Luu;

    if-ne p1, v0, :cond_3f

    goto :goto_4e

    .line 24
    :cond_3f
    iget-object v0, p1, Luu;->bA:Lln;

    sget-object v3, Lln;->e:Lln;

    if-ne v0, v3, :cond_46

    return v2

    .line 25
    :cond_46
    iget-object p1, p1, Luu;->bA:Lln;

    sget-object v0, Lln;->f:Lln;

    if-ne p1, v0, :cond_4d

    return v2

    :cond_4d
    return v1

    .line 23
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lau;->a:Lbu;

    invoke-virtual {p1}, Lbu;->d()I

    move-result p1

    if-lt p1, v3, :cond_57

    move v1, v2

    :cond_57
    return v1

    .line 22
    :cond_58
    :goto_58
    iget-object p1, p0, Lau;->a:Lbu;

    invoke-virtual {p1}, Lbu;->d()I

    move-result p1

    if-lt p1, v2, :cond_61

    move v1, v2

    :cond_61
    return v1

    .line 21
    :cond_62
    :goto_62
    iget-object p1, p0, Lau;->a:Lbu;

    invoke-virtual {p1}, Lbu;->d()I

    move-result p1

    if-lt p1, v2, :cond_6b

    move v1, v2

    :cond_6b
    return v1

    .line 20
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lau;->a:Lbu;

    invoke-virtual {p1}, Lbu;->d()I

    move-result p1

    if-lt p1, v3, :cond_75

    move v1, v2

    :cond_75
    return v1

    .line 19
    :cond_76
    :goto_76
    iget-object p1, p0, Lau;->a:Lbu;

    invoke-virtual {p1}, Lbu;->d()I

    move-result p1

    if-lt p1, v3, :cond_7f

    move v1, v2

    :cond_7f
    return v1
.end method
