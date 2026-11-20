###### Class mcshim.awt.Color (mcshim.awt.Color)
.class public Lmcshim/awt/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:Lmcshim/awt/Color;

.field public static final GRAY:Lmcshim/awt/Color;

.field public static final RED:Lmcshim/awt/Color;

.field public static final WHITE:Lmcshim/awt/Color;

.field public static final black:Lmcshim/awt/Color;

.field public static final red:Lmcshim/awt/Color;

.field public static final white:Lmcshim/awt/Color;


# instance fields
.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 3
    new-instance v0, Lmcshim/awt/Color;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, Lmcshim/awt/Color;-><init>(III)V

    sput-object v0, Lmcshim/awt/Color;->WHITE:Lmcshim/awt/Color;

    new-instance v2, Lmcshim/awt/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lmcshim/awt/Color;-><init>(III)V

    sput-object v2, Lmcshim/awt/Color;->BLACK:Lmcshim/awt/Color;

    sput-object v0, Lmcshim/awt/Color;->white:Lmcshim/awt/Color;

    sput-object v2, Lmcshim/awt/Color;->black:Lmcshim/awt/Color;

    new-instance v0, Lmcshim/awt/Color;

    invoke-direct {v0, v1, v3, v3}, Lmcshim/awt/Color;-><init>(III)V

    sput-object v0, Lmcshim/awt/Color;->RED:Lmcshim/awt/Color;

    sput-object v0, Lmcshim/awt/Color;->red:Lmcshim/awt/Color;

    new-instance v0, Lmcshim/awt/Color;

    const/16 v1, 0x80

    invoke-direct {v0, v1, v1, v1}, Lmcshim/awt/Color;-><init>(III)V

    sput-object v0, Lmcshim/awt/Color;->GRAY:Lmcshim/awt/Color;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Lmcshim/awt/Color;->v:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/16 v0, 0xff

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lmcshim/awt/Color;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x18

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p4

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xff

    or-int/2addr p1, p2

    iput p1, p0, Lmcshim/awt/Color;->v:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_6

    goto :goto_9

    :cond_6
    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    :goto_9
    iput p1, p0, Lmcshim/awt/Color;->v:I

    return-void
.end method

.method public static HSBtoRGB(FFF)I
    .registers 9

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x437f0000    # 255.0f

    if-nez v0, :cond_d

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    goto :goto_41

    :cond_d
    float-to-double v3, p0

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr p0, v0

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p0, v0

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    sub-float v0, p0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p1

    mul-float/2addr v4, p2

    mul-float v5, p1, v0

    sub-float v5, v3, v5

    mul-float/2addr v5, p2

    sub-float v0, v3, v0

    mul-float/2addr p1, v0

    sub-float/2addr v3, p1

    mul-float/2addr v3, p2

    float-to-int p0, p0

    if-eqz p0, :cond_70

    const/4 p1, 0x1

    if-eq p0, p1, :cond_69

    const/4 p1, 0x2

    if-eq p0, p1, :cond_5f

    const/4 p1, 0x3

    if-eq p0, p1, :cond_55

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4e

    const/4 p1, 0x5

    if-eq p0, p1, :cond_44

    const/4 p0, 0x0

    :goto_41
    move p1, p0

    move p2, p1

    goto :goto_79

    :cond_44
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p1, v4

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p2, v5

    goto :goto_79

    :cond_4e
    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int p0, v3

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p1, v4

    goto :goto_5b

    :cond_55
    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p0, v4

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p1, v5

    :goto_5b
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_79

    :cond_5f
    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p0, v4

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p1, p2

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int p2, v3

    goto :goto_79

    :cond_69
    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p0, v5

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p1, p2

    goto :goto_76

    :cond_70
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int p1, v3

    :goto_76
    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p2, v4

    :goto_79
    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static getHSBColor(FFF)Lmcshim/awt/Color;
    .registers 4

    .line 9
    new-instance v0, Lmcshim/awt/Color;

    invoke-static {p0, p1, p2}, Lmcshim/awt/Color;->HSBtoRGB(FFF)I

    move-result p0

    invoke-direct {v0, p0}, Lmcshim/awt/Color;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getAlpha()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/Color;->v:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getBlue()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/Color;->v:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGreen()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/Color;->v:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRGB()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/Color;->v:I

    return v0
.end method

.method public getRed()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/Color;->v:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
