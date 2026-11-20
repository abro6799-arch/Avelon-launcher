###### Class defpackage.px (px)
.class public Lpx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:I


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:Z

.field private E:D

.field private F:D

.field private G:D

.field private H:J

.field private I:J

.field private J:Ljava/util/Random;

.field private K:I

.field private L:F

.field private M:F

.field public c:Lra;

.field volatile d:I

.field volatile e:I

.field f:Ljava/nio/FloatBuffer;

.field g:F

.field h:F

.field i:F

.field private j:Lnet/minecraft/client/Minecraft;

.field private k:F

.field private l:I

.field private m:Lsn;

.field private n:Lcu;

.field private o:Lcu;

.field private p:Lcu;

.field private q:Lcu;

.field private r:Lcu;

.field private s:Lcu;

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lpx;->k:F

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lpx;->m:Lsn;

    .line 56
    new-instance v1, Lcu;

    invoke-direct {v1}, Lcu;-><init>()V

    iput-object v1, p0, Lpx;->n:Lcu;

    .line 57
    new-instance v1, Lcu;

    invoke-direct {v1}, Lcu;-><init>()V

    iput-object v1, p0, Lpx;->o:Lcu;

    .line 60
    new-instance v1, Lcu;

    invoke-direct {v1}, Lcu;-><init>()V

    iput-object v1, p0, Lpx;->p:Lcu;

    .line 61
    new-instance v1, Lcu;

    invoke-direct {v1}, Lcu;-><init>()V

    iput-object v1, p0, Lpx;->q:Lcu;

    .line 62
    new-instance v1, Lcu;

    invoke-direct {v1}, Lcu;-><init>()V

    iput-object v1, p0, Lpx;->r:Lcu;

    .line 63
    new-instance v1, Lcu;

    invoke-direct {v1}, Lcu;-><init>()V

    iput-object v1, p0, Lpx;->s:Lcu;

    const/high16 v1, 0x40800000    # 4.0f

    .line 64
    iput v1, p0, Lpx;->t:F

    .line 65
    iput v1, p0, Lpx;->u:F

    .line 66
    iput v0, p0, Lpx;->v:F

    .line 67
    iput v0, p0, Lpx;->w:F

    .line 68
    iput v0, p0, Lpx;->x:F

    .line 69
    iput v0, p0, Lpx;->y:F

    .line 72
    iput v0, p0, Lpx;->z:F

    .line 73
    iput v0, p0, Lpx;->A:F

    .line 76
    iput v0, p0, Lpx;->B:F

    .line 77
    iput v0, p0, Lpx;->C:F

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lpx;->D:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 376
    iput-wide v1, p0, Lpx;->E:D

    const-wide/16 v1, 0x0

    .line 377
    iput-wide v1, p0, Lpx;->F:D

    .line 378
    iput-wide v1, p0, Lpx;->G:D

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lpx;->H:J

    const-wide/16 v1, 0x0

    .line 447
    iput-wide v1, p0, Lpx;->I:J

    .line 727
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lpx;->J:Ljava/util/Random;

    .line 728
    iput v0, p0, Lpx;->K:I

    .line 930
    iput v0, p0, Lpx;->d:I

    .line 931
    iput v0, p0, Lpx;->e:I

    const/16 v0, 0x10

    .line 945
    invoke-static {v0}, Lge;->e(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lpx;->f:Ljava/nio/FloatBuffer;

    .line 83
    iput-object p1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    .line 84
    new-instance v0, Lra;

    invoke-direct {v0, p1}, Lra;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v0, p0, Lpx;->c:Lra;

    return-void
.end method

.method private a(FFFF)Ljava/nio/FloatBuffer;
    .registers 6

    .line 1109
    iget-object v0, p0, Lpx;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 1110
    iget-object v0, p0, Lpx;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1111
    iget-object p1, p0, Lpx;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 1112
    iget-object p1, p0, Lpx;->f:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method private a(FI)V
    .registers 14

    .line 391
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v0, v0, Lkv;->e:I

    const/16 v1, 0x100

    shr-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lpx;->k:F

    const/16 v0, 0x1701

    .line 392
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 393
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    .line 396
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    int-to-float v0, v0

    const v2, 0x3d8f5c29    # 0.07f

    mul-float/2addr v0, v2

    invoke-static {v0, v1, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 397
    :cond_2b
    iget-wide v2, p0, Lpx;->E:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3d4ccccd    # 0.05f

    if-eqz v0, :cond_60

    .line 398
    iget-wide v4, p0, Lpx;->F:D

    double-to-float v0, v4

    iget-wide v4, p0, Lpx;->G:D

    neg-double v4, v4

    double-to-float v4, v4

    invoke-static {v0, v4, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 399
    iget-wide v7, p0, Lpx;->E:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-wide v5, v7

    invoke-static/range {v5 .. v10}, Lorg/lwjgl/opengl/GL11;->glScaled(DDD)V

    .line 400
    invoke-direct {p0, p1}, Lpx;->d(F)F

    move-result v0

    iget-object v4, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v4, v4, Lnet/minecraft/client/Minecraft;->d:I

    int-to-float v4, v4

    iget-object v5, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v5, v5, Lnet/minecraft/client/Minecraft;->e:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lpx;->k:F

    mul-float/2addr v5, v2

    invoke-static {v0, v4, v3, v5}, Lorg/lwjgl/util/glu/GLU;->gluPerspective(FFFF)V

    goto :goto_75

    .line 402
    :cond_60
    invoke-direct {p0, p1}, Lpx;->d(F)F

    move-result v0

    iget-object v4, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v4, v4, Lnet/minecraft/client/Minecraft;->d:I

    int-to-float v4, v4

    iget-object v5, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v5, v5, Lnet/minecraft/client/Minecraft;->e:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lpx;->k:F

    mul-float/2addr v5, v2

    invoke-static {v0, v4, v3, v5}, Lorg/lwjgl/util/glu/GLU;->gluPerspective(FFFF)V

    :goto_75
    const/16 v0, 0x1700

    .line 405
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 406
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    .line 407
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->g:Z

    if-eqz v0, :cond_91

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    invoke-static {p2, v1, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 409
    :cond_91
    invoke-direct {p0, p1}, Lpx;->e(F)V

    .line 410
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p2, p2, Lkv;->f:Z

    if-eqz p2, :cond_9f

    invoke-direct {p0, p1}, Lpx;->f(F)V

    .line 411
    :cond_9f
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget p2, p2, Ldc;->C:F

    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->B:F

    iget-object v2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v2, v2, Ldc;->C:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_de

    mul-float v0, p2, p2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v0, v2

    div-float/2addr v2, v0

    const v0, 0x3d23d70a    # 0.04f

    mul-float/2addr p2, v0

    sub-float/2addr v2, p2

    mul-float/2addr v2, v2

    .line 415
    iget p2, p0, Lpx;->l:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v1, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    div-float p2, v3, v2

    .line 416
    invoke-static {p2, v3, v3}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 417
    iget p2, p0, Lpx;->l:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    neg-float p2, p2

    mul-float/2addr p2, v0

    invoke-static {p2, v1, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 421
    :cond_de
    invoke-direct {p0, p1}, Lpx;->g(F)V

    return-void
.end method

.method private a(IF)V
    .registers 9

    .line 1029
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 1031
    iget v0, p0, Lpx;->g:F

    iget v1, p0, Lpx;->h:F

    iget v2, p0, Lpx;->i:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lpx;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/16 v1, 0xb66

    invoke-static {v1, v0}, Lorg/lwjgl/opengl/GL11;->glFog(ILjava/nio/FloatBuffer;)V

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 1032
    invoke-static {v1, v0, v1}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    .line 1033
    invoke-static {v3, v3, v3, v3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 1037
    iget-boolean v0, p0, Lpx;->D:Z

    const v2, 0x3dcccccd    # 0.1f

    const/16 v3, 0xb62

    const/16 v4, 0x800

    const/16 v5, 0xb65

    if-eqz v0, :cond_38

    .line 1038
    invoke-static {v5, v4}, Lorg/lwjgl/opengl/GL11;->glFogi(II)V

    .line 1039
    invoke-static {v3, v2}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    .line 1045
    iget-object p1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p1, p1, Lkv;->g:Z

    goto :goto_a6

    .line 1054
    :cond_38
    sget-object v0, Lln;->g:Lln;

    invoke-virtual {p2, v0}, Lls;->a(Lln;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1055
    invoke-static {v5, v4}, Lorg/lwjgl/opengl/GL11;->glFogi(II)V

    .line 1056
    invoke-static {v3, v2}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    .line 1062
    iget-object p1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p1, p1, Lkv;->g:Z

    goto :goto_a6

    .line 1071
    :cond_4d
    sget-object v0, Lln;->h:Lln;

    invoke-virtual {p2, v0}, Lls;->a(Lln;)Z

    move-result p2

    if-eqz p2, :cond_64

    .line 1072
    invoke-static {v5, v4}, Lorg/lwjgl/opengl/GL11;->glFogi(II)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 1073
    invoke-static {v3, p1}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    .line 1078
    iget-object p1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p1, p1, Lkv;->g:Z

    goto :goto_a6

    :cond_64
    const/16 p2, 0x2601

    .line 1088
    invoke-static {v5, p2}, Lorg/lwjgl/opengl/GL11;->glFogi(II)V

    .line 1089
    iget p2, p0, Lpx;->k:F

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p2, v0

    const/16 v0, 0xb63

    invoke-static {v0, p2}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    .line 1090
    iget p2, p0, Lpx;->k:F

    const/16 v2, 0xb64

    invoke-static {v2, p2}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    if-gez p1, :cond_88

    .line 1092
    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    .line 1093
    iget p1, p0, Lpx;->k:F

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    invoke-static {v2, p1}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    .line 1095
    :cond_88
    invoke-static {}, Lorg/lwjgl/opengl/GLContext;->getCapabilities()Lorg/lwjgl/opengl/ContextCapabilities;

    move-result-object p1

    iget-boolean p1, p1, Lorg/lwjgl/opengl/ContextCapabilities;->GL_NV_fog_distance:Z

    if-eqz p1, :cond_99

    const p1, 0x855a

    const p2, 0x855b

    .line 1096
    invoke-static {p1, p2}, Lorg/lwjgl/opengl/GL11;->glFogi(II)V

    .line 1099
    :cond_99
    iget-object p1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object p1, p1, Lfd;->t:Lxa;

    iget-boolean p1, p1, Lxa;->c:Z

    if-eqz p1, :cond_a6

    .line 1100
    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glFogf(IF)V

    :cond_a6
    :goto_a6
    const/16 p1, 0xb57

    .line 1104
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 p1, 0x404

    const/16 p2, 0x1200

    .line 1105
    invoke-static {p1, p2}, Lorg/lwjgl/opengl/GL11;->glColorMaterial(II)V

    return-void
.end method

.method private b(FI)V
    .registers 4

    .line 425
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    .line 426
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->g:Z

    if-eqz v0, :cond_18

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 428
    :cond_18
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 429
    invoke-direct {p0, p1}, Lpx;->e(F)V

    .line 430
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p2, p2, Lkv;->f:Z

    if-eqz p2, :cond_29

    invoke-direct {p0, p1}, Lpx;->f(F)V

    .line 432
    :cond_29
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p2, p2, Lkv;->A:Z

    if-nez p2, :cond_48

    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {p2}, Lls;->N()Z

    move-result p2

    if-nez p2, :cond_48

    .line 433
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p2, p2, Lkv;->z:Z

    if-nez p2, :cond_48

    .line 434
    iget-object p2, p0, Lpx;->c:Lra;

    invoke-virtual {p2, p1}, Lra;->a(F)V

    .line 437
    :cond_48
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 438
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p2, p2, Lkv;->A:Z

    if-nez p2, :cond_65

    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {p2}, Lls;->N()Z

    move-result p2

    if-nez p2, :cond_65

    .line 439
    iget-object p2, p0, Lpx;->c:Lra;

    invoke-virtual {p2, p1}, Lra;->b(F)V

    .line 440
    invoke-direct {p0, p1}, Lpx;->e(F)V

    .line 442
    :cond_65
    iget-object p2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p2, p2, Lkv;->f:Z

    if-eqz p2, :cond_70

    invoke-direct {p0, p1}, Lpx;->f(F)V

    :cond_70
    return-void
.end method

.method private c()V
    .registers 37

    move-object/from16 v0, p0

    .line 731
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lfd;->g(F)F

    move-result v1

    .line 732
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v2, v2, Lkv;->j:Z

    if-nez v2, :cond_17

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    :cond_17
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1d

    return-void

    .line 735
    :cond_1d
    iget-object v2, v0, Lpx;->J:Ljava/util/Random;

    iget v3, v0, Lpx;->l:I

    int-to-long v3, v3

    const-wide/32 v5, 0x12a7ce5f

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Random;->setSeed(J)V

    .line 736
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 737
    iget-object v3, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->f:Lfd;

    .line 739
    iget-wide v4, v2, Lls;->aM:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v18

    .line 740
    iget-wide v4, v2, Lls;->aN:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v19

    .line 741
    iget-wide v4, v2, Lls;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v20

    const-wide/16 v4, 0x0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v22

    move-wide/from16 v26, v24

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_4e
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    float-to-int v4, v4

    if-ge v15, v4, :cond_140

    .line 750
    iget-object v4, v0, Lpx;->J:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v4, v18, v4

    iget-object v6, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sub-int/2addr v4, v6

    .line 751
    iget-object v6, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int v6, v20, v6

    iget-object v7, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v7, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int/2addr v6, v5

    .line 752
    invoke-virtual {v3, v4, v6}, Lfd;->e(II)I

    move-result v5

    add-int/lit8 v7, v5, -0x1

    .line 753
    invoke-virtual {v3, v4, v7, v6}, Lfd;->a(III)I

    move-result v7

    add-int/lit8 v8, v19, 0xa

    if-gt v5, v8, :cond_13a

    add-int/lit8 v8, v19, -0xa

    if-lt v5, v8, :cond_13a

    .line 754
    invoke-virtual {v3}, Lfd;->a()Lxv;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lxv;->a(II)Lkd;

    move-result-object v8

    invoke-virtual {v8}, Lkd;->d()Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 755
    iget-object v8, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    .line 756
    iget-object v9, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    if-lez v7, :cond_13a

    .line 758
    sget-object v10, Luu;->m:[Luu;

    aget-object v10, v10, v7

    iget-object v10, v10, Luu;->bA:Lln;

    sget-object v11, Lln;->h:Lln;

    const v12, 0x3dcccccd    # 0.1f

    if-ne v10, v11, :cond_ef

    .line 759
    iget-object v10, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v13, v10, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v10, Lxn;

    int-to-float v4, v4

    add-float/2addr v4, v8

    move/from16 v17, v15

    float-to-double v14, v4

    int-to-float v4, v5

    add-float/2addr v4, v12

    float-to-double v4, v4

    sget-object v8, Luu;->m:[Luu;

    aget-object v7, v8, v7

    iget-wide v7, v7, Luu;->bt:D

    sub-double v11, v4, v7

    int-to-float v4, v6

    add-float/2addr v4, v9

    float-to-double v8, v4

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move-object v4, v10

    move-object v5, v3

    move-wide v6, v14

    move-wide v14, v8

    move-wide v8, v11

    move-object v12, v10

    move-wide v10, v14

    move-object v15, v12

    move-object v14, v13

    move-wide/from16 v12, v28

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move/from16 v28, v17

    move-wide/from16 v14, v30

    move-wide/from16 v16, v32

    invoke-direct/range {v4 .. v17}, Lxn;-><init>(Lfd;DDDDDD)V

    move-object/from16 v4, v34

    move-object/from16 v5, v35

    invoke-virtual {v4, v5}, Ldn;->a(Lxw;)V

    goto :goto_13c

    :cond_ef
    move/from16 v28, v15

    .line 761
    iget-object v10, v0, Lpx;->J:Ljava/util/Random;

    add-int/lit8 v13, v21, 0x1

    invoke-virtual {v10, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-nez v10, :cond_112

    int-to-float v10, v4

    add-float/2addr v10, v8

    float-to-double v10, v10

    int-to-float v14, v5

    add-float/2addr v14, v12

    float-to-double v14, v14

    .line 763
    sget-object v16, Luu;->m:[Luu;

    aget-object v12, v16, v7

    move-wide/from16 v21, v10

    iget-wide v10, v12, Luu;->bt:D

    sub-double v24, v14, v10

    int-to-float v10, v6

    add-float/2addr v10, v9

    float-to-double v10, v10

    move-wide/from16 v26, v10

    move-wide/from16 v22, v21

    .line 766
    :cond_112
    iget-object v10, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v12, v10, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v14, Lxd;

    int-to-float v4, v4

    add-float/2addr v4, v8

    float-to-double v10, v4

    int-to-float v4, v5

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v5

    float-to-double v4, v4

    sget-object v8, Luu;->m:[Luu;

    aget-object v7, v8, v7

    iget-wide v7, v7, Luu;->bt:D

    sub-double v15, v4, v7

    int-to-float v4, v6

    add-float/2addr v4, v9

    float-to-double v8, v4

    move-object v4, v14

    move-object v5, v3

    move-wide v6, v10

    move-wide v10, v8

    move-wide v8, v15

    invoke-direct/range {v4 .. v11}, Lxd;-><init>(Lfd;DDD)V

    invoke-virtual {v12, v14}, Ldn;->a(Lxw;)V

    move/from16 v21, v13

    goto :goto_13c

    :cond_13a
    move/from16 v28, v15

    :goto_13c
    add-int/lit8 v15, v28, 0x1

    goto/16 :goto_4e

    :cond_140
    if-lez v21, :cond_196

    .line 773
    iget-object v1, v0, Lpx;->J:Ljava/util/Random;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v4, v0, Lpx;->K:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lpx;->K:I

    if-ge v1, v4, :cond_196

    const/4 v1, 0x0

    .line 774
    iput v1, v0, Lpx;->K:I

    .line 775
    iget-wide v4, v2, Lls;->aN:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    cmpl-double v1, v24, v4

    if-lez v1, :cond_186

    iget-wide v4, v2, Lls;->aM:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v1

    iget-wide v4, v2, Lls;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lfd;->e(II)I

    move-result v1

    iget-wide v2, v2, Lls;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    if-le v1, v2, :cond_186

    .line 776
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const-string v28, "ambient.weather.rain"

    const v29, 0x3dcccccd    # 0.1f

    const/high16 v30, 0x3f000000    # 0.5f

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v30}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto :goto_196

    .line 778
    :cond_186
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const-string v28, "ambient.weather.rain"

    const v29, 0x3e4ccccd    # 0.2f

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v30}, Lfd;->a(DDDLjava/lang/String;FF)V

    :cond_196
    :goto_196
    return-void
.end method

.method private d(F)F
    .registers 6

    .line 224
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 226
    sget-object v1, Lln;->g:Lln;

    invoke-virtual {v0, v1}, Lls;->a(Lln;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_11

    :cond_f
    const/high16 v1, 0x428c0000    # 70.0f

    .line 227
    :goto_11
    iget v2, v0, Lls;->Y:I

    if-gtz v2, :cond_26

    .line 228
    iget v0, v0, Lls;->ad:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    const/high16 v2, 0x43fa0000    # 500.0f

    add-float/2addr v0, v2

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 237
    :cond_26
    iget v0, p0, Lpx;->A:F

    add-float/2addr v1, v0

    iget v2, p0, Lpx;->z:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    return v1
.end method

.method private e(F)V
    .registers 7

    .line 241
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 243
    iget v1, v0, Lls;->aa:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    .line 245
    iget v2, v0, Lls;->Y:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-gtz v2, :cond_1f

    .line 246
    iget v2, v0, Lls;->ad:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    const/high16 p1, 0x43480000    # 200.0f

    add-float/2addr v2, p1

    const/high16 p1, 0x45fa0000    # 8000.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x42200000    # 40.0f

    sub-float/2addr v2, p1

    .line 248
    invoke-static {v2, v4, v4, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    :cond_1f
    cmpg-float p1, v1, v4

    if-gez p1, :cond_24

    return-void

    .line 252
    :cond_24
    iget p1, v0, Lls;->ab:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    mul-float p1, v1, v1

    mul-float/2addr p1, v1

    mul-float/2addr p1, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v1

    .line 253
    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    .line 255
    iget v0, v0, Lls;->ac:F

    neg-float v1, v0

    .line 258
    invoke-static {v1, v4, v3, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-float p1, p1

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr p1, v1

    .line 259
    invoke-static {p1, v4, v4, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 260
    invoke-static {v0, v4, v3, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    return-void
.end method

.method private f(F)V
    .registers 7

    .line 265
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->i:Lls;

    instance-of v0, v0, Lgs;

    if-nez v0, :cond_9

    return-void

    .line 268
    :cond_9
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->i:Lls;

    check-cast v0, Lgs;

    .line 270
    iget v1, v0, Lgs;->bj:F

    iget v2, v0, Lgs;->bi:F

    sub-float/2addr v1, v2

    .line 271
    iget v2, v0, Lgs;->bj:F

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    neg-float v1, v2

    .line 272
    iget v2, v0, Lgs;->h:F

    iget v3, v0, Lgs;->i:F

    iget v4, v0, Lgs;->h:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 273
    iget v3, v0, Lgs;->af:F

    iget v4, v0, Lgs;->ag:F

    iget v0, v0, Lgs;->af:F

    sub-float/2addr v4, v0

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    const p1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, p1

    .line 274
    invoke-static {v1}, Lin;->a(F)F

    move-result p1

    mul-float/2addr p1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-static {v1}, Lin;->b(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    const/4 v4, 0x0

    invoke-static {p1, v0, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 275
    invoke-static {v1}, Lin;->a(F)F

    move-result p1

    mul-float/2addr p1, v2

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v4, v4, v0}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const p1, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, p1

    .line 276
    invoke-static {v1}, Lin;->b(F)F

    move-result p1

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr p1, v1

    invoke-static {p1, v0, v4, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 277
    invoke-static {v3, v0, v4, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    return-void
.end method

.method private g(F)V
    .registers 46

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 281
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 283
    iget v2, v1, Lls;->bf:F

    const v3, 0x3fcf5c29    # 1.62f

    sub-float/2addr v2, v3

    .line 285
    iget-wide v3, v1, Lls;->aJ:D

    iget-wide v5, v1, Lls;->aM:D

    iget-wide v9, v1, Lls;->aJ:D

    sub-double/2addr v5, v9

    float-to-double v9, v8

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    .line 286
    iget-wide v5, v1, Lls;->aK:D

    iget-wide v11, v1, Lls;->aN:D

    iget-wide v13, v1, Lls;->aK:D

    sub-double/2addr v11, v13

    mul-double/2addr v11, v9

    add-double/2addr v5, v11

    float-to-double v11, v2

    sub-double/2addr v5, v11

    .line 287
    iget-wide v13, v1, Lls;->aL:D

    move-wide/from16 v17, v5

    iget-wide v5, v1, Lls;->aO:D

    move v7, v2

    move-wide/from16 v19, v3

    iget-wide v2, v1, Lls;->aL:D

    sub-double/2addr v5, v2

    mul-double/2addr v5, v9

    add-double v2, v13, v5

    .line 290
    iget v4, v0, Lpx;->C:F

    iget v5, v0, Lpx;->B:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 292
    invoke-virtual {v1}, Lls;->N()Z

    move-result v4

    const/high16 v21, 0x43340000    # 180.0f

    if-eqz v4, :cond_bd

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v11, v2

    double-to-float v2, v11

    const v3, 0x3e99999a    # 0.3f

    .line 294
    invoke-static {v5, v3, v5}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 295
    iget-object v3, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v3, v3, Lkv;->F:Z

    if-nez v3, :cond_b7

    .line 296
    iget-object v3, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-wide v11, v1, Lls;->aM:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v4

    iget-wide v11, v1, Lls;->aN:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v7

    iget-wide v11, v1, Lls;->aO:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v11

    invoke-virtual {v3, v4, v7, v11}, Lfd;->a(III)I

    move-result v3

    .line 297
    sget-object v4, Luu;->T:Luu;

    iget v4, v4, Luu;->bn:I

    if-ne v3, v4, :cond_9b

    .line 298
    iget-object v3, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-wide v11, v1, Lls;->aM:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v4

    iget-wide v11, v1, Lls;->aN:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v7

    iget-wide v11, v1, Lls;->aO:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v11

    invoke-virtual {v3, v4, v7, v11}, Lfd;->e(III)I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x5a

    int-to-float v3, v3

    .line 301
    invoke-static {v3, v5, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 303
    :cond_9b
    iget v3, v1, Lls;->aU:F

    iget v4, v1, Lls;->aS:F

    iget v7, v1, Lls;->aU:F

    sub-float/2addr v4, v7

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    add-float v3, v3, v21

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v5, v4, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 304
    iget v3, v1, Lls;->aV:F

    iget v7, v1, Lls;->aT:F

    iget v11, v1, Lls;->aV:F

    sub-float/2addr v7, v11

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    invoke-static {v3, v4, v5, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    :cond_b7
    move-wide/from16 v29, v9

    move-object v9, v0

    move-object v0, v1

    goto/16 :goto_1d7

    .line 306
    :cond_bd
    iget-object v4, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v4, Lkv;->A:Z

    if-eqz v4, :cond_1c7

    .line 307
    iget v4, v0, Lpx;->u:F

    iget v11, v0, Lpx;->t:F

    sub-float/2addr v11, v4

    mul-float/2addr v11, v8

    add-float/2addr v4, v11

    float-to-double v11, v4

    .line 309
    iget-object v4, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v4, Lkv;->F:Z

    if-eqz v4, :cond_f6

    .line 311
    iget v2, v0, Lpx;->w:F

    iget v3, v0, Lpx;->v:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    .line 312
    iget v3, v0, Lpx;->y:F

    iget v4, v0, Lpx;->x:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    neg-double v11, v11

    double-to-float v4, v11

    .line 314
    invoke-static {v5, v5, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 315
    invoke-static {v3, v6, v5, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 316
    invoke-static {v2, v5, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    move-object v0, v1

    move v3, v5

    move/from16 v22, v7

    move-wide/from16 v29, v9

    goto/16 :goto_1d3

    .line 318
    :cond_f6
    iget v4, v1, Lls;->aS:F

    .line 319
    iget v15, v1, Lls;->aT:F

    div-float v13, v4, v21

    const v14, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v13, v14

    .line 326
    invoke-static {v13}, Lin;->a(F)F

    move-result v5

    neg-float v5, v5

    div-float v16, v15, v21

    mul-float v16, v16, v14

    invoke-static/range {v16 .. v16}, Lin;->b(F)F

    move-result v14

    mul-float/2addr v5, v14

    move/from16 v22, v7

    float-to-double v6, v5

    mul-double/2addr v6, v11

    .line 327
    invoke-static {v13}, Lin;->b(F)F

    move-result v5

    invoke-static/range {v16 .. v16}, Lin;->b(F)F

    move-result v13

    mul-float/2addr v5, v13

    float-to-double v13, v5

    mul-double v23, v13, v11

    .line 328
    invoke-static/range {v16 .. v16}, Lin;->a(F)F

    move-result v5

    neg-float v5, v5

    float-to-double v13, v5

    mul-double v25, v13, v11

    const/4 v5, 0x0

    move-wide v13, v11

    :goto_128
    const/16 v11, 0x8

    if-ge v5, v11, :cond_1a0

    and-int/lit8 v11, v5, 0x1

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    shr-int/lit8 v12, v5, 0x1

    and-int/lit8 v12, v12, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    shr-int/lit8 v16, v5, 0x2

    and-int/lit8 v16, v16, 0x1

    mul-int/lit8 v16, v16, 0x2

    move-wide/from16 v27, v13

    add-int/lit8 v13, v16, -0x1

    int-to-float v13, v13

    const v14, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v14

    mul-float/2addr v12, v14

    mul-float/2addr v13, v14

    .line 339
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->f:Lfd;

    move-wide/from16 v29, v9

    float-to-double v9, v11

    add-double v31, v19, v9

    float-to-double v11, v12

    add-double v33, v17, v11

    move-object/from16 v37, v1

    float-to-double v0, v13

    add-double v35, v2, v0

    invoke-static/range {v31 .. v36}, Lbt;->b(DDD)Lbt;

    move-result-object v13

    sub-double v31, v19, v6

    add-double v31, v31, v9

    add-double v38, v31, v0

    sub-double v9, v17, v25

    add-double v40, v9, v11

    sub-double v9, v2, v23

    add-double v42, v9, v0

    invoke-static/range {v38 .. v43}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    invoke-virtual {v14, v13, v0}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object v0

    if-eqz v0, :cond_192

    .line 341
    iget-object v0, v0, Lvf;->f:Lbt;

    move-wide/from16 v11, v19

    move-wide/from16 v9, v27

    move-wide/from16 v13, v17

    move v1, v15

    move-wide v15, v2

    invoke-static/range {v11 .. v16}, Lbt;->b(DDD)Lbt;

    move-result-object v11

    invoke-virtual {v0, v11}, Lbt;->c(Lbt;)D

    move-result-wide v11

    cmpg-double v0, v11, v9

    if-gez v0, :cond_195

    move-wide v13, v11

    goto :goto_196

    :cond_192
    move v1, v15

    move-wide/from16 v9, v27

    :cond_195
    move-wide v13, v9

    :goto_196
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move v15, v1

    move-wide/from16 v9, v29

    move-object/from16 v1, v37

    goto :goto_128

    :cond_1a0
    move-object v0, v1

    move-wide/from16 v29, v9

    move-wide v9, v13

    move v1, v15

    .line 350
    iget v2, v0, Lls;->aT:F

    sub-float/2addr v2, v1

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 351
    iget v2, v0, Lls;->aS:F

    sub-float/2addr v2, v4

    invoke-static {v2, v3, v5, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-double v6, v9

    double-to-float v2, v6

    .line 352
    invoke-static {v3, v3, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 353
    iget v2, v0, Lls;->aS:F

    sub-float/2addr v4, v2

    invoke-static {v4, v3, v5, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 354
    iget v2, v0, Lls;->aT:F

    sub-float v15, v1, v2

    invoke-static {v15, v5, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    goto :goto_1d3

    :cond_1c7
    move-object v0, v1

    move v3, v5

    move/from16 v22, v7

    move-wide/from16 v29, v9

    const v1, -0x42333333    # -0.1f

    .line 357
    invoke-static {v3, v3, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    :goto_1d3
    move-object/from16 v9, p0

    move/from16 v2, v22

    .line 360
    :goto_1d7
    iget-object v1, v9, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v1, v1, Lkv;->F:Z

    if-nez v1, :cond_1fd

    .line 361
    iget v1, v0, Lls;->aV:F

    iget v3, v0, Lls;->aT:F

    iget v4, v0, Lls;->aV:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v1, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v3, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 362
    iget v1, v0, Lls;->aU:F

    iget v5, v0, Lls;->aS:F

    iget v6, v0, Lls;->aU:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    add-float/2addr v1, v5

    add-float v1, v1, v21

    invoke-static {v1, v3, v4, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    goto :goto_1fe

    :cond_1fd
    const/4 v3, 0x0

    .line 366
    :goto_1fe
    invoke-static {v3, v2, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 368
    iget-wide v3, v0, Lls;->aJ:D

    iget-wide v5, v0, Lls;->aM:D

    iget-wide v10, v0, Lls;->aJ:D

    sub-double/2addr v5, v10

    mul-double v5, v5, v29

    add-double/2addr v3, v5

    .line 369
    iget-wide v5, v0, Lls;->aK:D

    iget-wide v10, v0, Lls;->aN:D

    iget-wide v12, v0, Lls;->aK:D

    sub-double/2addr v10, v12

    mul-double v10, v10, v29

    add-double/2addr v5, v10

    float-to-double v1, v2

    sub-double/2addr v5, v1

    .line 370
    iget-wide v1, v0, Lls;->aL:D

    iget-wide v10, v0, Lls;->aO:D

    iget-wide v12, v0, Lls;->aL:D

    sub-double/2addr v10, v12

    mul-double v10, v10, v29

    add-double/2addr v10, v1

    .line 372
    iget-object v0, v9, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->g:Ln;

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v10

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Ln;->a(DDDF)Z

    move-result v0

    iput-boolean v0, v9, Lpx;->D:Z

    return-void
.end method

.method private h(F)V
    .registers 12

    .line 951
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    .line 952
    iget-object v1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 954
    iget-object v2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v2, v2, Lkv;->e:I

    rsub-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 955
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    sub-float v2, v3, v2

    .line 962
    iget-object v4, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {v0, v4, p1}, Lfd;->a(Lsn;F)Lbt;

    move-result-object v4

    .line 963
    iget-wide v5, v4, Lbt;->a:D

    double-to-float v5, v5

    .line 964
    iget-wide v6, v4, Lbt;->b:D

    double-to-float v6, v6

    .line 965
    iget-wide v7, v4, Lbt;->c:D

    double-to-float v4, v7

    .line 967
    invoke-virtual {v0, p1}, Lfd;->d(F)Lbt;

    move-result-object v7

    .line 968
    iget-wide v8, v7, Lbt;->a:D

    double-to-float v8, v8

    iput v8, p0, Lpx;->g:F

    .line 969
    iget-wide v8, v7, Lbt;->b:D

    double-to-float v8, v8

    iput v8, p0, Lpx;->h:F

    .line 970
    iget-wide v7, v7, Lbt;->c:D

    double-to-float v7, v7

    .line 972
    iget v8, p0, Lpx;->g:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v2

    add-float/2addr v8, v5

    iput v8, p0, Lpx;->g:F

    .line 973
    iget v5, p0, Lpx;->h:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Lpx;->h:F

    sub-float/2addr v4, v7

    mul-float/2addr v4, v2

    add-float/2addr v7, v4

    .line 974
    iput v7, p0, Lpx;->i:F

    .line 976
    invoke-virtual {v0, p1}, Lfd;->g(F)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/high16 v6, 0x3f000000    # 0.5f

    if-lez v5, :cond_78

    mul-float v5, v2, v6

    sub-float v5, v3, v5

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v7

    sub-float v2, v3, v2

    .line 980
    iget v7, p0, Lpx;->g:F

    mul-float/2addr v7, v5

    iput v7, p0, Lpx;->g:F

    .line 981
    iget v7, p0, Lpx;->h:F

    mul-float/2addr v7, v5

    iput v7, p0, Lpx;->h:F

    .line 982
    iget v5, p0, Lpx;->i:F

    mul-float/2addr v5, v2

    iput v5, p0, Lpx;->i:F

    .line 984
    :cond_78
    invoke-virtual {v0, p1}, Lfd;->f(F)F

    move-result v2

    cmpl-float v5, v2, v4

    if-lez v5, :cond_91

    mul-float/2addr v2, v6

    sub-float/2addr v3, v2

    .line 987
    iget v2, p0, Lpx;->g:F

    mul-float/2addr v2, v3

    iput v2, p0, Lpx;->g:F

    .line 988
    iget v2, p0, Lpx;->h:F

    mul-float/2addr v2, v3

    iput v2, p0, Lpx;->h:F

    .line 989
    iget v2, p0, Lpx;->i:F

    mul-float/2addr v2, v3

    iput v2, p0, Lpx;->i:F

    .line 992
    :cond_91
    iget-boolean v2, p0, Lpx;->D:Z

    if-eqz v2, :cond_a9

    .line 993
    invoke-virtual {v0, p1}, Lfd;->c(F)Lbt;

    move-result-object v0

    .line 994
    iget-wide v1, v0, Lbt;->a:D

    double-to-float v1, v1

    iput v1, p0, Lpx;->g:F

    .line 995
    iget-wide v1, v0, Lbt;->b:D

    double-to-float v1, v1

    iput v1, p0, Lpx;->h:F

    .line 996
    iget-wide v0, v0, Lbt;->c:D

    double-to-float v0, v0

    iput v0, p0, Lpx;->i:F

    goto :goto_d2

    .line 997
    :cond_a9
    sget-object v0, Lln;->g:Lln;

    invoke-virtual {v1, v0}, Lls;->a(Lln;)Z

    move-result v0

    if-eqz v0, :cond_be

    const v0, 0x3ca3d70a    # 0.02f

    .line 998
    iput v0, p0, Lpx;->g:F

    .line 999
    iput v0, p0, Lpx;->h:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 1000
    iput v0, p0, Lpx;->i:F

    goto :goto_d2

    .line 1001
    :cond_be
    sget-object v0, Lln;->h:Lln;

    invoke-virtual {v1, v0}, Lls;->a(Lln;)Z

    move-result v0

    if-eqz v0, :cond_d2

    const v0, 0x3f19999a    # 0.6f

    .line 1002
    iput v0, p0, Lpx;->g:F

    const v0, 0x3dcccccd    # 0.1f

    .line 1003
    iput v0, p0, Lpx;->h:F

    .line 1004
    iput v4, p0, Lpx;->i:F

    .line 1007
    :cond_d2
    :goto_d2
    iget v0, p0, Lpx;->L:F

    iget v1, p0, Lpx;->M:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1008
    iget p1, p0, Lpx;->g:F

    mul-float/2addr p1, v0

    iput p1, p0, Lpx;->g:F

    .line 1009
    iget p1, p0, Lpx;->h:F

    mul-float/2addr p1, v0

    iput p1, p0, Lpx;->h:F

    .line 1010
    iget p1, p0, Lpx;->i:F

    mul-float/2addr p1, v0

    iput p1, p0, Lpx;->i:F

    .line 1013
    iget-object p1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean p1, p1, Lkv;->g:Z

    if-eqz p1, :cond_116

    .line 1014
    iget p1, p0, Lpx;->g:F

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float v1, p1, v0

    iget v2, p0, Lpx;->h:F

    const/high16 v3, 0x426c0000    # 59.0f

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lpx;->i:F

    const/high16 v5, 0x41300000    # 11.0f

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    mul-float v6, p1, v0

    const/high16 v7, 0x428c0000    # 70.0f

    mul-float/2addr v2, v7

    add-float/2addr v6, v2

    div-float/2addr v6, v5

    mul-float/2addr p1, v0

    mul-float/2addr v3, v7

    add-float/2addr p1, v3

    div-float/2addr p1, v5

    .line 1018
    iput v1, p0, Lpx;->g:F

    .line 1019
    iput v6, p0, Lpx;->h:F

    .line 1020
    iput p1, p0, Lpx;->i:F

    .line 1023
    :cond_116
    iget p1, p0, Lpx;->g:F

    iget v0, p0, Lpx;->h:F

    iget v1, p0, Lpx;->i:F

    invoke-static {p1, v0, v1, v4}, Lorg/lwjgl/opengl/GL11;->glClearColor(FFFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 88
    iget v0, p0, Lpx;->M:F

    iput v0, p0, Lpx;->L:F

    .line 89
    iget v0, p0, Lpx;->t:F

    iput v0, p0, Lpx;->u:F

    .line 90
    iget v0, p0, Lpx;->v:F

    iput v0, p0, Lpx;->w:F

    .line 91
    iget v0, p0, Lpx;->x:F

    iput v0, p0, Lpx;->y:F

    .line 92
    iget v0, p0, Lpx;->z:F

    iput v0, p0, Lpx;->A:F

    .line 93
    iget v0, p0, Lpx;->B:F

    iput v0, p0, Lpx;->C:F

    .line 145
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->i:Lls;

    if-nez v0, :cond_24

    .line 146
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput-object v1, v0, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 149
    :cond_24
    iget-object v0, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v1, v1, Lls;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-object v2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v2, v2, Lls;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-object v3, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v3, v3, Lls;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfd;->c(III)F

    move-result v0

    .line 150
    iget-object v1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v1, v1, Lkv;->e:I

    rsub-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 152
    iget v1, p0, Lpx;->M:F

    sub-float/2addr v0, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lpx;->M:F

    .line 154
    iget v0, p0, Lpx;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpx;->l:I

    .line 156
    iget-object v0, p0, Lpx;->c:Lra;

    invoke-virtual {v0}, Lra;->a()V

    .line 157
    invoke-direct {p0}, Lpx;->c()V

    return-void
.end method

.method public a(F)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 162
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->i:Lls;

    if-nez v2, :cond_b

    return-void

    .line 163
    :cond_b
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-nez v2, :cond_12

    return-void

    .line 165
    :cond_12
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->c:Lob;

    invoke-virtual {v2}, Lob;->b()F

    move-result v2

    float-to-double v2, v2

    .line 166
    iget-object v4, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v5, v4, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {v5, v2, v3, v1}, Lls;->a(DF)Lvf;

    move-result-object v5

    iput-object v5, v4, Lnet/minecraft/client/Minecraft;->y:Lvf;

    .line 169
    iget-object v4, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {v4, v1}, Lls;->e(F)Lbt;

    move-result-object v4

    .line 170
    iget-object v5, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->y:Lvf;

    if-eqz v5, :cond_3d

    .line 171
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget-object v2, v2, Lvf;->f:Lbt;

    invoke-virtual {v2, v4}, Lbt;->c(Lbt;)D

    move-result-wide v2

    .line 174
    :cond_3d
    iget-object v5, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->c:Lob;

    instance-of v5, v5, Lpj;

    if-eqz v5, :cond_48

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    goto :goto_4f

    :cond_48
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpl-double v7, v2, v5

    if-lez v7, :cond_4f

    move-wide v2, v5

    .line 181
    :cond_4f
    :goto_4f
    iget-object v5, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {v5, v1}, Lls;->f(F)Lbt;

    move-result-object v1

    .line 182
    iget-wide v5, v1, Lbt;->a:D

    mul-double v6, v5, v2

    iget-wide v8, v1, Lbt;->b:D

    mul-double/2addr v8, v2

    iget-wide v10, v1, Lbt;->c:D

    mul-double/2addr v10, v2

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Lbt;->c(DDD)Lbt;

    move-result-object v5

    const/4 v6, 0x0

    .line 183
    iput-object v6, v0, Lpx;->m:Lsn;

    .line 185
    iget-object v6, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v7, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v7, v7, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-object v8, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-object v9, v8, Lls;->aW:Leq;

    iget-wide v10, v1, Lbt;->a:D

    mul-double/2addr v10, v2

    iget-wide v12, v1, Lbt;->b:D

    mul-double/2addr v12, v2

    iget-wide v14, v1, Lbt;->c:D

    mul-double/2addr v14, v2

    invoke-virtual/range {v9 .. v15}, Leq;->a(DDD)Leq;

    move-result-object v16

    const/high16 v1, 0x3f800000    # 1.0f

    float-to-double v1, v1

    move-wide/from16 v17, v1

    move-wide/from16 v19, v1

    move-wide/from16 v21, v1

    invoke-virtual/range {v16 .. v22}, Leq;->b(DDD)Leq;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-wide v7, v2

    .line 187
    :goto_99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_e6

    .line 188
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsn;

    .line 189
    invoke-virtual {v9}, Lsn;->h_()Z

    move-result v10

    if-nez v10, :cond_ac

    goto :goto_e3

    .line 191
    :cond_ac
    invoke-virtual {v9}, Lsn;->m_()F

    move-result v10

    .line 192
    iget-object v11, v9, Lsn;->aW:Leq;

    float-to-double v14, v10

    move-wide v12, v14

    move-wide/from16 v16, v14

    invoke-virtual/range {v11 .. v17}, Leq;->b(DDD)Leq;

    move-result-object v10

    .line 193
    invoke-virtual {v10, v4, v5}, Leq;->a(Lbt;Lbt;)Lvf;

    move-result-object v11

    .line 194
    invoke-virtual {v10, v4}, Leq;->a(Lbt;)Z

    move-result v10

    if-eqz v10, :cond_d0

    cmpg-double v10, v2, v7

    if-ltz v10, :cond_cc

    cmpl-double v10, v7, v2

    if-nez v10, :cond_e3

    .line 196
    :cond_cc
    iput-object v9, v0, Lpx;->m:Lsn;

    move-wide v7, v2

    goto :goto_e3

    :cond_d0
    if-eqz v11, :cond_e3

    .line 200
    iget-object v10, v11, Lvf;->f:Lbt;

    invoke-virtual {v4, v10}, Lbt;->c(Lbt;)D

    move-result-wide v10

    cmpg-double v12, v10, v7

    if-ltz v12, :cond_e0

    cmpl-double v12, v7, v2

    if-nez v12, :cond_e3

    .line 202
    :cond_e0
    iput-object v9, v0, Lpx;->m:Lsn;

    move-wide v7, v10

    :cond_e3
    :goto_e3
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 208
    :cond_e6
    iget-object v1, v0, Lpx;->m:Lsn;

    if-eqz v1, :cond_fd

    .line 209
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->c:Lob;

    instance-of v1, v1, Lpj;

    if-nez v1, :cond_fd

    .line 211
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    new-instance v2, Lvf;

    iget-object v3, v0, Lpx;->m:Lsn;

    invoke-direct {v2, v3}, Lvf;-><init>(Lsn;)V

    iput-object v2, v1, Lnet/minecraft/client/Minecraft;->y:Lvf;

    :cond_fd
    return-void
.end method

.method public a(FJ)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v7, p1

    const/16 v8, 0xb44

    .line 563
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v1, 0xb71

    .line 564
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 566
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    if-nez v1, :cond_1a

    .line 567
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput-object v2, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 570
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lpx;->a(F)V

    .line 572
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v9, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 573
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v10, v1, Lnet/minecraft/client/Minecraft;->g:Ln;

    .line 574
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v11, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    .line 575
    iget-wide v1, v9, Lls;->bl:D

    iget-wide v3, v9, Lls;->aM:D

    iget-wide v5, v9, Lls;->bl:D

    sub-double/2addr v3, v5

    float-to-double v12, v7

    mul-double/2addr v3, v12

    add-double v5, v1, v3

    .line 576
    iget-wide v1, v9, Lls;->bm:D

    iget-wide v3, v9, Lls;->aN:D

    iget-wide v14, v9, Lls;->bm:D

    sub-double/2addr v3, v14

    mul-double/2addr v3, v12

    add-double v21, v1, v3

    .line 577
    iget-wide v1, v9, Lls;->bn:D

    iget-wide v3, v9, Lls;->aO:D

    iget-wide v14, v9, Lls;->bn:D

    sub-double/2addr v3, v14

    mul-double/2addr v3, v12

    add-double/2addr v3, v1

    .line 579
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v1}, Lfd;->w()Lcl;

    move-result-object v1

    .line 580
    instance-of v2, v1, Lkx;

    if-eqz v2, :cond_68

    .line 581
    check-cast v1, Lkx;

    double-to-int v2, v5

    int-to-float v2, v2

    .line 583
    invoke-static {v2}, Lin;->d(F)I

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    double-to-int v14, v3

    int-to-float v14, v14

    .line 584
    invoke-static {v14}, Lin;->d(F)I

    move-result v14

    shr-int/lit8 v14, v14, 0x4

    .line 585
    invoke-virtual {v1, v2, v14}, Lkx;->d(II)V

    :cond_68
    const/4 v2, 0x0

    move v1, v2

    :goto_6a
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ge v1, v14, :cond_27e

    .line 589
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v14, v14, Lkv;->g:Z

    if-eqz v14, :cond_81

    .line 590
    sput v1, Lpx;->b:I

    if-nez v1, :cond_7e

    .line 591
    invoke-static {v2, v15, v15, v2}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_81

    .line 592
    :cond_7e
    invoke-static {v15, v2, v2, v2}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    .line 596
    :cond_81
    :goto_81
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v14, v14, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v15, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v15, v15, Lnet/minecraft/client/Minecraft;->e:I

    invoke-static {v2, v2, v14, v15}, Lorg/lwjgl/opengl/GL11;->glViewport(IIII)V

    .line 597
    invoke-direct/range {p0 .. p1}, Lpx;->h(F)V

    const/16 v14, 0x4100

    .line 598
    invoke-static {v14}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    .line 599
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 601
    invoke-direct {v0, v7, v1}, Lpx;->a(FI)V

    .line 603
    invoke-static {}, Lw;->a()Ldr;

    .line 604
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v14, v14, Lkv;->e:I

    const/4 v15, 0x2

    if-ge v14, v15, :cond_ad

    const/4 v14, -0x1

    .line 605
    invoke-direct {v0, v14, v7}, Lpx;->a(IF)V

    .line 606
    invoke-virtual {v10, v7}, Ln;->a(F)V

    :cond_ad
    const/16 v23, 0xb60

    .line 608
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/4 v15, 0x1

    .line 609
    invoke-direct {v0, v15, v7}, Lpx;->a(IF)V

    .line 611
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v14, v14, Lkv;->k:Z

    const/16 v24, 0x1d01

    if-eqz v14, :cond_c3

    .line 612
    invoke-static/range {v24 .. v24}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    .line 615
    :cond_c3
    new-instance v14, Lsr;

    invoke-direct {v14}, Lsr;-><init>()V

    move-object/from16 v25, v14

    move-wide v15, v5

    move-wide/from16 v17, v21

    move-wide/from16 v19, v3

    .line 616
    invoke-interface/range {v14 .. v20}, Lyn;->a(DDD)V

    .line 618
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->g:Ln;

    move-object/from16 v15, v25

    invoke-virtual {v14, v15, v7}, Ln;->a(Lyn;F)V

    if-nez v1, :cond_101

    .line 621
    :cond_dd
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {v14, v9, v2}, Ln;->a(Lls;Z)Z

    move-result v14

    if-eqz v14, :cond_e8

    goto :goto_101

    :cond_e8
    const-wide/16 v16, 0x0

    cmp-long v14, p2, v16

    if-nez v14, :cond_ef

    goto :goto_101

    .line 625
    :cond_ef
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    sub-long v18, p2, v18

    cmp-long v14, v18, v16

    if-gez v14, :cond_fa

    goto :goto_101

    :cond_fa
    const-wide/32 v16, 0x3b9aca00

    cmp-long v14, v18, v16

    if-lez v14, :cond_dd

    .line 631
    :cond_101
    :goto_101
    invoke-direct {v0, v2, v7}, Lpx;->a(IF)V

    .line 632
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 633
    iget-object v14, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v8, "/terrain.png"

    invoke-virtual {v14, v8}, Lji;->b(Ljava/lang/String;)I

    move-result v14

    move-wide/from16 v17, v3

    const/16 v4, 0xde1

    invoke-static {v4, v14}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 634
    invoke-static {}, Lu;->a()V

    .line 635
    invoke-virtual {v10, v9, v2, v12, v13}, Ln;->a(Lls;ID)I

    const/16 v14, 0x1d00

    .line 637
    invoke-static {v14}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    .line 639
    invoke-static {}, Lu;->b()V

    .line 640
    invoke-virtual {v9, v7}, Lls;->e(F)Lbt;

    move-result-object v3

    invoke-virtual {v10, v3, v15, v7}, Ln;->a(Lbt;Lyn;F)V

    .line 641
    invoke-virtual {v11, v9, v7}, Ldn;->b(Lsn;F)V

    .line 642
    invoke-static {}, Lu;->a()V

    .line 643
    invoke-direct {v0, v2, v7}, Lpx;->a(IF)V

    .line 644
    invoke-virtual {v11, v9, v7}, Ldn;->a(Lsn;F)V

    .line 646
    iget-object v3, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->y:Lvf;

    const/16 v15, 0xbc0

    if-eqz v3, :cond_189

    sget-object v3, Lln;->g:Lln;

    invoke-virtual {v9, v3}, Lls;->a(Lln;)Z

    move-result v3

    if-eqz v3, :cond_189

    instance-of v3, v9, Lgs;

    if-eqz v3, :cond_189

    .line 647
    move-object v3, v9

    check-cast v3, Lgs;

    .line 648
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 649
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->y:Lvf;

    const/16 v20, 0x0

    iget-object v4, v3, Lgs;->c:Lix;

    invoke-virtual {v4}, Lix;->b()Liz;

    move-result-object v26

    move v4, v1

    move-object v1, v10

    move-object/from16 v19, v2

    const/4 v14, 0x0

    move-object v2, v3

    move-object v14, v3

    move-object/from16 v3, v19

    move/from16 v27, v4

    move/from16 v4, v20

    move-wide/from16 v19, v5

    move-object/from16 v5, v26

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Ln;->a(Lgs;Lvf;ILiz;F)V

    .line 650
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v1, Lnet/minecraft/client/Minecraft;->y:Lvf;

    const/4 v4, 0x0

    iget-object v1, v14, Lgs;->c:Lix;

    invoke-virtual {v1}, Lix;->b()Liz;

    move-result-object v5

    move-object v1, v10

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Ln;->b(Lgs;Lvf;ILiz;F)V

    .line 651
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    goto :goto_18d

    :cond_189
    move/from16 v27, v1

    move-wide/from16 v19, v5

    :goto_18d
    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 654
    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/4 v1, 0x0

    .line 655
    invoke-direct {v0, v1, v7}, Lpx;->a(IF)V

    const/16 v1, 0xbe2

    .line 657
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v2, 0xb44

    .line 658
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 659
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v2, v8}, Lji;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 660
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v2, v2, Lkv;->j:Z

    if-eqz v2, :cond_1ed

    .line 662
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v2, v2, Lkv;->k:Z

    if-eqz v2, :cond_1c2

    .line 663
    invoke-static/range {v24 .. v24}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    :cond_1c2
    const/4 v2, 0x0

    .line 666
    invoke-static {v2, v2, v2, v2}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    const/4 v8, 0x1

    .line 667
    invoke-virtual {v10, v9, v8, v12, v13}, Ln;->a(Lls;ID)I

    move-result v3

    .line 668
    iget-object v4, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v4, Lkv;->g:Z

    if-eqz v4, :cond_1df

    .line 669
    sget v4, Lpx;->b:I

    if-nez v4, :cond_1db

    invoke-static {v2, v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_1e2

    .line 670
    :cond_1db
    invoke-static {v8, v2, v2, v8}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_1e2

    .line 672
    :cond_1df
    invoke-static {v8, v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    :goto_1e2
    if-lez v3, :cond_1e7

    .line 676
    invoke-virtual {v10, v8, v12, v13}, Ln;->a(ID)V

    :cond_1e7
    const/16 v2, 0x1d00

    .line 679
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    goto :goto_1f1

    :cond_1ed
    const/4 v8, 0x1

    .line 681
    invoke-virtual {v10, v9, v8, v12, v13}, Ln;->a(Lls;ID)I

    .line 685
    :goto_1f1
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v14, 0xb44

    .line 686
    invoke-static {v14}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 687
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 689
    iget-wide v1, v0, Lpx;->E:D

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v24

    if-nez v1, :cond_241

    instance-of v1, v9, Lgs;

    if-eqz v1, :cond_241

    .line 690
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->y:Lvf;

    if-eqz v1, :cond_241

    sget-object v1, Lln;->g:Lln;

    invoke-virtual {v9, v1}, Lls;->a(Lln;)Z

    move-result v1

    if-nez v1, :cond_241

    .line 691
    move-object v6, v9

    check-cast v6, Lgs;

    .line 692
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 693
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v1, Lnet/minecraft/client/Minecraft;->y:Lvf;

    const/4 v4, 0x0

    iget-object v1, v6, Lgs;->c:Lix;

    invoke-virtual {v1}, Lix;->b()Liz;

    move-result-object v5

    move-object v1, v10

    move-object v2, v6

    move-object v14, v6

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Ln;->a(Lgs;Lvf;ILiz;F)V

    .line 694
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v1, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget-object v1, v14, Lgs;->c:Lix;

    invoke-virtual {v1}, Lix;->b()Liz;

    move-result-object v5

    move-object v1, v10

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Ln;->b(Lgs;Lvf;ILiz;F)V

    .line 695
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 701
    :cond_241
    invoke-virtual/range {p0 .. p1}, Lpx;->c(F)V

    .line 702
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v1, 0x0

    .line 708
    invoke-direct {v0, v1, v7}, Lpx;->a(IF)V

    .line 709
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 710
    invoke-virtual {v10, v7}, Ln;->b(F)V

    .line 711
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 712
    invoke-direct {v0, v8, v7}, Lpx;->a(IF)V

    .line 714
    iget-wide v1, v0, Lpx;->E:D

    cmpl-double v1, v1, v24

    if-nez v1, :cond_268

    const/16 v1, 0x100

    .line 715
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    move/from16 v2, v27

    .line 716
    invoke-direct {v0, v7, v2}, Lpx;->b(FI)V

    goto :goto_26a

    :cond_268
    move/from16 v2, v27

    .line 720
    :goto_26a
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v1, v1, Lkv;->g:Z

    if-nez v1, :cond_273

    return-void

    :cond_273
    add-int/lit8 v1, v2, 0x1

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    const/4 v2, 0x0

    const/16 v8, 0xb44

    goto/16 :goto_6a

    :cond_27e
    move v1, v2

    move v8, v15

    .line 724
    invoke-static {v8, v8, v8, v1}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    return-void
.end method

.method public b()V
    .registers 15

    .line 934
    new-instance v0, Lqq;

    iget-object v1, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v2, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v2, v2, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v3, p0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v3, v3, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v0, v1, v2, v3}, Lqq;-><init>(Lkv;II)V

    const/16 v1, 0x100

    .line 936
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    const/16 v1, 0x1701

    .line 937
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 938
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const-wide/16 v2, 0x0

    .line 939
    iget-wide v4, v0, Lqq;->a:D

    iget-wide v6, v0, Lqq;->b:D

    const-wide/16 v8, 0x0

    const-wide v10, 0x408f400000000000L    # 1000.0

    const-wide v12, 0x40a7700000000000L    # 3000.0

    invoke-static/range {v2 .. v13}, Lorg/lwjgl/opengl/GL11;->glOrtho(DDDDDD)V

    const/16 v0, 0x1700

    .line 940
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 941
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/4 v0, 0x0

    const/high16 v1, -0x3b060000    # -2000.0f

    .line 942
    invoke-static {v0, v0, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    return-void
.end method

.method public b(F)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 450
    invoke-static {}, Lorg/lwjgl/opengl/Display;->isActive()Z

    move-result v0

    const-wide/16 v3, 0x1f4

    if-nez v0, :cond_1d

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lpx;->H:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_23

    .line 452
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->i()V

    goto :goto_23

    .line 455
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lpx;->H:J

    .line 458
    :cond_23
    :goto_23
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-boolean v0, v0, Lnet/minecraft/client/Minecraft;->N:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_81

    .line 459
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->C:Lvy;

    invoke-virtual {v0}, Lvy;->c()V

    .line 461
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v0, v0, Lkv;->c:F

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v6

    const v6, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v6

    mul-float v6, v0, v0

    mul-float/2addr v6, v0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v6, v0

    .line 463
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->C:Lvy;

    iget v0, v0, Lvy;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 464
    iget-object v7, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v7, v7, Lnet/minecraft/client/Minecraft;->C:Lvy;

    iget v7, v7, Lvy;->b:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    .line 467
    iget-object v8, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v8, v8, Lkv;->d:Z

    if-eqz v8, :cond_5f

    const/4 v8, -0x1

    goto :goto_60

    :cond_5f
    move v8, v5

    .line 484
    :goto_60
    iget-object v9, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v9, v9, Lkv;->E:Z

    if-eqz v9, :cond_78

    .line 486
    iget-object v9, v1, Lpx;->n:Lcu;

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v6, v10

    invoke-virtual {v9, v0, v6}, Lcu;->a(FF)F

    move-result v0

    .line 487
    iget-object v9, v1, Lpx;->o:Lcu;

    invoke-virtual {v9, v7, v6}, Lcu;->a(FF)F

    move-result v7

    .line 491
    :cond_78
    iget-object v6, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->h:Ldc;

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual {v6, v0, v7}, Ldc;->d(FF)V

    .line 494
    :cond_81
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-boolean v0, v0, Lnet/minecraft/client/Minecraft;->w:Z

    if-eqz v0, :cond_88

    return-void

    .line 495
    :cond_88
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->g:Z

    sput-boolean v0, Lpx;->a:Z

    .line 497
    new-instance v0, Lqq;

    iget-object v6, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v7, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v7, v7, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v8, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v8, v8, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v0, v6, v7, v8}, Lqq;-><init>(Lkv;II)V

    .line 498
    invoke-virtual {v0}, Lqq;->a()I

    move-result v6

    .line 499
    invoke-virtual {v0}, Lqq;->b()I

    move-result v0

    .line 500
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v7

    mul-int/2addr v7, v6

    iget-object v6, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v6, v6, Lnet/minecraft/client/Minecraft;->d:I

    div-int/2addr v7, v6

    .line 501
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v6

    mul-int/2addr v6, v0

    iget-object v8, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v8, v8, Lnet/minecraft/client/Minecraft;->e:I

    div-int/2addr v6, v8

    sub-int/2addr v0, v6

    add-int/lit8 v6, v0, -0x1

    .line 504
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v0, v0, Lkv;->i:I

    if-ne v0, v5, :cond_cb

    const/16 v0, 0x78

    goto :goto_cd

    :cond_cb
    const/16 v0, 0xc8

    .line 505
    :goto_cd
    iget-object v8, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v8, v8, Lkv;->i:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_d8

    const/16 v0, 0x28

    .line 507
    :cond_d8
    iget-object v8, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const-wide/32 v10, 0xf4240

    const v12, 0x3b9aca00

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    if-eqz v8, :cond_153

    .line 508
    iget-object v8, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v8, v8, Lkv;->i:I

    if-nez v8, :cond_f5

    .line 509
    invoke-virtual {v1, v2, v14, v15}, Lpx;->a(FJ)V

    move/from16 v16, v6

    goto :goto_100

    :cond_f5
    move/from16 v16, v6

    .line 511
    iget-wide v5, v1, Lpx;->I:J

    div-int v8, v12, v0

    int-to-long v3, v8

    add-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Lpx;->a(FJ)V

    .line 515
    :goto_100
    iget-object v3, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v3, v3, Lkv;->i:I

    if-ne v3, v9, :cond_126

    .line 516
    iget-wide v3, v1, Lpx;->I:J

    div-int/2addr v12, v0

    int-to-long v5, v12

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    div-long/2addr v3, v10

    cmp-long v0, v3, v14

    if-lez v0, :cond_126

    const-wide/16 v5, 0x1f4

    cmp-long v0, v3, v5

    if-gez v0, :cond_126

    .line 518
    :try_start_11d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_120
    .catch Ljava/lang/InterruptedException; {:try_start_11d .. :try_end_120} :catch_121

    goto :goto_126

    :catch_121
    move-exception v0

    move-object v3, v0

    .line 520
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 523
    :cond_126
    :goto_126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v1, Lpx;->I:J

    .line 526
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->z:Z

    if-eqz v0, :cond_13e

    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_13b

    goto :goto_13e

    :cond_13b
    move/from16 v3, v16

    goto :goto_1a5

    .line 527
    :cond_13e
    :goto_13e
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->v:Luq;

    iget-object v3, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v3, :cond_14c

    move/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_14f

    :cond_14c
    move v5, v13

    move/from16 v3, v16

    :goto_14f
    invoke-virtual {v0, v2, v5, v7, v3}, Luq;->a(FZII)V

    goto :goto_1a5

    :cond_153
    move v3, v6

    .line 530
    iget-object v4, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v4, v4, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v5, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget v5, v5, Lnet/minecraft/client/Minecraft;->e:I

    invoke-static {v13, v13, v4, v5}, Lorg/lwjgl/opengl/GL11;->glViewport(IIII)V

    const/16 v4, 0x1701

    .line 531
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 532
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/16 v4, 0x1700

    .line 533
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 534
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lpx;->b()V

    .line 537
    iget-object v4, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v4, v4, Lkv;->i:I

    if-ne v4, v9, :cond_19f

    .line 538
    iget-wide v4, v1, Lpx;->I:J

    div-int/2addr v12, v0

    int-to-long v8, v12

    add-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    div-long/2addr v4, v10

    cmp-long v0, v4, v14

    if-gez v0, :cond_18c

    const-wide/16 v8, 0xa

    add-long/2addr v4, v8

    :cond_18c
    cmp-long v0, v4, v14

    if-lez v0, :cond_19f

    const-wide/16 v8, 0x1f4

    cmp-long v0, v4, v8

    if-gez v0, :cond_19f

    .line 541
    :try_start_196
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_199
    .catch Ljava/lang/InterruptedException; {:try_start_196 .. :try_end_199} :catch_19a

    goto :goto_19f

    :catch_19a
    move-exception v0

    move-object v4, v0

    .line 543
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 547
    :cond_19f
    :goto_19f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v1, Lpx;->I:J

    .line 551
    :goto_1a5
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_1ce

    const/16 v0, 0x100

    .line 552
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    .line 553
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->r:Lda;

    invoke-virtual {v0, v7, v3, v2}, Lda;->a(IIF)V

    .line 554
    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_1ce

    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->r:Lda;

    iget-object v0, v0, Lda;->h:Ldu;

    if-eqz v0, :cond_1ce

    iget-object v0, v1, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->r:Lda;

    iget-object v0, v0, Lda;->h:Ldu;

    invoke-virtual {v0, v2}, Ldu;->a(F)V

    :cond_1ce
    return-void
.end method

.method protected c(F)V
    .registers 69

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 785
    iget-object v2, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v2, v1}, Lfd;->g(F)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_12

    return-void

    .line 788
    :cond_12
    iget-object v4, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 789
    iget-object v5, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->f:Lfd;

    .line 791
    iget-wide v6, v4, Lls;->aM:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    .line 792
    iget-wide v7, v4, Lls;->aN:D

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    .line 793
    iget-wide v8, v4, Lls;->aO:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    .line 796
    sget-object v20, Lnw;->a:Lnw;

    const/16 v21, 0xb44

    .line 797
    invoke-static/range {v21 .. v21}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    .line 798
    invoke-static {v3, v14, v3}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    const/16 v22, 0xbe2

    .line 799
    invoke-static/range {v22 .. v22}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v9, 0x302

    const/16 v10, 0x303

    .line 800
    invoke-static {v9, v10}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/16 v15, 0x204

    const v12, 0x3c23d70a    # 0.01f

    .line 801
    invoke-static {v15, v12}, Lorg/lwjgl/opengl/GL11;->glAlphaFunc(IF)V

    .line 803
    iget-object v9, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v10, "/environment/snow.png"

    invoke-virtual {v9, v10}, Lji;->b(Ljava/lang/String;)I

    move-result v9

    const/16 v13, 0xde1

    invoke-static {v13, v9}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 805
    iget-wide v9, v4, Lls;->bl:D

    iget-wide v13, v4, Lls;->aM:D

    move/from16 v23, v2

    iget-wide v2, v4, Lls;->bl:D

    sub-double/2addr v13, v2

    float-to-double v2, v1

    mul-double/2addr v13, v2

    add-double/2addr v13, v9

    .line 806
    iget-wide v9, v4, Lls;->bm:D

    move-wide/from16 v25, v13

    iget-wide v12, v4, Lls;->aN:D

    iget-wide v14, v4, Lls;->bm:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double v14, v9, v12

    .line 807
    iget-wide v9, v4, Lls;->bn:D

    iget-wide v11, v4, Lls;->aO:D

    move/from16 v27, v7

    move/from16 v28, v8

    iget-wide v7, v4, Lls;->bn:D

    sub-double/2addr v11, v7

    mul-double/2addr v11, v2

    add-double v2, v9, v11

    .line 809
    invoke-static {v14, v15}, Lin;->b(D)I

    move-result v7

    .line 813
    iget-object v8, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v8, v8, Lkv;->j:Z

    const/16 v29, 0xa

    if-eqz v8, :cond_92

    move/from16 v8, v29

    goto :goto_93

    :cond_92
    const/4 v8, 0x5

    .line 815
    :goto_93
    invoke-virtual {v5}, Lfd;->a()Lxv;

    move-result-object v9

    sub-int v10, v6, v8

    sub-int v12, v28, v8

    mul-int/lit8 v11, v8, 0x2

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v10, v12, v11, v11}, Lxv;->a(IIII)[Lkd;

    move-result-object v30

    const/16 v31, 0x0

    move v13, v10

    move/from16 v9, v31

    :goto_a8
    add-int v10, v6, v8

    const v32, 0x66397

    const v33, 0x2b24abb

    const/high16 v34, 0x40800000    # 4.0f

    const-wide/high16 v35, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    const/high16 v39, 0x3f000000    # 0.5f

    if-gt v13, v10, :cond_28d

    move v10, v12

    :goto_bb
    add-int v11, v28, v8

    if-gt v10, v11, :cond_26c

    add-int/lit8 v40, v9, 0x1

    .line 820
    aget-object v9, v30, v9

    .line 821
    invoke-virtual {v9}, Lkd;->c()Z

    move-result v9

    if-nez v9, :cond_df

    move-wide/from16 v47, v2

    move/from16 v44, v6

    move/from16 v41, v7

    move/from16 v43, v8

    move v0, v10

    move/from16 v42, v12

    :goto_d4
    move v8, v13

    move-wide/from16 v53, v14

    move-wide/from16 v51, v25

    const/16 v6, 0xde1

    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_253

    .line 823
    :cond_df
    invoke-virtual {v5, v13, v10}, Lfd;->e(II)I

    move-result v9

    if-gez v9, :cond_e7

    move/from16 v9, v31

    :cond_e7
    if-ge v9, v7, :cond_ed

    move v11, v7

    move/from16 v41, v11

    goto :goto_f0

    :cond_ed
    move/from16 v41, v7

    move v11, v9

    :goto_f0
    sub-int v7, v27, v8

    move/from16 v42, v12

    add-int v12, v27, v8

    if-ge v7, v9, :cond_f9

    move v7, v9

    :cond_f9
    if-ge v12, v9, :cond_fc

    move v12, v9

    :cond_fc
    if-eq v7, v12, :cond_24a

    .line 836
    iget-object v9, v0, Lpx;->J:Ljava/util/Random;

    move/from16 v43, v12

    mul-int v12, v13, v13

    mul-int/lit16 v12, v12, 0xc31

    mul-int v44, v13, v33

    add-int v12, v12, v44

    mul-int v44, v10, v10

    mul-int v44, v44, v32

    add-int v12, v12, v44

    move/from16 v44, v6

    mul-int/lit16 v6, v10, 0x35c1

    add-int/2addr v12, v6

    move/from16 v45, v7

    int-to-long v6, v12

    invoke-virtual {v9, v6, v7}, Ljava/util/Random;->setSeed(J)V

    .line 838
    iget v6, v0, Lpx;->l:I

    int-to-float v7, v6

    add-float/2addr v7, v1

    and-int/lit16 v6, v6, 0x1ff

    int-to-float v6, v6

    add-float/2addr v6, v1

    const/high16 v9, 0x44000000    # 512.0f

    div-float/2addr v6, v9

    .line 841
    iget-object v9, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const v12, 0x3c23d70a    # 0.01f

    mul-float v18, v7, v12

    iget-object v12, v0, Lpx;->J:Ljava/util/Random;

    move-wide/from16 v47, v2

    invoke-virtual {v12}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v18, v18, v1

    add-float v1, v9, v18

    .line 842
    iget-object v2, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, v0, Lpx;->J:Ljava/util/Random;

    move/from16 v49, v1

    invoke-virtual {v3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v7, v0

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v0

    add-float/2addr v2, v7

    int-to-float v0, v13

    add-float v0, v0, v39

    float-to-double v0, v0

    move v7, v2

    .line 844
    iget-wide v2, v4, Lls;->aM:D

    sub-double/2addr v0, v2

    int-to-float v2, v10

    add-float v2, v2, v39

    float-to-double v2, v2

    move/from16 v18, v6

    move/from16 v50, v7

    .line 845
    iget-wide v6, v4, Lls;->aO:D

    sub-double/2addr v2, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 846
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    int-to-float v1, v8

    div-float/2addr v0, v1

    .line 848
    invoke-virtual/range {v20 .. v20}, Lnw;->b()V

    .line 849
    invoke-virtual {v5, v13, v11, v10}, Lfd;->c(III)F

    move-result v1

    mul-float/2addr v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v3

    add-float v0, v0, v39

    mul-float v0, v0, v23

    .line 850
    invoke-static {v1, v1, v1, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    move-wide/from16 v0, v25

    neg-double v6, v0

    mul-double v6, v6, v37

    neg-double v11, v14

    mul-double v25, v11, v37

    move-wide/from16 v11, v47

    neg-double v2, v11

    mul-double v2, v2, v37

    move-object/from16 v9, v20

    move-wide/from16 v47, v0

    move-wide v0, v11

    move v12, v10

    move-wide v10, v6

    move-wide/from16 v51, v47

    const/16 v6, 0xde1

    const v7, 0x3c23d70a    # 0.01f

    move-wide/from16 v47, v0

    move v0, v12

    move/from16 v1, v43

    move/from16 v43, v8

    move v8, v13

    move-wide/from16 v12, v25

    move-wide/from16 v53, v14

    const/high16 v7, 0x3f800000    # 1.0f

    move-wide v14, v2

    .line 851
    invoke-virtual/range {v9 .. v15}, Lnw;->b(DDD)V

    add-int/lit8 v13, v8, 0x0

    int-to-double v2, v13

    move/from16 v9, v45

    int-to-double v14, v9

    int-to-double v10, v0

    add-double v55, v10, v35

    const/4 v10, 0x0

    add-float v11, v10, v49

    float-to-double v12, v11

    int-to-float v9, v9

    mul-float/2addr v9, v7

    div-float v9, v9, v34

    mul-float v26, v18, v7

    add-float v9, v9, v26

    add-float v9, v9, v50

    float-to-double v10, v9

    move-object/from16 v9, v20

    move-wide/from16 v57, v10

    move-wide v10, v2

    move-wide/from16 v59, v12

    move-wide v12, v14

    move-wide/from16 v61, v14

    move-wide/from16 v14, v55

    move-wide/from16 v16, v59

    move-wide/from16 v18, v57

    .line 853
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v13, v8, 0x1

    int-to-double v14, v13

    add-float v9, v7, v49

    float-to-double v12, v9

    move-object/from16 v9, v20

    move-wide v10, v14

    move-wide/from16 v63, v12

    move-wide/from16 v12, v61

    move-wide/from16 v65, v14

    move-wide/from16 v14, v55

    move-wide/from16 v16, v63

    .line 854
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    int-to-double v14, v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    div-float v1, v1, v34

    add-float v1, v1, v26

    add-float v1, v1, v50

    float-to-double v12, v1

    move-wide/from16 v10, v65

    move-wide/from16 v49, v12

    move-wide v12, v14

    move-wide/from16 v65, v14

    move-wide/from16 v14, v55

    move-wide/from16 v18, v49

    .line 855
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide v10, v2

    move-wide/from16 v12, v65

    move-wide/from16 v16, v59

    .line 856
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    int-to-double v1, v8

    add-double v1, v1, v35

    add-int/lit8 v10, v0, 0x0

    int-to-double v14, v10

    move-wide v10, v1

    move-wide/from16 v12, v61

    move-wide/from16 v55, v14

    move-wide/from16 v18, v57

    .line 858
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v10, v0, 0x1

    int-to-double v14, v10

    move-wide v10, v1

    move-wide/from16 v61, v14

    move-wide/from16 v16, v63

    .line 859
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v12, v65

    move-wide/from16 v18, v49

    .line 860
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v14, v55

    move-wide/from16 v16, v59

    .line 861
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 870
    invoke-virtual/range {v9 .. v15}, Lnw;->b(DDD)V

    .line 871
    invoke-virtual/range {v20 .. v20}, Lnw;->a()V

    goto :goto_253

    :cond_24a
    move-wide/from16 v47, v2

    move/from16 v44, v6

    move/from16 v43, v8

    move v0, v10

    goto/16 :goto_d4

    :goto_253
    add-int/lit8 v10, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v13, v8

    move/from16 v9, v40

    move/from16 v7, v41

    move/from16 v12, v42

    move/from16 v8, v43

    move/from16 v6, v44

    move-wide/from16 v2, v47

    move-wide/from16 v25, v51

    move-wide/from16 v14, v53

    goto/16 :goto_bb

    :cond_26c
    move-wide/from16 v47, v2

    move/from16 v44, v6

    move/from16 v41, v7

    move/from16 v43, v8

    move/from16 v42, v12

    move v8, v13

    move-wide/from16 v53, v14

    move-wide/from16 v51, v25

    const/16 v6, 0xde1

    const/high16 v7, 0x3f800000    # 1.0f

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v7, v41

    move/from16 v8, v43

    move/from16 v6, v44

    goto/16 :goto_a8

    :cond_28d
    move-wide/from16 v47, v2

    move/from16 v44, v6

    move/from16 v43, v8

    move-wide/from16 v53, v14

    move-wide/from16 v51, v25

    const/16 v6, 0xde1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 877
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v2, "/environment/rain.png"

    invoke-virtual {v1, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v6, v1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 879
    iget-object v1, v0, Lpx;->j:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v1, v1, Lkv;->j:Z

    if-eqz v1, :cond_2b3

    move/from16 v1, v29

    goto :goto_2b5

    :cond_2b3
    move/from16 v1, v43

    :goto_2b5
    sub-int v6, v44, v1

    :goto_2b7
    add-int v2, v44, v1

    if-gt v6, v2, :cond_435

    sub-int v8, v28, v1

    :goto_2bd
    add-int v2, v28, v1

    if-gt v8, v2, :cond_41e

    add-int/lit8 v2, v31, 0x1

    .line 883
    aget-object v3, v30, v31

    .line 884
    invoke-virtual {v3}, Lkd;->d()Z

    move-result v3

    if-nez v3, :cond_2dc

    :cond_2cb
    move/from16 v29, v1

    move/from16 v24, v2

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move v0, v7

    move-wide/from16 v4, v47

    move-wide/from16 v45, v51

    move-wide/from16 v42, v53

    goto/16 :goto_409

    .line 886
    :cond_2dc
    invoke-virtual {v5, v6, v8}, Lfd;->e(II)I

    move-result v3

    sub-int v9, v27, v1

    add-int v10, v27, v1

    if-ge v9, v3, :cond_2e8

    move v14, v3

    goto :goto_2e9

    :cond_2e8
    move v14, v9

    :goto_2e9
    if-ge v10, v3, :cond_2ec

    goto :goto_2ed

    :cond_2ec
    move v3, v10

    :goto_2ed
    if-eq v14, v3, :cond_2cb

    .line 895
    iget-object v9, v0, Lpx;->J:Ljava/util/Random;

    mul-int v10, v6, v6

    mul-int/lit16 v10, v10, 0xc31

    mul-int v11, v6, v33

    add-int v12, v10, v11

    mul-int v13, v8, v8

    mul-int v13, v13, v32

    add-int/2addr v12, v13

    mul-int/lit16 v15, v8, 0x35c1

    add-int/2addr v12, v15

    move/from16 v29, v8

    int-to-long v7, v12

    invoke-virtual {v9, v7, v8}, Ljava/util/Random;->setSeed(J)V

    .line 898
    iget v7, v0, Lpx;->l:I

    add-int/2addr v7, v10

    add-int/2addr v7, v11

    add-int/2addr v7, v13

    add-int/2addr v7, v15

    and-int/lit8 v7, v7, 0x1f

    int-to-float v7, v7

    add-float v7, v7, p1

    const/high16 v8, 0x42000000    # 32.0f

    div-float/2addr v7, v8

    iget-object v8, v0, Lpx;->J:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    int-to-float v8, v6

    add-float v8, v8, v39

    float-to-double v8, v8

    .line 900
    iget-wide v10, v4, Lls;->aM:D

    sub-double/2addr v8, v10

    move/from16 v15, v29

    int-to-float v10, v15

    add-float v10, v10, v39

    float-to-double v10, v10

    .line 901
    iget-wide v12, v4, Lls;->aO:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v8

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    .line 902
    invoke-static {v8, v9}, Lin;->a(D)F

    move-result v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 905
    invoke-virtual/range {v20 .. v20}, Lnw;->b()V

    const/16 v9, 0x80

    .line 906
    invoke-virtual {v5, v6, v9, v15}, Lfd;->c(III)F

    move-result v9

    const v10, 0x3f59999a    # 0.85f

    mul-float/2addr v9, v10

    const v10, 0x3e19999a    # 0.15f

    add-float/2addr v9, v10

    mul-float/2addr v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v8, v10, v8

    mul-float v8, v8, v39

    add-float v8, v8, v39

    mul-float v8, v8, v23

    .line 907
    invoke-static {v9, v9, v9, v8}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    move-wide/from16 v12, v51

    neg-double v8, v12

    mul-double v10, v8, v37

    move/from16 v29, v1

    move-wide/from16 v8, v53

    neg-double v0, v8

    mul-double v0, v0, v37

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move-wide/from16 v4, v47

    neg-double v8, v4

    mul-double v16, v8, v37

    move-wide/from16 v42, v53

    move-object/from16 v9, v20

    move-wide/from16 v45, v12

    move-wide v12, v0

    move v0, v14

    move v8, v15

    move-wide/from16 v14, v16

    .line 908
    invoke-virtual/range {v9 .. v15}, Lnw;->b(DDD)V

    add-int/lit8 v1, v6, 0x0

    int-to-double v14, v1

    int-to-double v12, v0

    int-to-double v9, v8

    add-double v47, v9, v35

    const/4 v1, 0x0

    float-to-double v10, v1

    int-to-float v0, v0

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v0, v9

    div-float v0, v0, v34

    mul-float/2addr v7, v9

    add-float/2addr v0, v7

    move/from16 v24, v2

    float-to-double v1, v0

    move-object/from16 v9, v20

    move-wide/from16 v50, v10

    move-wide v10, v14

    move-wide/from16 v52, v12

    move-wide/from16 v54, v14

    move-wide/from16 v14, v47

    move-wide/from16 v16, v50

    move-wide/from16 v18, v1

    .line 909
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v0, v6, 0x1

    int-to-double v14, v0

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v12, v0

    move-wide v10, v14

    move-wide/from16 v56, v12

    move-wide/from16 v12, v52

    move-wide/from16 v58, v14

    move-wide/from16 v14, v47

    move-wide/from16 v16, v56

    .line 910
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    int-to-double v14, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float v3, v3, v34

    add-float/2addr v3, v7

    float-to-double v12, v3

    move-wide/from16 v10, v58

    move-wide/from16 v58, v12

    move-wide v12, v14

    move-wide/from16 v60, v14

    move-wide/from16 v14, v47

    move-wide/from16 v18, v58

    .line 911
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v54

    move-wide/from16 v12, v60

    move-wide/from16 v16, v50

    .line 912
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    int-to-double v9, v6

    add-double v47, v9, v35

    add-int/lit8 v3, v8, 0x0

    int-to-double v14, v3

    move-object/from16 v9, v20

    move-wide/from16 v10, v47

    move-wide/from16 v12, v52

    move-wide/from16 v54, v14

    move-wide/from16 v18, v1

    .line 914
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, v8, 0x1

    int-to-double v14, v3

    move-wide/from16 v52, v14

    move-wide/from16 v16, v56

    .line 915
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v12, v60

    move-wide/from16 v18, v58

    .line 916
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v14, v54

    move-wide/from16 v16, v50

    .line 917
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 918
    invoke-virtual/range {v9 .. v15}, Lnw;->b(DDD)V

    .line 919
    invoke-virtual/range {v20 .. v20}, Lnw;->a()V

    :goto_409
    add-int/lit8 v8, v8, 0x1

    move v7, v0

    move-wide/from16 v47, v4

    move/from16 v31, v24

    move/from16 v1, v29

    move-object/from16 v4, v40

    move-object/from16 v5, v41

    move-wide/from16 v53, v42

    move-wide/from16 v51, v45

    move-object/from16 v0, p0

    goto/16 :goto_2bd

    :cond_41e
    move/from16 v29, v1

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move v0, v7

    move-wide/from16 v4, v47

    move-wide/from16 v45, v51

    move-wide/from16 v42, v53

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v40

    move-object/from16 v5, v41

    move-object/from16 v0, p0

    goto/16 :goto_2b7

    .line 925
    :cond_435
    invoke-static/range {v21 .. v21}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 926
    invoke-static/range {v22 .. v22}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const v0, 0x3dcccccd    # 0.1f

    const/16 v1, 0x204

    .line 927
    invoke-static {v1, v0}, Lorg/lwjgl/opengl/GL11;->glAlphaFunc(IF)V

    return-void
.end method
