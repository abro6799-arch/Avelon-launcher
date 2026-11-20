###### Class paulscode.sound.Vector3D (paulscode.sound.Vector3D)
.class public Lpaulscode/sound/Vector3D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lpaulscode/sound/Vector3D;->x:F

    .line 63
    iput v0, p0, Lpaulscode/sound/Vector3D;->y:F

    .line 64
    iput v0, p0, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lpaulscode/sound/Vector3D;->x:F

    .line 76
    iput p2, p0, Lpaulscode/sound/Vector3D;->y:F

    .line 77
    iput p3, p0, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method


# virtual methods
.method public add(Lpaulscode/sound/Vector3D;)Lpaulscode/sound/Vector3D;
    .registers 6

    .line 157
    new-instance v0, Lpaulscode/sound/Vector3D;

    iget v1, p0, Lpaulscode/sound/Vector3D;->x:F

    iget v2, p1, Lpaulscode/sound/Vector3D;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lpaulscode/sound/Vector3D;->y:F

    iget v3, p1, Lpaulscode/sound/Vector3D;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lpaulscode/sound/Vector3D;->z:F

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public add(Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;)Lpaulscode/sound/Vector3D;
    .registers 7

    .line 147
    new-instance v0, Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->x:F

    iget v2, p2, Lpaulscode/sound/Vector3D;->x:F

    add-float/2addr v1, v2

    iget v2, p1, Lpaulscode/sound/Vector3D;->y:F

    iget v3, p2, Lpaulscode/sound/Vector3D;->y:F

    add-float/2addr v2, v3

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    iget p2, p2, Lpaulscode/sound/Vector3D;->z:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, v2, p1}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lpaulscode/sound/Vector3D;->clone()Lpaulscode/sound/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpaulscode/sound/Vector3D;
    .registers 5

    .line 87
    new-instance v0, Lpaulscode/sound/Vector3D;

    iget v1, p0, Lpaulscode/sound/Vector3D;->x:F

    iget v2, p0, Lpaulscode/sound/Vector3D;->y:F

    iget v3, p0, Lpaulscode/sound/Vector3D;->z:F

    invoke-direct {v0, v1, v2, v3}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public cross(Lpaulscode/sound/Vector3D;)Lpaulscode/sound/Vector3D;
    .registers 9

    .line 111
    new-instance v0, Lpaulscode/sound/Vector3D;

    iget v1, p0, Lpaulscode/sound/Vector3D;->y:F

    iget v2, p1, Lpaulscode/sound/Vector3D;->z:F

    mul-float v3, v1, v2

    iget v4, p1, Lpaulscode/sound/Vector3D;->y:F

    iget v5, p0, Lpaulscode/sound/Vector3D;->z:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget p1, p1, Lpaulscode/sound/Vector3D;->x:F

    mul-float/2addr v5, p1

    iget v6, p0, Lpaulscode/sound/Vector3D;->x:F

    mul-float/2addr v2, v6

    sub-float/2addr v5, v2

    mul-float/2addr v6, v4

    mul-float/2addr p1, v1

    sub-float/2addr v6, p1

    invoke-direct {v0, v3, v5, v6}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public cross(Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;)Lpaulscode/sound/Vector3D;
    .registers 10

    .line 98
    new-instance v0, Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->y:F

    iget v2, p2, Lpaulscode/sound/Vector3D;->z:F

    mul-float v3, v1, v2

    iget v4, p2, Lpaulscode/sound/Vector3D;->y:F

    iget v5, p1, Lpaulscode/sound/Vector3D;->z:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget p2, p2, Lpaulscode/sound/Vector3D;->x:F

    mul-float/2addr v5, p2

    iget p1, p1, Lpaulscode/sound/Vector3D;->x:F

    mul-float/2addr v2, p1

    sub-float/2addr v5, v2

    mul-float/2addr p1, v4

    mul-float/2addr p2, v1

    sub-float/2addr p1, p2

    invoke-direct {v0, v3, v5, p1}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public dot(Lpaulscode/sound/Vector3D;)F
    .registers 5

    .line 136
    iget v0, p0, Lpaulscode/sound/Vector3D;->x:F

    iget v1, p1, Lpaulscode/sound/Vector3D;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lpaulscode/sound/Vector3D;->y:F

    iget v2, p1, Lpaulscode/sound/Vector3D;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lpaulscode/sound/Vector3D;->z:F

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;)F
    .registers 6

    .line 126
    iget v0, p1, Lpaulscode/sound/Vector3D;->x:F

    iget v1, p2, Lpaulscode/sound/Vector3D;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lpaulscode/sound/Vector3D;->y:F

    iget v2, p2, Lpaulscode/sound/Vector3D;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    iget p2, p2, Lpaulscode/sound/Vector3D;->z:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public normalize()V
    .registers 5

    .line 186
    iget v0, p0, Lpaulscode/sound/Vector3D;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lpaulscode/sound/Vector3D;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lpaulscode/sound/Vector3D;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 187
    iget v2, p0, Lpaulscode/sound/Vector3D;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Lpaulscode/sound/Vector3D;->x:F

    .line 188
    iget v2, p0, Lpaulscode/sound/Vector3D;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Lpaulscode/sound/Vector3D;->y:F

    .line 189
    iget v2, p0, Lpaulscode/sound/Vector3D;->z:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method

.method public subtract(Lpaulscode/sound/Vector3D;)Lpaulscode/sound/Vector3D;
    .registers 6

    .line 178
    new-instance v0, Lpaulscode/sound/Vector3D;

    iget v1, p0, Lpaulscode/sound/Vector3D;->x:F

    iget v2, p1, Lpaulscode/sound/Vector3D;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lpaulscode/sound/Vector3D;->y:F

    iget v3, p1, Lpaulscode/sound/Vector3D;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lpaulscode/sound/Vector3D;->z:F

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    sub-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;)Lpaulscode/sound/Vector3D;
    .registers 7

    .line 168
    new-instance v0, Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->x:F

    iget v2, p2, Lpaulscode/sound/Vector3D;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lpaulscode/sound/Vector3D;->y:F

    iget v3, p2, Lpaulscode/sound/Vector3D;->y:F

    sub-float/2addr v2, v3

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    iget p2, p2, Lpaulscode/sound/Vector3D;->z:F

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, v2, p1}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    return-object v0
.end method
