###### Class defpackage.fu (fu)
.class public Lfu;
.super Lda;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;


# instance fields
.field private i:F

.field private j:Ljava/lang/String;

.field private l:Lke;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lfu;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 33
    invoke-direct {p0}, Lda;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lfu;->i:F

    const-string v0, "missingno"

    .line 34
    iput-object v0, p0, Lfu;->j:Ljava/lang/String;

    .line 36
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-class v3, Lfu;

    const-string v4, "/title/splashes.txt"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 39
    :cond_27
    :goto_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 45
    :cond_3b
    sget-object v1, Lfu;->a:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfu;->j:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 51
    iget v0, p0, Lfu;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lfu;->i:F

    return-void
.end method

.method protected a(CI)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 15

    .line 115
    invoke-virtual {p0}, Lfu;->i()V

    .line 116
    sget-object v7, Lnw;->a:Lnw;

    .line 119
    iget v0, p0, Lfu;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v8, v0, -0x89

    .line 122
    iget-object v0, p0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/title/mclogo.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 123
    invoke-static {v9, v9, v9, v9}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    add-int/lit8 v1, v8, 0x0

    const/16 v10, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x9b

    const/16 v6, 0x2c

    move-object v0, p0

    move v2, v10

    .line 124
    invoke-virtual/range {v0 .. v6}, Lfu;->b(IIIIII)V

    add-int/lit16 v1, v8, 0x9b

    const/16 v4, 0x2d

    .line 125
    invoke-virtual/range {v0 .. v6}, Lfu;->b(IIIIII)V

    const v0, 0xffffff

    .line 126
    invoke-virtual {v7, v0}, Lnw;->b(I)V

    .line 127
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 128
    iget v0, p0, Lfu;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    const/high16 v1, 0x428c0000    # 70.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v0, -0x3e600000    # -20.0f

    .line 130
    invoke-static {v0, v2, v2, v9}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lin;->e(F)F

    move-result v0

    const v1, 0x3fe66666    # 1.8f

    sub-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    .line 133
    iget-object v0, p0, Lfu;->g:Lsj;

    iget-object v2, p0, Lfu;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 134
    invoke-static {v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 135
    iget-object v1, p0, Lfu;->g:Lsj;

    iget-object v2, p0, Lfu;->j:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x8

    const v5, 0xffff00

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfu;->a(Lsj;Ljava/lang/String;III)V

    .line 136
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 138
    iget-object v1, p0, Lfu;->g:Lsj;

    const-string v2, "Minecraft Beta 1.7.3"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const v5, 0x505050

    invoke-virtual/range {v0 .. v5}, Lfu;->b(Lsj;Ljava/lang/String;III)V

    const-string v2, "Copyright Mojang AB. Do not distribute."

    .line 140
    iget-object v1, p0, Lfu;->g:Lsj;

    iget v0, p0, Lfu;->c:I

    iget-object v3, p0, Lfu;->g:Lsj;

    invoke-virtual {v3, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x2

    iget v0, p0, Lfu;->d:I

    add-int/lit8 v4, v0, -0xa

    const v5, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfu;->b(Lsj;Ljava/lang/String;III)V

    .line 142
    invoke-super {p0, p1, p2, p3}, Lda;->a(IIF)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 5

    .line 97
    iget v0, p1, Lke;->f:I

    if-nez v0, :cond_12

    .line 98
    iget-object v0, p0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lco;

    iget-object v2, p0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-direct {v1, p0, v2}, Lco;-><init>(Lda;Lkv;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 100
    :cond_12
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 101
    iget-object v0, p0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lrq;

    invoke-direct {v1, p0}, Lrq;-><init>(Lda;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 103
    :cond_21
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 104
    iget-object v0, p0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Llq;

    invoke-direct {v1, p0}, Llq;-><init>(Lda;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 106
    :cond_30
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    .line 107
    iget-object v0, p0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lft;

    invoke-direct {v1, p0}, Lft;-><init>(Lda;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 109
    :cond_3f
    iget p1, p1, Lke;->f:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_49

    .line 110
    iget-object p1, p0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1}, Lnet/minecraft/client/Minecraft;->f()V

    :cond_49
    return-void
.end method

.method public b()V
    .registers 24

    move-object/from16 v0, p0

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x2

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0xb

    const/16 v6, 0xc

    const/4 v7, 0x5

    if-ne v3, v5, :cond_29

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_29

    const-string v1, "Happy birthday, ez!"

    .line 62
    iput-object v1, v0, Lfu;->j:Ljava/lang/String;

    goto :goto_61

    .line 63
    :cond_29
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    const/4 v5, 0x6

    if-ne v3, v5, :cond_3c

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_3c

    const-string v1, "Happy birthday, Notch!"

    .line 64
    iput-object v1, v0, Lfu;->j:Ljava/lang/String;

    goto :goto_61

    .line 65
    :cond_3c
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    if-ne v3, v6, :cond_50

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v5, 0x18

    if-ne v3, v5, :cond_50

    const-string v1, "Merry X-mas!"

    .line 66
    iput-object v1, v0, Lfu;->j:Ljava/lang/String;

    goto :goto_61

    .line 67
    :cond_50
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    if-ne v3, v4, :cond_61

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v4, :cond_61

    const-string v1, "Happy new year!"

    .line 68
    iput-object v1, v0, Lfu;->j:Ljava/lang/String;

    .line 71
    :cond_61
    :goto_61
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v1

    .line 74
    iget v3, v0, Lfu;->d:I

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x30

    .line 76
    iget-object v5, v0, Lfu;->e:Ljava/util/List;

    new-instance v7, Lke;

    iget v8, v0, Lfu;->c:I

    div-int/2addr v8, v2

    add-int/lit8 v8, v8, -0x64

    const-string v9, "menu.singleplayer"

    invoke-virtual {v1, v9}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v4, v8, v3, v9}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v4, v0, Lfu;->e:Ljava/util/List;

    new-instance v5, Lke;

    iget v7, v0, Lfu;->c:I

    div-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x64

    add-int/lit8 v8, v3, 0x18

    const-string v9, "menu.multiplayer"

    invoke-virtual {v1, v9}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v2, v7, v8, v9}, Lke;-><init>(IIILjava/lang/String;)V

    iput-object v5, v0, Lfu;->l:Lke;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v4, v0, Lfu;->e:Ljava/util/List;

    new-instance v5, Lke;

    iget v7, v0, Lfu;->c:I

    div-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x64

    add-int/lit8 v8, v3, 0x30

    const-string v9, "menu.mods"

    invoke-virtual {v1, v9}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-direct {v5, v10, v7, v8, v9}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v4, v0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    iget-boolean v4, v4, Lnet/minecraft/client/Minecraft;->n:Z

    const/4 v5, 0x0

    const-string v7, "menu.options"

    if-eqz v4, :cond_d0

    .line 81
    iget-object v4, v0, Lfu;->e:Ljava/util/List;

    new-instance v6, Lke;

    iget v8, v0, Lfu;->c:I

    div-int/2addr v8, v2

    add-int/lit8 v8, v8, -0x64

    add-int/lit8 v3, v3, 0x48

    invoke-virtual {v1, v7}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v5, v8, v3, v1}, Lke;-><init>(IIILjava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10c

    .line 83
    :cond_d0
    iget-object v4, v0, Lfu;->e:Ljava/util/List;

    new-instance v15, Lke;

    const/4 v9, 0x0

    iget v8, v0, Lfu;->c:I

    div-int/2addr v8, v2

    add-int/lit8 v10, v8, -0x64

    add-int/lit8 v3, v3, 0x48

    add-int/lit8 v19, v3, 0xc

    const/16 v12, 0x62

    const/16 v13, 0x14

    invoke-virtual {v1, v7}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v15

    move/from16 v11, v19

    invoke-direct/range {v8 .. v14}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v3, v0, Lfu;->e:Ljava/util/List;

    new-instance v4, Lke;

    const/16 v17, 0x4

    iget v6, v0, Lfu;->c:I

    div-int/2addr v6, v2

    add-int/lit8 v18, v6, 0x2

    const/16 v20, 0x62

    const/16 v21, 0x14

    const-string v2, "menu.quit"

    invoke-virtual {v1, v2}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Lke;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_10c
    iget-object v1, v0, Lfu;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->k:Lgr;

    if-nez v1, :cond_116

    .line 92
    iget-object v1, v0, Lfu;->l:Lke;

    iput-boolean v5, v1, Lke;->g:Z

    :cond_116
    return-void
.end method
