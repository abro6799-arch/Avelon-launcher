###### Class paulscode.sound.ListenerData (paulscode.sound.ListenerData)
.class public Lpaulscode/sound/ListenerData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public angle:F

.field public lookAt:Lpaulscode/sound/Vector3D;

.field public position:Lpaulscode/sound/Vector3D;

.field public up:Lpaulscode/sound/Vector3D;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lpaulscode/sound/ListenerData;->angle:F

    .line 68
    new-instance v1, Lpaulscode/sound/Vector3D;

    invoke-direct {v1, v0, v0, v0}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object v1, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    .line 69
    new-instance v1, Lpaulscode/sound/Vector3D;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v1, v0, v0, v2}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object v1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    .line 70
    new-instance v1, Lpaulscode/sound/Vector3D;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2, v0}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object v1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    .line 71
    iput v0, p0, Lpaulscode/sound/ListenerData;->angle:F

    return-void
.end method

.method public constructor <init>(FFFFFFFFFF)V
    .registers 12

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lpaulscode/sound/ListenerData;->angle:F

    .line 91
    new-instance v0, Lpaulscode/sound/Vector3D;

    invoke-direct {v0, p1, p2, p3}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    .line 92
    new-instance p1, Lpaulscode/sound/Vector3D;

    invoke-direct {p1, p4, p5, p6}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    .line 93
    new-instance p1, Lpaulscode/sound/Vector3D;

    invoke-direct {p1, p7, p8, p9}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    .line 94
    iput p10, p0, Lpaulscode/sound/ListenerData;->angle:F

    return-void
.end method

.method public constructor <init>(Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;F)V
    .registers 6

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lpaulscode/sound/ListenerData;->angle:F

    .line 107
    invoke-virtual {p1}, Lpaulscode/sound/Vector3D;->clone()Lpaulscode/sound/Vector3D;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    .line 108
    invoke-virtual {p2}, Lpaulscode/sound/Vector3D;->clone()Lpaulscode/sound/Vector3D;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    .line 109
    invoke-virtual {p3}, Lpaulscode/sound/Vector3D;->clone()Lpaulscode/sound/Vector3D;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    .line 110
    iput p4, p0, Lpaulscode/sound/ListenerData;->angle:F

    return-void
.end method


# virtual methods
.method public setAngle(F)V
    .registers 6

    .line 247
    iput p1, p0, Lpaulscode/sound/ListenerData;->angle:F

    .line 248
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p1, v1

    iput p1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 249
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v0, p0, Lpaulscode/sound/ListenerData;->angle:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    iput v0, p1, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method

.method public setData(FFFFFFFFFF)V
    .registers 12

    .line 130
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iput p1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 131
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iput p2, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 132
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iput p3, p1, Lpaulscode/sound/Vector3D;->z:F

    .line 133
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iput p4, p1, Lpaulscode/sound/Vector3D;->x:F

    .line 134
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iput p5, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 135
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iput p6, p1, Lpaulscode/sound/Vector3D;->z:F

    .line 136
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iput p7, p1, Lpaulscode/sound/Vector3D;->x:F

    .line 137
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iput p8, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 138
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iput p9, p1, Lpaulscode/sound/Vector3D;->z:F

    .line 139
    iput p10, p0, Lpaulscode/sound/ListenerData;->angle:F

    return-void
.end method

.method public setData(Lpaulscode/sound/ListenerData;)V
    .registers 4

    .line 170
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->x:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 171
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->y:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->y:F

    .line 172
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->z:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->z:F

    .line 173
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->x:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 174
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->y:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->y:F

    .line 175
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->z:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->z:F

    .line 176
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->x:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 177
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->y:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->y:F

    .line 178
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->z:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->z:F

    .line 179
    iget p1, p1, Lpaulscode/sound/ListenerData;->angle:F

    iput p1, p0, Lpaulscode/sound/ListenerData;->angle:F

    return-void
.end method

.method public setData(Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;F)V
    .registers 7

    .line 152
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->x:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 153
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->y:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->y:F

    .line 154
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    iput p1, v0, Lpaulscode/sound/Vector3D;->z:F

    .line 155
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v0, p2, Lpaulscode/sound/Vector3D;->x:F

    iput v0, p1, Lpaulscode/sound/Vector3D;->x:F

    .line 156
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v0, p2, Lpaulscode/sound/Vector3D;->y:F

    iput v0, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 157
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget p2, p2, Lpaulscode/sound/Vector3D;->z:F

    iput p2, p1, Lpaulscode/sound/Vector3D;->z:F

    .line 158
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget p2, p3, Lpaulscode/sound/Vector3D;->x:F

    iput p2, p1, Lpaulscode/sound/Vector3D;->x:F

    .line 159
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget p2, p3, Lpaulscode/sound/Vector3D;->y:F

    iput p2, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 160
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget p2, p3, Lpaulscode/sound/Vector3D;->z:F

    iput p2, p1, Lpaulscode/sound/Vector3D;->z:F

    .line 161
    iput p4, p0, Lpaulscode/sound/ListenerData;->angle:F

    return-void
.end method

.method public setOrientation(FFFFFF)V
    .registers 8

    .line 218
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iput p1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 219
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iput p2, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 220
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iput p3, p1, Lpaulscode/sound/Vector3D;->z:F

    .line 221
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iput p4, p1, Lpaulscode/sound/Vector3D;->x:F

    .line 222
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iput p5, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 223
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iput p6, p1, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method

.method public setOrientation(Lpaulscode/sound/Vector3D;Lpaulscode/sound/Vector3D;)V
    .registers 5

    .line 233
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->x:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 234
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->y:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->y:F

    .line 235
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    iput p1, v0, Lpaulscode/sound/Vector3D;->z:F

    .line 236
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v0, p2, Lpaulscode/sound/Vector3D;->x:F

    iput v0, p1, Lpaulscode/sound/Vector3D;->x:F

    .line 237
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v0, p2, Lpaulscode/sound/Vector3D;->y:F

    iput v0, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 238
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget p2, p2, Lpaulscode/sound/Vector3D;->z:F

    iput p2, p1, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method

.method public setPosition(FFF)V
    .registers 5

    .line 190
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iput p1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 191
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iput p2, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 192
    iget-object p1, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iput p3, p1, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method

.method public setPosition(Lpaulscode/sound/Vector3D;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->x:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 202
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, p1, Lpaulscode/sound/Vector3D;->y:F

    iput v1, v0, Lpaulscode/sound/Vector3D;->y:F

    .line 203
    iget-object v0, p0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    iput p1, v0, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method
