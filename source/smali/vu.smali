###### Class defpackage.vu (vu)
.class public Lvu;
.super Lub;
.source "SourceFile"


# instance fields
.field private a:Lnet/minecraft/client/Minecraft;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lny;

.field private g:J

.field private h:Lbb;

.field private i:Z


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lub;-><init>()V

    .line 44
    iput-object p1, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    .line 45
    new-instance p1, Lbb;

    invoke-direct {p1}, Lbb;-><init>()V

    iput-object p1, p0, Lvu;->h:Lbb;

    return-void
.end method

.method private b()V
    .registers 16

    .line 66
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget v0, v0, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v1, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget v1, v1, Lnet/minecraft/client/Minecraft;->e:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lorg/lwjgl/opengl/GL11;->glViewport(IIII)V

    const/16 v0, 0x1701

    .line 67
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 68
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/16 v1, 0x1700

    .line 69
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 70
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    .line 72
    iget-object v2, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget v2, v2, Lnet/minecraft/client/Minecraft;->d:I

    iput v2, p0, Lvu;->b:I

    .line 73
    iget-object v2, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget v2, v2, Lnet/minecraft/client/Minecraft;->e:I

    iput v2, p0, Lvu;->c:I

    .line 75
    new-instance v2, Lqq;

    iget-object v3, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v4, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget v4, v4, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v5, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget v5, v5, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v2, v3, v4, v5}, Lqq;-><init>(Lkv;II)V

    .line 76
    invoke-virtual {v2}, Lqq;->a()I

    move-result v3

    iput v3, p0, Lvu;->b:I

    .line 77
    invoke-virtual {v2}, Lqq;->b()I

    move-result v2

    iput v2, p0, Lvu;->c:I

    const/16 v2, 0x100

    .line 79
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    .line 80
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 81
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const-wide/16 v3, 0x0

    .line 82
    iget v0, p0, Lvu;->b:I

    int-to-double v5, v0

    iget v0, p0, Lvu;->c:I

    int-to-double v7, v0

    const-wide/16 v9, 0x0

    const-wide v11, 0x408f400000000000L    # 1000.0

    const-wide v13, 0x40a7700000000000L    # 3000.0

    invoke-static/range {v3 .. v14}, Lorg/lwjgl/opengl/GL11;->glOrtho(DDDDDD)V

    .line 83
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 84
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/4 v0, 0x0

    const/high16 v1, -0x3b060000    # -2000.0f

    .line 85
    invoke-static {v0, v0, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 14

    .line 89
    sget-wide v0, Lnet/minecraft/client/Minecraft;->H:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v8, 0xb71

    if-lez v0, :cond_41

    .line 90
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 91
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 92
    invoke-static {}, Lu;->a()V

    .line 93
    invoke-direct {p0}, Lvu;->b()V

    .line 99
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    const-string v4, "Minecraft Beta 1.7.3   Unlicensed Copy :("

    const/4 v5, 0x2

    const v6, 0xffffff

    invoke-virtual {v0, v4, v5, v5, v6}, Lsj;->a(Ljava/lang/String;III)V

    .line 100
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    const/16 v4, 0xb

    const-string v9, "(Or logged in from another location)"

    invoke-virtual {v0, v9, v5, v4, v6}, Lsj;->a(Ljava/lang/String;III)V

    .line 101
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    const/16 v4, 0x14

    const-string v9, "Purchase at minecraft.net"

    invoke-virtual {v0, v9, v5, v4, v6}, Lsj;->a(Ljava/lang/String;III)V

    .line 103
    invoke-static {v7}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 104
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 106
    :cond_41
    iget-object v0, p0, Lvu;->f:Lny;

    if-eqz v0, :cond_131

    iget-wide v4, p0, Lvu;->g:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_4d

    goto/16 :goto_131

    .line 108
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v9, p0, Lvu;->g:J

    sub-long/2addr v4, v9

    long-to-double v4, v4

    const-wide v9, 0x40a7700000000000L    # 3000.0

    div-double/2addr v4, v9

    .line 109
    iget-boolean v0, p0, Lvu;->i:Z

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_64

    goto :goto_71

    :cond_64
    if-nez v0, :cond_71

    cmpg-double v0, v4, v9

    if-ltz v0, :cond_6e

    cmpl-double v0, v4, v11

    if-lez v0, :cond_71

    .line 111
    :cond_6e
    iput-wide v2, p0, Lvu;->g:J

    return-void

    .line 116
    :cond_71
    :goto_71
    invoke-direct {p0}, Lvu;->b()V

    .line 117
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 118
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    cmpl-double v0, v4, v11

    if-lez v0, :cond_83

    sub-double v4, v2, v4

    :cond_83
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v2

    sub-double/2addr v11, v4

    cmpg-double v0, v11, v9

    if-gez v0, :cond_8c

    goto :goto_8d

    :cond_8c
    move-wide v9, v11

    :goto_8d
    mul-double/2addr v9, v9

    mul-double/2addr v9, v9

    .line 128
    iget v0, p0, Lvu;->b:I

    add-int/lit16 v11, v0, -0xa0

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    mul-double/2addr v9, v2

    double-to-int v0, v9

    rsub-int/lit8 v9, v0, 0x0

    .line 130
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/achievement/bg.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 131
    invoke-static {v10, v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v1, 0xde1

    .line 132
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 133
    invoke-static {v1, v0}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/16 v12, 0xb50

    .line 134
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v3, 0x60

    const/16 v4, 0xca

    const/16 v5, 0xa0

    const/16 v6, 0x20

    move-object v0, p0

    move v1, v11

    move v2, v9

    .line 136
    invoke-virtual/range {v0 .. v6}, Lvu;->b(IIIIII)V

    .line 138
    iget-boolean v0, p0, Lvu;->i:Z

    if-eqz v0, :cond_d8

    .line 139
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v2, p0, Lvu;->e:Ljava/lang/String;

    add-int/lit8 v3, v11, 0x1e

    add-int/lit8 v4, v9, 0x7

    const/16 v5, 0x78

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lsj;->a(Ljava/lang/String;IIII)V

    goto :goto_f3

    .line 141
    :cond_d8
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v1, p0, Lvu;->d:Ljava/lang/String;

    add-int/lit8 v2, v11, 0x1e

    add-int/lit8 v3, v9, 0x7

    const/16 v4, -0x100

    invoke-virtual {v0, v1, v2, v3, v4}, Lsj;->b(Ljava/lang/String;III)V

    .line 142
    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v1, p0, Lvu;->e:Ljava/lang/String;

    add-int/lit8 v3, v9, 0x12

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsj;->b(Ljava/lang/String;III)V

    .line 145
    :goto_f3
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    .line 146
    invoke-static {v0, v10, v1, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 147
    invoke-static {}, Lu;->b()V

    .line 148
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 149
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const v0, 0x803a    # 4.5999E-41f

    .line 150
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0xb57

    .line 151
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 153
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 154
    iget-object v1, p0, Lvu;->h:Lbb;

    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v0, p0, Lvu;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v0, p0, Lvu;->f:Lny;

    iget-object v4, v0, Lny;->d:Liz;

    add-int/lit8 v5, v11, 0x8

    add-int/lit8 v6, v9, 0x8

    invoke-virtual/range {v1 .. v6}, Lbb;->a(Lsj;Lji;Liz;II)V

    .line 155
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 157
    invoke-static {v7}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 158
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    :cond_131
    :goto_131
    return-void
.end method

.method public a(Lny;)V
    .registers 4

    const-string v0, "achievement.get"

    .line 49
    invoke-static {v0}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvu;->d:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lny;->f:Ljava/lang/String;

    iput-object v0, p0, Lvu;->e:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvu;->g:J

    .line 52
    iput-object p1, p0, Lvu;->f:Lny;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lvu;->i:Z

    return-void
.end method

.method public b(Lny;)V
    .registers 6

    .line 57
    iget-object v0, p1, Lny;->f:Ljava/lang/String;

    iput-object v0, p0, Lvu;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lny;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvu;->e:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x9c4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lvu;->g:J

    .line 61
    iput-object p1, p0, Lvu;->f:Lny;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lvu;->i:Z

    return-void
.end method
