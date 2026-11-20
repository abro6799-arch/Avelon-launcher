###### Class defpackage.dl (dl)
.class public Ldl;
.super Lbg;
.source "SourceFile"


# static fields
.field public static final a:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 17

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 21
    fill-array-data v1, :array_5a

    new-array v2, v0, [F

    fill-array-data v2, :array_64

    new-array v3, v0, [F

    fill-array-data v3, :array_6e

    new-array v4, v0, [F

    fill-array-data v4, :array_78

    new-array v5, v0, [F

    fill-array-data v5, :array_82

    new-array v6, v0, [F

    fill-array-data v6, :array_8c

    new-array v7, v0, [F

    fill-array-data v7, :array_96

    new-array v8, v0, [F

    fill-array-data v8, :array_a0

    new-array v9, v0, [F

    fill-array-data v9, :array_aa

    new-array v10, v0, [F

    fill-array-data v10, :array_b4

    new-array v11, v0, [F

    fill-array-data v11, :array_be

    new-array v12, v0, [F

    fill-array-data v12, :array_c8

    new-array v13, v0, [F

    fill-array-data v13, :array_d2

    new-array v14, v0, [F

    fill-array-data v14, :array_dc

    new-array v15, v0, [F

    fill-array-data v15, :array_e6

    new-array v0, v0, [F

    fill-array-data v0, :array_f0

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[F

    move-result-object v0

    sput-object v0, Ldl;->a:[[F

    return-void

    :array_5a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_64
    .array-data 4
        0x3f733333    # 0.95f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_6e
    .array-data 4
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3f59999a    # 0.85f
    .end array-data

    :array_78
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f733333    # 0.95f
    .end array-data

    :array_82
    .array-data 4
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_8c
    .array-data 4
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_96
    .array-data 4
        0x3f733333    # 0.95f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_a0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
    .end array-data

    :array_aa
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data

    :array_b4
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
    .end array-data

    :array_be
    .array-data 4
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3f666666    # 0.9f
    .end array-data

    :array_c8
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_d2
    .array-data 4
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
    .end array-data

    :array_dc
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_e6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
    .end array-data

    :array_f0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>(Lfd;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Lbg;-><init>(Lfd;)V

    const-string p1, "/mob/sheep.png"

    .line 45
    iput-object p1, p0, Ldl;->O:Ljava/lang/String;

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3fa66666    # 1.3f

    .line 46
    invoke-virtual {p0, p1, v0}, Ldl;->b(FF)V

    return-void
.end method

.method public static a(Ljava/util/Random;)I
    .registers 4

    const/16 v0, 0x64

    .line 152
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0xf

    if-ge v0, v1, :cond_c

    return v2

    :cond_c
    const/16 v1, 0xa

    if-ge v0, v1, :cond_12

    const/4 p0, 0x7

    return p0

    :cond_12
    if-ge v0, v2, :cond_17

    const/16 p0, 0x8

    return p0

    :cond_17
    const/16 v1, 0x12

    if-ge v0, v1, :cond_1e

    const/16 p0, 0xc

    return p0

    :cond_1e
    const/16 v0, 0x1f4

    .line 165
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x6

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 3

    .line 112
    invoke-super {p0, p1}, Lbg;->a(Lnu;)V

    const-string v0, "Sheared"

    .line 113
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ldl;->a(Z)V

    const-string v0, "Color"

    .line 114
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    invoke-virtual {p0, p1}, Ldl;->e_(I)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 143
    iget-object v0, p0, Ldl;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    if-eqz p1, :cond_16

    .line 145
    iget-object p1, p0, Ldl;->bD:Lud;

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    goto :goto_22

    .line 147
    :cond_16
    iget-object p1, p0, Ldl;->bD:Lud;

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    :goto_22
    return-void
.end method

.method public a(Lgs;)Z
    .registers 14

    .line 86
    iget-object v0, p1, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 88
    iget v2, v0, Liz;->c:I

    sget-object v3, Lgm;->bc:Lbl;

    iget v3, v3, Lbl;->bf:I

    if-ne v2, v3, :cond_81

    invoke-virtual {p0}, Ldl;->s()Z

    move-result v2

    if-nez v2, :cond_81

    .line 89
    iget-object v2, p0, Ldl;->aI:Lfd;

    iget-boolean v2, v2, Lfd;->B:Z

    const/4 v3, 0x1

    if-nez v2, :cond_7e

    .line 90
    invoke-virtual {p0, v3}, Ldl;->a(Z)V

    .line 91
    iget-object v2, p0, Ldl;->bs:Ljava/util/Random;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move v4, v1

    :goto_2b
    if-ge v4, v2, :cond_7e

    .line 93
    new-instance v5, Liz;

    sget-object v6, Luu;->ac:Luu;

    iget v6, v6, Luu;->bn:I

    invoke-virtual {p0}, Ldl;->r()I

    move-result v7

    invoke-direct {v5, v6, v3, v7}, Liz;-><init>(III)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5, v6}, Ldl;->a(Liz;F)Lhl;

    move-result-object v5

    .line 94
    iget-wide v6, v5, Lhl;->aQ:D

    iget-object v8, p0, Ldl;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const v9, 0x3d4ccccd    # 0.05f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    add-double/2addr v6, v8

    iput-wide v6, v5, Lhl;->aQ:D

    .line 95
    iget-wide v6, v5, Lhl;->aP:D

    iget-object v8, p0, Ldl;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    iget-object v9, p0, Ldl;->bs:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    float-to-double v10, v8

    add-double/2addr v6, v10

    iput-wide v6, v5, Lhl;->aP:D

    .line 96
    iget-wide v6, v5, Lhl;->aR:D

    iget-object v8, p0, Ldl;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    iget-object v10, p0, Ldl;->bs:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    sub-float/2addr v8, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    add-double/2addr v6, v8

    iput-wide v6, v5, Lhl;->aR:D

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 99
    :cond_7e
    invoke-virtual {v0, v3, p1}, Liz;->a(ILsn;)V

    :cond_81
    return v1
.end method

.method public a(Lsn;I)Z
    .registers 3

    .line 68
    invoke-super {p0, p1, p2}, Lbg;->a(Lsn;I)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .registers 4

    .line 51
    invoke-super {p0}, Lbg;->b()V

    .line 54
    iget-object v0, p0, Ldl;->bD:Lud;

    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 106
    invoke-super {p0, p1}, Lbg;->b(Lnu;)V

    const-string v0, "Sheared"

    .line 107
    invoke-virtual {p0}, Ldl;->s()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {p0}, Ldl;->r()I

    move-result v0

    int-to-byte v0, v0

    const-string v1, "Color"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public e_(I)V
    .registers 5

    .line 134
    iget-object v0, p0, Ldl;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    .line 135
    iget-object v2, p0, Ldl;->bD:Lud;

    and-int/lit16 v0, v0, 0xf0

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p1, v0

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lud;->b(ILjava/lang/Object;)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.sheep"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.sheep"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 81
    sget-object v0, Luu;->ac:Luu;

    iget v0, v0, Luu;->bn:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.sheep"

    return-object v0
.end method

.method protected q()V
    .registers 5

    .line 73
    invoke-virtual {p0}, Ldl;->s()Z

    move-result v0

    if-nez v0, :cond_18

    .line 75
    new-instance v0, Liz;

    sget-object v1, Luu;->ac:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v2, 0x1

    invoke-virtual {p0}, Ldl;->r()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Liz;-><init>(III)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldl;->a(Liz;F)Lhl;

    :cond_18
    return-void
.end method

.method public r()I
    .registers 3

    .line 130
    iget-object v0, p0, Ldl;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public s()Z
    .registers 3

    .line 139
    iget-object v0, p0, Ldl;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
