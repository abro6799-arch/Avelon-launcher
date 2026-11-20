###### Class defpackage.mk (mk)
.class public Lmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lnet/minecraft/client/Minecraft;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lmk;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lmk;->c:Ljava/lang/String;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmk;->d:J

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lmk;->e:Z

    .line 20
    iput-object p1, p0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 26

    move-object/from16 v0, p0

    .line 65
    iget-object v1, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-boolean v1, v1, Lnet/minecraft/client/Minecraft;->J:Z

    if-nez v1, :cond_13

    .line 66
    iget-boolean v1, v0, Lmk;->e:Z

    if-eqz v1, :cond_d

    return-void

    .line 67
    :cond_d
    new-instance v1, Lxx;

    invoke-direct {v1}, Lxx;-><init>()V

    throw v1

    .line 71
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    iget-wide v3, v0, Lmk;->d:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x14

    cmp-long v3, v3, v5

    if-gez v3, :cond_22

    return-void

    .line 73
    :cond_22
    iput-wide v1, v0, Lmk;->d:J

    .line 75
    new-instance v1, Lqq;

    iget-object v2, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v3, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget v3, v3, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v4, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget v4, v4, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v1, v2, v3, v4}, Lqq;-><init>(Lkv;II)V

    .line 76
    invoke-virtual {v1}, Lqq;->a()I

    move-result v2

    .line 77
    invoke-virtual {v1}, Lqq;->b()I

    move-result v3

    const/16 v4, 0x100

    .line 79
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    const/16 v4, 0x1701

    .line 80
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 81
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const-wide/16 v5, 0x0

    .line 82
    iget-wide v7, v1, Lqq;->a:D

    iget-wide v9, v1, Lqq;->b:D

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    const-wide v15, 0x4072c00000000000L    # 300.0

    invoke-static/range {v5 .. v16}, Lorg/lwjgl/opengl/GL11;->glOrtho(DDDDDD)V

    const/16 v1, 0x1700

    .line 83
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 84
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/high16 v1, -0x3cb80000    # -200.0f

    const/4 v4, 0x0

    .line 85
    invoke-static {v4, v4, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/16 v1, 0x4100

    .line 87
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    .line 89
    sget-object v1, Lnw;->a:Lnw;

    .line 90
    iget-object v4, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v5, "/gui/background.png"

    invoke-virtual {v4, v5}, Lji;->b(Ljava/lang/String;)I

    move-result v4

    const/16 v15, 0xde1

    .line 91
    invoke-static {v15, v4}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 93
    invoke-virtual {v1}, Lnw;->b()V

    const v4, 0x404040

    .line 94
    invoke-virtual {v1, v4}, Lnw;->b(I)V

    const-wide/16 v5, 0x0

    int-to-double v13, v3

    const-wide/16 v9, 0x0

    int-to-float v4, v3

    const/high16 v16, 0x42000000    # 32.0f

    div-float v4, v4, v16

    float-to-double v7, v4

    move-object v4, v1

    move-wide/from16 v17, v7

    move-wide v7, v13

    move-wide/from16 v19, v13

    move-wide/from16 v13, v17

    .line 95
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    int-to-double v13, v2

    int-to-float v4, v2

    div-float v4, v4, v16

    float-to-double v11, v4

    move-object v4, v1

    move-wide v5, v13

    move-wide/from16 v7, v19

    move-wide/from16 v19, v11

    move-wide/from16 v21, v13

    move-wide/from16 v13, v17

    .line 96
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    move-wide/from16 v5, v21

    .line 97
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    const-wide/16 v5, 0x0

    const-wide/16 v11, 0x0

    .line 98
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    .line 99
    invoke-virtual {v1}, Lnw;->a()V

    if-ltz p1, :cond_12c

    .line 104
    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v11, v4, -0x32

    .line 105
    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v12, v4, 0x10

    .line 107
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 108
    invoke-virtual {v1}, Lnw;->b()V

    const v4, 0x808080

    .line 109
    invoke-virtual {v1, v4}, Lnw;->b(I)V

    int-to-double v13, v11

    int-to-double v9, v12

    const-wide/16 v16, 0x0

    move-object v4, v1

    move-wide v5, v13

    move-wide v7, v9

    move-wide/from16 v18, v9

    move-wide/from16 v9, v16

    .line 110
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    add-int/lit8 v12, v12, 0x2

    int-to-double v9, v12

    move-wide v7, v9

    move-wide/from16 v20, v9

    move-wide/from16 v9, v16

    .line 111
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    add-int/lit8 v4, v11, 0x64

    int-to-double v9, v4

    move-object v4, v1

    move-wide v5, v9

    move-wide/from16 v7, v20

    move-wide/from16 v22, v9

    move-wide/from16 v9, v16

    .line 112
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    const-wide/16 v9, 0x0

    move-wide/from16 v5, v22

    move-wide/from16 v7, v18

    .line 113
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    const v4, 0x80ff80

    .line 115
    invoke-virtual {v1, v4}, Lnw;->b(I)V

    move-object v4, v1

    move-wide v5, v13

    .line 116
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    move-wide/from16 v7, v20

    .line 117
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    add-int v11, v11, p1

    int-to-double v11, v11

    move-wide v5, v11

    .line 118
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    move-wide/from16 v7, v18

    .line 119
    invoke-virtual/range {v4 .. v10}, Lnw;->a(DDD)V

    .line 120
    invoke-virtual {v1}, Lnw;->a()V

    .line 121
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 124
    :cond_12c
    iget-object v1, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v4, v0, Lmk;->c:Ljava/lang/String;

    iget-object v5, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v6, v0, Lmk;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsj;->a(Ljava/lang/String;)I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x4

    add-int/lit8 v6, v3, -0x10

    const v7, 0xffffff

    invoke-virtual {v1, v4, v5, v6, v7}, Lsj;->a(Ljava/lang/String;III)V

    .line 125
    iget-object v1, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v4, v0, Lmk;->a:Ljava/lang/String;

    iget-object v5, v0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v6, v0, Lmk;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsj;->a(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v4, v2, v3, v7}, Lsj;->a(Ljava/lang/String;III)V

    .line 126
    invoke-static {}, Lorg/lwjgl/opengl/Display;->update()V

    .line 129
    :try_start_167
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16a

    :catch_16a
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lmk;->e:Z

    .line 25
    invoke-virtual {p0, p1}, Lmk;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lmk;->e:Z

    .line 30
    iget-object p1, p0, Lmk;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmk;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 15

    .line 34
    iget-object v0, p0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-boolean v0, v0, Lnet/minecraft/client/Minecraft;->J:Z

    if-nez v0, :cond_11

    .line 35
    iget-boolean p1, p0, Lmk;->e:Z

    if-eqz p1, :cond_b

    return-void

    .line 36
    :cond_b
    new-instance p1, Lxx;

    invoke-direct {p1}, Lxx;-><init>()V

    throw p1

    .line 39
    :cond_11
    iput-object p1, p0, Lmk;->c:Ljava/lang/String;

    .line 40
    new-instance p1, Lqq;

    iget-object v0, p0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v1, p0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget v1, v1, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v2, p0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget v2, v2, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {p1, v0, v1, v2}, Lqq;-><init>(Lkv;II)V

    const/16 v0, 0x100

    .line 42
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    const/16 v0, 0x1701

    .line 43
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 44
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const-wide/16 v1, 0x0

    .line 45
    iget-wide v3, p1, Lqq;->a:D

    iget-wide v5, p1, Lqq;->b:D

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide v11, 0x4072c00000000000L    # 300.0

    invoke-static/range {v1 .. v12}, Lorg/lwjgl/opengl/GL11;->glOrtho(DDDDDD)V

    const/16 p1, 0x1700

    .line 46
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 47
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/high16 p1, -0x3cb80000    # -200.0f

    const/4 v0, 0x0

    .line 48
    invoke-static {v0, v0, p1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 52
    iget-object v0, p0, Lmk;->b:Lnet/minecraft/client/Minecraft;

    iget-boolean v0, v0, Lnet/minecraft/client/Minecraft;->J:Z

    if-nez v0, :cond_11

    .line 53
    iget-boolean p1, p0, Lmk;->e:Z

    if-eqz p1, :cond_b

    return-void

    .line 54
    :cond_b
    new-instance p1, Lxx;

    invoke-direct {p1}, Lxx;-><init>()V

    throw p1

    :cond_11
    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lmk;->d:J

    .line 59
    iput-object p1, p0, Lmk;->a:Ljava/lang/String;

    const/4 p1, -0x1

    .line 60
    invoke-virtual {p0, p1}, Lmk;->a(I)V

    .line 61
    iput-wide v0, p0, Lmk;->d:J

    return-void
.end method
