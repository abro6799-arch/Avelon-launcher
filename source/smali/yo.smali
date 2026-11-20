###### Class defpackage.yo (yo)
.class public Lyo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lpaulscode/sound/SoundSystem;

.field private static g:Z


# instance fields
.field private b:Lhr;

.field private c:Lhr;

.field private d:Lhr;

.field private e:I

.field private f:Lkv;

.field private h:Ljava/util/Random;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lhr;

    invoke-direct {v0}, Lhr;-><init>()V

    iput-object v0, p0, Lyo;->b:Lhr;

    .line 19
    new-instance v0, Lhr;

    invoke-direct {v0}, Lhr;-><init>()V

    iput-object v0, p0, Lyo;->c:Lhr;

    .line 20
    new-instance v0, Lhr;

    invoke-direct {v0}, Lhr;-><init>()V

    iput-object v0, p0, Lyo;->d:Lhr;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lyo;->e:I

    .line 97
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lyo;->h:Ljava/util/Random;

    const/16 v1, 0x2ee0

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lyo;->i:I

    return-void
.end method

.method private d()V
    .registers 5

    .line 37
    :try_start_0
    iget-object v0, p0, Lyo;->f:Lkv;

    iget v0, v0, Lkv;->b:F

    .line 38
    iget-object v1, p0, Lyo;->f:Lkv;

    iget v1, v1, Lkv;->a:F

    .line 40
    iget-object v2, p0, Lyo;->f:Lkv;

    const/4 v3, 0x0

    iput v3, v2, Lkv;->b:F

    .line 41
    iget-object v2, p0, Lyo;->f:Lkv;

    iput v3, v2, Lkv;->a:F

    .line 42
    iget-object v2, p0, Lyo;->f:Lkv;

    invoke-virtual {v2}, Lkv;->b()V

    .line 44
    const-class v2, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;

    invoke-static {v2}, Lpaulscode/sound/SoundSystemConfig;->addLibrary(Ljava/lang/Class;)V

    const-string v2, "ogg"

    .line 46
    const-class v3, Lpaulscode/sound/codecs/CodecJOrbis;

    invoke-static {v2, v3}, Lpaulscode/sound/SoundSystemConfig;->setCodec(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "mus"

    .line 47
    const-class v3, Lio;

    invoke-static {v2, v3}, Lpaulscode/sound/SoundSystemConfig;->setCodec(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "wav"

    .line 48
    const-class v3, Lpaulscode/sound/codecs/CodecWav;

    invoke-static {v2, v3}, Lpaulscode/sound/SoundSystemConfig;->setCodec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    new-instance v2, Lpaulscode/sound/SoundSystem;

    invoke-direct {v2}, Lpaulscode/sound/SoundSystem;-><init>()V

    sput-object v2, Lyo;->a:Lpaulscode/sound/SoundSystem;

    .line 52
    iget-object v2, p0, Lyo;->f:Lkv;

    iput v0, v2, Lkv;->b:F

    .line 53
    iget-object v0, p0, Lyo;->f:Lkv;

    iput v1, v0, Lkv;->a:F

    .line 54
    iget-object v0, p0, Lyo;->f:Lkv;

    invoke-virtual {v0}, Lkv;->b()V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    goto :goto_50

    :catchall_45
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "error linking with the LibraryJavaSound plug-in"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_50
    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lyo;->g:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 65
    sget-boolean v0, Lyo;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    iget-object v0, p0, Lyo;->f:Lkv;

    iget v0, v0, Lkv;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    iget-object v0, p0, Lyo;->f:Lkv;

    iget v0, v0, Lkv;->a:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    .line 66
    :cond_15
    invoke-direct {p0}, Lyo;->d()V

    .line 69
    :cond_18
    sget-boolean v0, Lyo;->g:Z

    if-eqz v0, :cond_35

    .line 70
    iget-object v0, p0, Lyo;->f:Lkv;

    iget v0, v0, Lkv;->a:F

    cmpl-float v0, v0, v1

    const-string v1, "BgMusic"

    if-nez v0, :cond_2c

    .line 71
    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v0, v1}, Lpaulscode/sound/SoundSystem;->stop(Ljava/lang/String;)V

    goto :goto_35

    .line 73
    :cond_2c
    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    iget-object v2, p0, Lyo;->f:Lkv;

    iget v2, v2, Lkv;->a:F

    invoke-virtual {v0, v1, v2}, Lpaulscode/sound/SoundSystem;->setVolume(Ljava/lang/String;F)V

    :cond_35
    :goto_35
    return-void
.end method

.method public a(Ljava/lang/String;FF)V
    .registers 19

    move-object v0, p0

    .line 183
    sget-boolean v1, Lyo;->g:Z

    if-eqz v1, :cond_64

    iget-object v1, v0, Lyo;->f:Lkv;

    iget v1, v1, Lkv;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    goto :goto_64

    .line 185
    :cond_f
    iget-object v1, v0, Lyo;->b:Lhr;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lhr;->a(Ljava/lang/String;)Lbh;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 187
    iget v2, v0, Lyo;->e:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x100

    iput v2, v0, Lyo;->e:I

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sound_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lyo;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    sget-object v4, Lyo;->a:Lpaulscode/sound/SoundSystem;

    const/4 v5, 0x0

    iget-object v7, v1, Lbh;->b:Ljava/net/URL;

    iget-object v8, v1, Lbh;->a:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v2

    invoke-virtual/range {v4 .. v14}, Lpaulscode/sound/SoundSystem;->newSource(ZLjava/lang/String;Ljava/net/URL;Ljava/lang/String;ZFFFIF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v1

    if-lez v3, :cond_49

    goto :goto_4b

    :cond_49
    move/from16 v1, p2

    :goto_4b
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v1, v3

    .line 192
    sget-object v3, Lyo;->a:Lpaulscode/sound/SoundSystem;

    move/from16 v4, p3

    invoke-virtual {v3, v2, v4}, Lpaulscode/sound/SoundSystem;->setPitch(Ljava/lang/String;F)V

    .line 193
    sget-object v3, Lyo;->a:Lpaulscode/sound/SoundSystem;

    iget-object v4, v0, Lyo;->f:Lkv;

    iget v4, v4, Lkv;->b:F

    mul-float/2addr v1, v4

    invoke-virtual {v3, v2, v1}, Lpaulscode/sound/SoundSystem;->setVolume(Ljava/lang/String;F)V

    .line 194
    sget-object v1, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v1, v2}, Lpaulscode/sound/SoundSystem;->play(Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public a(Ljava/lang/String;FFFFF)V
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p1

    .line 144
    sget-boolean v2, Lyo;->g:Z

    if-eqz v2, :cond_66

    iget-object v2, v0, Lyo;->f:Lkv;

    iget v2, v2, Lkv;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    goto :goto_66

    :cond_11
    const-string v2, "streaming"

    .line 146
    sget-object v4, Lyo;->a:Lpaulscode/sound/SoundSystem;

    const-string v5, "streaming"

    invoke-virtual {v4, v5}, Lpaulscode/sound/SoundSystem;->playing(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 147
    sget-object v4, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v4, v5}, Lpaulscode/sound/SoundSystem;->stop(Ljava/lang/String;)V

    :cond_22
    if-nez v1, :cond_25

    return-void

    .line 153
    :cond_25
    iget-object v4, v0, Lyo;->c:Lhr;

    invoke-virtual {v4, v1}, Lhr;->a(Ljava/lang/String;)Lbh;

    move-result-object v1

    if-eqz v1, :cond_66

    cmpl-float v3, p5, v3

    if-lez v3, :cond_66

    .line 155
    sget-object v3, Lyo;->a:Lpaulscode/sound/SoundSystem;

    const-string v4, "BgMusic"

    invoke-virtual {v3, v4}, Lpaulscode/sound/SoundSystem;->playing(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 156
    sget-object v3, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v3, v4}, Lpaulscode/sound/SoundSystem;->stop(Ljava/lang/String;)V

    .line 159
    :cond_40
    sget-object v4, Lyo;->a:Lpaulscode/sound/SoundSystem;

    const/4 v5, 0x1

    iget-object v7, v1, Lbh;->b:Ljava/net/URL;

    iget-object v8, v1, Lbh;->a:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/high16 v14, 0x42800000    # 64.0f

    move-object v6, v2

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v14}, Lpaulscode/sound/SoundSystem;->newStreamingSource(ZLjava/lang/String;Ljava/net/URL;Ljava/lang/String;ZFFFIF)V

    .line 160
    sget-object v1, Lyo;->a:Lpaulscode/sound/SoundSystem;

    iget-object v3, v0, Lyo;->f:Lkv;

    iget v3, v3, Lkv;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lpaulscode/sound/SoundSystem;->setVolume(Ljava/lang/String;F)V

    .line 161
    sget-object v1, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v1, v2}, Lpaulscode/sound/SoundSystem;->play(Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 83
    iget-object v0, p0, Lyo;->b:Lhr;

    invoke-virtual {v0, p1, p2}, Lhr;->a(Ljava/lang/String;Ljava/io/File;)Lbh;

    return-void
.end method

.method public a(Lkv;)V
    .registers 4

    .line 27
    iget-object v0, p0, Lyo;->c:Lhr;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhr;->b:Z

    .line 28
    iput-object p1, p0, Lyo;->f:Lkv;

    .line 30
    sget-boolean v0, Lyo;->g:Z

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1a

    iget v0, p1, Lkv;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    iget p1, p1, Lkv;->a:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1d

    .line 31
    :cond_1a
    invoke-direct {p0}, Lyo;->d()V

    :cond_1d
    return-void
.end method

.method public a(Lls;F)V
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 119
    sget-boolean v2, Lyo;->g:Z

    if-eqz v2, :cond_64

    move-object/from16 v2, p0

    iget-object v3, v2, Lyo;->f:Lkv;

    iget v3, v3, Lkv;->b:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_14

    goto :goto_66

    :cond_14
    if-nez v0, :cond_17

    return-void

    .line 122
    :cond_17
    iget v3, v0, Lls;->aU:F

    iget v4, v0, Lls;->aS:F

    iget v5, v0, Lls;->aU:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 124
    iget-wide v4, v0, Lls;->aJ:D

    iget-wide v6, v0, Lls;->aM:D

    iget-wide v8, v0, Lls;->aJ:D

    sub-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 125
    iget-wide v6, v0, Lls;->aK:D

    iget-wide v10, v0, Lls;->aN:D

    iget-wide v12, v0, Lls;->aK:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    .line 126
    iget-wide v10, v0, Lls;->aL:D

    iget-wide v12, v0, Lls;->aO:D

    iget-wide v0, v0, Lls;->aL:D

    sub-double/2addr v12, v0

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    neg-float v0, v3

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    sub-float/2addr v0, v1

    .line 128
    invoke-static {v0}, Lin;->b(F)F

    move-result v1

    .line 129
    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    neg-float v13, v0

    const/4 v14, 0x0

    neg-float v15, v1

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    .line 139
    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    double-to-float v1, v4

    double-to-float v3, v6

    double-to-float v4, v10

    invoke-virtual {v0, v1, v3, v4}, Lpaulscode/sound/SoundSystem;->setListenerPosition(FFF)V

    .line 140
    sget-object v12, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual/range {v12 .. v18}, Lpaulscode/sound/SoundSystem;->setListenerOrientation(FFFFFF)V

    return-void

    :cond_64
    move-object/from16 v2, p0

    :goto_66
    return-void
.end method

.method public b()V
    .registers 2

    .line 79
    sget-boolean v0, Lyo;->g:Z

    if-eqz v0, :cond_9

    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v0}, Lpaulscode/sound/SoundSystem;->cleanup()V

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;FFFFF)V
    .registers 24

    move-object/from16 v0, p0

    .line 166
    sget-boolean v1, Lyo;->g:Z

    if-eqz v1, :cond_73

    iget-object v1, v0, Lyo;->f:Lkv;

    iget v1, v1, Lkv;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    goto :goto_73

    .line 168
    :cond_10
    iget-object v1, v0, Lyo;->b:Lhr;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lhr;->a(Ljava/lang/String;)Lbh;

    move-result-object v1

    if-eqz v1, :cond_73

    cmpl-float v2, p5, v2

    if-lez v2, :cond_73

    .line 170
    iget v2, v0, Lyo;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x100

    iput v2, v0, Lyo;->e:I

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sound_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lyo;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v16, p5, v4

    const/high16 v5, 0x41800000    # 16.0f

    if-lez v16, :cond_40

    mul-float v5, v5, p5

    :cond_40
    move v15, v5

    .line 174
    sget-object v5, Lyo;->a:Lpaulscode/sound/SoundSystem;

    if-lez v16, :cond_46

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    move v6, v3

    iget-object v8, v1, Lbh;->b:Ljava/net/URL;

    iget-object v9, v1, Lbh;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v14, 0x2

    move-object v7, v2

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v15}, Lpaulscode/sound/SoundSystem;->newSource(ZLjava/lang/String;Ljava/net/URL;Ljava/lang/String;ZFFFIF)V

    .line 175
    sget-object v1, Lyo;->a:Lpaulscode/sound/SoundSystem;

    move/from16 v3, p6

    invoke-virtual {v1, v2, v3}, Lpaulscode/sound/SoundSystem;->setPitch(Ljava/lang/String;F)V

    if-lez v16, :cond_62

    goto :goto_64

    :cond_62
    move/from16 v4, p5

    .line 177
    :goto_64
    sget-object v1, Lyo;->a:Lpaulscode/sound/SoundSystem;

    iget-object v3, v0, Lyo;->f:Lkv;

    iget v3, v3, Lkv;->b:F

    mul-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lpaulscode/sound/SoundSystem;->setVolume(Ljava/lang/String;F)V

    .line 178
    sget-object v1, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v1, v2}, Lpaulscode/sound/SoundSystem;->play(Ljava/lang/String;)V

    :cond_73
    :goto_73
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lyo;->c:Lhr;

    invoke-virtual {v0, p1, p2}, Lhr;->a(Ljava/lang/String;Ljava/io/File;)Lbh;

    return-void
.end method

.method public c()V
    .registers 6

    .line 101
    sget-boolean v0, Lyo;->g:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lyo;->f:Lkv;

    iget v0, v0, Lkv;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_56

    .line 103
    :cond_e
    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    const-string v1, "BgMusic"

    invoke-virtual {v0, v1}, Lpaulscode/sound/SoundSystem;->playing(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    const-string v2, "streaming"

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->playing(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 104
    iget v0, p0, Lyo;->i:I

    if-lez v0, :cond_2b

    add-int/lit8 v0, v0, -0x1

    .line 105
    iput v0, p0, Lyo;->i:I

    return-void

    .line 108
    :cond_2b
    iget-object v0, p0, Lyo;->d:Lhr;

    invoke-virtual {v0}, Lhr;->a()Lbh;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 110
    iget-object v2, p0, Lyo;->h:Ljava/util/Random;

    const/16 v3, 0x2ee0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lyo;->i:I

    .line 111
    sget-object v2, Lyo;->a:Lpaulscode/sound/SoundSystem;

    iget-object v3, v0, Lbh;->b:Ljava/net/URL;

    iget-object v0, v0, Lbh;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Lpaulscode/sound/SoundSystem;->backgroundMusic(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;Z)V

    .line 112
    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    iget-object v2, p0, Lyo;->f:Lkv;

    iget v2, v2, Lkv;->a:F

    invoke-virtual {v0, v1, v2}, Lpaulscode/sound/SoundSystem;->setVolume(Ljava/lang/String;F)V

    .line 113
    sget-object v0, Lyo;->a:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v0, v1}, Lpaulscode/sound/SoundSystem;->play(Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 92
    iget-object v0, p0, Lyo;->d:Lhr;

    invoke-virtual {v0, p1, p2}, Lhr;->a(Ljava/lang/String;Ljava/io/File;)Lbh;

    return-void
.end method
