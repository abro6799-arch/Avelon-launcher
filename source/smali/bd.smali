###### Class defpackage.bd (bd)
.class public Lbd;
.super Lmcshim/awt/Canvas;
.source "SourceFile"

# interfaces
.implements Lmcshim/awt/event/KeyListener;
.implements Lmcshim/awt/event/MouseListener;
.implements Lmcshim/awt/event/MouseMotionListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Lfd;

.field private e:Ljava/io/File;

.field private f:Z

.field private g:Ljava/util/List;

.field private h:[[Lre;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 77
    invoke-direct {p0}, Lmcshim/awt/Canvas;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lbd;->a:I

    const/4 v1, 0x2

    .line 26
    iput v1, p0, Lbd;->b:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lbd;->c:Z

    .line 32
    iput-boolean v1, p0, Lbd;->f:Z

    .line 34
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lbd;->g:Ljava/util/List;

    const/16 v2, 0x40

    .line 35
    filled-new-array {v2, v2}, [I

    move-result-object v3

    const-class v4, Lre;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lre;

    iput-object v3, p0, Lbd;->h:[[Lre;

    .line 78
    invoke-virtual {p0}, Lbd;->a()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lbd;->e:Ljava/io/File;

    move v3, v0

    :goto_30
    if-ge v3, v2, :cond_47

    move v4, v0

    :goto_33
    if-ge v4, v2, :cond_44

    .line 82
    iget-object v5, p0, Lbd;->h:[[Lre;

    aget-object v5, v5, v3

    new-instance v6, Lre;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v4}, Lre;-><init>(Lfd;II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 85
    :cond_47
    invoke-virtual {p0, p0}, Lbd;->addMouseListener(Lmcshim/awt/event/MouseListener;)V

    .line 86
    invoke-virtual {p0, p0}, Lbd;->addMouseMotionListener(Lmcshim/awt/event/MouseMotionListener;)V

    .line 87
    invoke-virtual {p0, p0}, Lbd;->addKeyListener(Lmcshim/awt/event/KeyListener;)V

    .line 88
    invoke-virtual {p0, v1}, Lbd;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0}, Lbd;->requestFocus()V

    .line 90
    sget-object v0, Lmcshim/awt/Color;->red:Lmcshim/awt/Color;

    invoke-virtual {p0, v0}, Lbd;->setBackground(Lmcshim/awt/Color;)V

    return-void
.end method

.method private a(II)Lre;
    .registers 6

    and-int/lit8 v0, p1, 0x3f

    and-int/lit8 v1, p2, 0x3f

    .line 147
    iget-object v2, p0, Lbd;->h:[[Lre;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    .line 148
    iget v1, v0, Lre;->c:I

    if-ne v1, p1, :cond_13

    iget v1, v0, Lre;->d:I

    if-ne v1, p2, :cond_13

    return-object v0

    .line 151
    :cond_13
    iget-object v1, p0, Lbd;->g:Ljava/util/List;

    monitor-enter v1

    .line 152
    :try_start_16
    iget-object v2, p0, Lbd;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_20

    .line 154
    invoke-virtual {v0, p1, p2}, Lre;->a(II)V

    return-object v0

    :catchall_20
    move-exception p1

    .line 153
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private a(I)V
    .registers 8

    .line 111
    iget-object v0, p0, Lbd;->g:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lbd;->d:Lfd;

    iput p1, v1, Lfd;->f:I

    .line 113
    iget-object p1, p0, Lbd;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    move v1, p1

    :goto_e
    const/16 v2, 0x40

    if-ge v1, v2, :cond_26

    move v3, p1

    :goto_13
    if-ge v3, v2, :cond_23

    .line 117
    iget-object v4, p0, Lbd;->h:[[Lre;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    iget-object v5, p0, Lbd;->d:Lfd;

    invoke-virtual {v4, v5, v1, v3}, Lre;->a(Lfd;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 119
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method static synthetic a(Lbd;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lbd;->f:Z

    return p0
.end method

.method private static e()Ljn;
    .registers 2

    const-string v0, "os.name"

    .line 67
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Ljn;->c:Ljn;

    return-object v0

    :cond_15
    const-string v1, "mac"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v0, Ljn;->d:Ljn;

    return-object v0

    :cond_20
    const-string v1, "solaris"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v0, Ljn;->b:Ljn;

    return-object v0

    :cond_2b
    const-string v1, "sunos"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v0, Ljn;->b:Ljn;

    return-object v0

    :cond_36
    const-string v1, "linux"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v0, Ljn;->a:Ljn;

    return-object v0

    :cond_41
    const-string v1, "unix"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Ljn;->a:Ljn;

    return-object v0

    .line 74
    :cond_4c
    sget-object v0, Ljn;->e:Ljn;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    .line 39
    iget-object v0, p0, Lbd;->e:Ljava/io/File;

    if-nez v0, :cond_c

    const-string v0, "minecraft"

    invoke-virtual {p0, v0}, Lbd;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lbd;->e:Ljava/io/File;

    .line 40
    :cond_c
    iget-object v0, p0, Lbd;->e:Ljava/io/File;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    const-string v0, "user.home"

    const-string v1, "."

    .line 44
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v2, Ltu;->a:[I

    invoke-static {}, Lbd;->e()Ljn;

    move-result-object v3

    invoke-virtual {v3}, Ljn;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x2f

    if-eq v2, v3, :cond_7e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4b

    const/4 v1, 0x4

    if-eq v2, v1, :cond_37

    .line 60
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 57
    :cond_37
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Library/Application Support/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    :cond_4b
    const-string v2, "APPDATA"

    .line 52
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_93

    .line 54
    :cond_69
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 49
    :cond_7e
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_92
    move-object v1, v2

    .line 62
    :goto_93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_b4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_a0

    goto :goto_b4

    :cond_a0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The working directory could not be created: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b4
    :goto_b4
    return-object v1
.end method

.method public a(Lmcshim/awt/Graphics2D;)V
    .registers 14

    .line 203
    iget v0, p0, Lbd;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbd;->a:I

    .line 205
    invoke-virtual {p1}, Lmcshim/awt/Graphics2D;->getTransform()Lmcshim/awt/geom/AffineTransform;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lbd;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lbd;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Lmcshim/awt/Graphics2D;->setClip(IIII)V

    .line 207
    sget-object v2, Lmcshim/awt/RenderingHints;->KEY_INTERPOLATION:Lmcshim/awt/RenderingHints$Key;

    sget-object v3, Lmcshim/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lmcshim/awt/Graphics2D;->setRenderingHint(Lmcshim/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lbd;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lbd;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Lmcshim/awt/Graphics2D;->translate(II)V

    .line 210
    iget v2, p0, Lbd;->b:I

    int-to-double v5, v2

    int-to-double v2, v2

    invoke-virtual {p1, v5, v6, v2, v3}, Lmcshim/awt/Graphics2D;->scale(DD)V

    .line 211
    iget v2, p0, Lbd;->i:I

    iget v3, p0, Lbd;->j:I

    invoke-virtual {p1, v2, v3}, Lmcshim/awt/Graphics2D;->translate(II)V

    .line 212
    iget-object v2, p0, Lbd;->d:Lfd;

    if-eqz v2, :cond_54

    .line 213
    invoke-virtual {v2}, Lfd;->u()Lbr;

    move-result-object v2

    .line 214
    iget v3, v2, Lbr;->a:I

    iget v5, v2, Lbr;->c:I

    add-int/2addr v3, v5

    neg-int v3, v3

    iget v5, v2, Lbr;->a:I

    neg-int v5, v5

    iget v2, v2, Lbr;->c:I

    add-int/2addr v5, v2

    neg-int v2, v5

    add-int/lit8 v2, v2, 0x40

    invoke-virtual {p1, v3, v2}, Lmcshim/awt/Graphics2D;->translate(II)V

    .line 216
    :cond_54
    invoke-virtual {p1}, Lmcshim/awt/Graphics2D;->getClipBounds()Lmcshim/awt/Rectangle;

    move-result-object v2

    .line 217
    new-instance v3, Lmcshim/awt/Color;

    const v5, -0xefefe0

    invoke-direct {v3, v5}, Lmcshim/awt/Color;-><init>(I)V

    invoke-virtual {p1, v3}, Lmcshim/awt/Graphics2D;->setColor(Lmcshim/awt/Color;)V

    .line 218
    iget v3, v2, Lmcshim/awt/Rectangle;->x:I

    iget v5, v2, Lmcshim/awt/Rectangle;->y:I

    iget v6, v2, Lmcshim/awt/Rectangle;->width:I

    iget v7, v2, Lmcshim/awt/Rectangle;->height:I

    invoke-virtual {p1, v3, v5, v6, v7}, Lmcshim/awt/Graphics2D;->fillRect(IIII)V

    .line 223
    iget v3, v2, Lmcshim/awt/Rectangle;->x:I

    div-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v3, v3, -0x3

    .line 224
    iget v5, v2, Lmcshim/awt/Rectangle;->x:I

    iget v6, v2, Lmcshim/awt/Rectangle;->width:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x10

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x3

    .line 225
    iget v6, v2, Lmcshim/awt/Rectangle;->y:I

    div-int/lit8 v6, v6, 0x10

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x6

    .line 226
    iget v7, v2, Lmcshim/awt/Rectangle;->y:I

    iget v2, v2, Lmcshim/awt/Rectangle;->height:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0x80

    div-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x6

    :goto_99
    if-gt v6, v7, :cond_df

    move v2, v3

    :goto_9c
    if-gt v2, v5, :cond_dc

    shr-int/lit8 v8, v6, 0x1

    sub-int v8, v2, v8

    add-int/lit8 v9, v6, 0x1

    shr-int/2addr v9, v1

    add-int/2addr v9, v2

    .line 232
    invoke-direct {p0, v8, v9}, Lbd;->a(II)Lre;

    move-result-object v8

    .line 233
    iget v9, p0, Lbd;->a:I

    iput v9, v8, Lre;->g:I

    .line 234
    iget-boolean v9, v8, Lre;->e:Z

    if-nez v9, :cond_be

    .line 235
    iget-boolean v9, v8, Lre;->h:Z

    if-nez v9, :cond_d9

    .line 236
    iput-boolean v1, v8, Lre;->h:Z

    .line 237
    iget-object v9, p0, Lbd;->g:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 240
    :cond_be
    iput-boolean v4, v8, Lre;->h:Z

    .line 241
    iget-boolean v9, v8, Lre;->f:Z

    if-nez v9, :cond_d9

    mul-int/lit8 v9, v2, 0x10

    mul-int/lit8 v9, v9, 0x2

    and-int/lit8 v10, v6, 0x1

    mul-int/lit8 v10, v10, 0x10

    add-int/2addr v9, v10

    mul-int/lit8 v10, v6, 0x10

    add-int/lit8 v10, v10, -0x80

    add-int/lit8 v10, v10, -0x10

    .line 245
    iget-object v8, v8, Lre;->a:Lmcshim/awt/image/BufferedImage;

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Lmcshim/awt/Graphics2D;->drawImage(Lmcshim/awt/Image;IILmcshim/awt/image/ImageObserver;)Z

    :cond_d9
    :goto_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    :cond_dc
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 251
    :cond_df
    iget-boolean v2, p0, Lbd;->c:Z

    if-eqz v2, :cond_125

    .line 252
    invoke-virtual {p1, v0}, Lmcshim/awt/Graphics2D;->setTransform(Lmcshim/awt/geom/AffineTransform;)V

    .line 253
    invoke-virtual {p0}, Lbd;->getHeight()I

    move-result v0

    const/16 v2, 0x20

    sub-int/2addr v0, v2

    const/4 v3, 0x4

    sub-int/2addr v0, v3

    .line 254
    new-instance v4, Lmcshim/awt/Color;

    const/high16 v5, -0x80000000

    invoke-direct {v4, v5, v1}, Lmcshim/awt/Color;-><init>(IZ)V

    invoke-virtual {p1, v4}, Lmcshim/awt/Graphics2D;->setColor(Lmcshim/awt/Color;)V

    .line 257
    invoke-virtual {p0}, Lbd;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lbd;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {p1, v3, v1, v4, v2}, Lmcshim/awt/Graphics2D;->fillRect(IIII)V

    .line 259
    sget-object v1, Lmcshim/awt/Color;->WHITE:Lmcshim/awt/Color;

    invoke-virtual {p1, v1}, Lmcshim/awt/Graphics2D;->setColor(Lmcshim/awt/Color;)V

    .line 268
    invoke-virtual {p0}, Lbd;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lmcshim/awt/Graphics2D;->getFontMetrics()Lmcshim/awt/FontMetrics;

    move-result-object v2

    const-string v3, "F1 - F5: load levels   |   0-9: Set time of day   |   Space: return to spawn   |   Double click: zoom   |   Escape: hide this text"

    invoke-virtual {v2, v3}, Lmcshim/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p1, v3, v1, v0}, Lmcshim/awt/Graphics2D;->drawString(Ljava/lang/String;II)V

    .line 271
    :cond_125
    invoke-virtual {p1}, Lmcshim/awt/Graphics2D;->dispose()V

    return-void
.end method

.method public b()V
    .registers 3

    .line 123
    new-instance v0, Ltx;

    invoke-direct {v0, p0}, Ltx;-><init>(Lbd;)V

    invoke-virtual {v0}, Ltx;->start()V

    const/4 v0, 0x0

    :goto_9
    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    .line 136
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lbd;->j:I

    iput v0, p0, Lbd;->i:I

    .line 95
    new-instance v1, Lfd;

    new-instance v2, Lfm;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lbd;->e:Ljava/io/File;

    const-string v5, "saves"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1, v0}, Lfm;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v1, v2, p1, v3, v4}, Lfd;-><init>(Lwt;Ljava/lang/String;J)V

    iput-object v1, p0, Lbd;->d:Lfd;

    .line 97
    iput v0, v1, Lfd;->f:I

    .line 99
    iget-object p1, p0, Lbd;->g:Ljava/util/List;

    monitor-enter p1

    .line 100
    :try_start_28
    iget-object v1, p0, Lbd;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_2e
    const/16 v2, 0x40

    if-ge v1, v2, :cond_46

    move v3, v0

    :goto_33
    if-ge v3, v2, :cond_43

    .line 104
    iget-object v4, p0, Lbd;->h:[[Lre;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    iget-object v5, p0, Lbd;->d:Lfd;

    invoke-virtual {v4, v5, v1, v3}, Lre;->a(Lfd;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 106
    :cond_46
    monitor-exit p1

    return-void

    :catchall_48
    move-exception v0

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lbd;->f:Z

    return-void
.end method

.method public d()V
    .registers 3

    .line 193
    invoke-virtual {p0}, Lbd;->getBufferStrategy()Lmcshim/awt/image/BufferStrategy;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x2

    .line 195
    invoke-virtual {p0, v0}, Lbd;->createBufferStrategy(I)V

    return-void

    .line 198
    :cond_b
    invoke-virtual {v0}, Lmcshim/awt/image/BufferStrategy;->getDrawGraphics()Lmcshim/awt/Graphics;

    move-result-object v1

    check-cast v1, Lmcshim/awt/Graphics2D;

    invoke-virtual {p0, v1}, Lbd;->a(Lmcshim/awt/Graphics2D;)V

    .line 199
    invoke-virtual {v0}, Lmcshim/awt/image/BufferStrategy;->show()V

    return-void
.end method

.method public keyPressed(Lmcshim/awt/event/KeyEvent;)V
    .registers 6

    .line 327
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_d

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 328
    :cond_d
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1a

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 329
    :cond_1a
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_27

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 330
    :cond_27
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_33

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 331
    :cond_33
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_3f

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 332
    :cond_3f
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_4b

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 333
    :cond_4b
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_57

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 334
    :cond_57
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_63

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbd;->a(I)V

    .line 335
    :cond_63
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x38

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6f

    invoke-direct {p0, v2}, Lbd;->a(I)V

    .line 336
    :cond_6f
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x39

    const/4 v3, 0x0

    if-ne v0, v1, :cond_7b

    invoke-direct {p0, v3}, Lbd;->a(I)V

    .line 338
    :cond_7b
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_88

    const-string v0, "World1"

    invoke-virtual {p0, v0}, Lbd;->b(Ljava/lang/String;)V

    .line 339
    :cond_88
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x71

    if-ne v0, v1, :cond_95

    const-string v0, "World2"

    invoke-virtual {p0, v0}, Lbd;->b(Ljava/lang/String;)V

    .line 340
    :cond_95
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_a2

    const-string v0, "World3"

    invoke-virtual {p0, v0}, Lbd;->b(Ljava/lang/String;)V

    .line 341
    :cond_a2
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_af

    const-string v0, "World4"

    invoke-virtual {p0, v0}, Lbd;->b(Ljava/lang/String;)V

    .line 342
    :cond_af
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_bc

    const-string v0, "World5"

    invoke-virtual {p0, v0}, Lbd;->b(Ljava/lang/String;)V

    .line 344
    :cond_bc
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_c8

    iput v3, p0, Lbd;->j:I

    iput v3, p0, Lbd;->i:I

    .line 345
    :cond_c8
    invoke-virtual {p1}, Lmcshim/awt/event/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_d5

    iget-boolean p1, p0, Lbd;->c:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lbd;->c:Z

    .line 346
    :cond_d5
    invoke-virtual {p0}, Lbd;->repaint()V

    return-void
.end method

.method public keyReleased(Lmcshim/awt/event/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public keyTyped(Lmcshim/awt/event/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public mouseClicked(Lmcshim/awt/event/MouseEvent;)V
    .registers 3

    .line 304
    invoke-virtual {p1}, Lmcshim/awt/event/MouseEvent;->getClickCount()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 305
    iget p1, p0, Lbd;->b:I

    rsub-int/lit8 p1, p1, 0x3

    iput p1, p0, Lbd;->b:I

    .line 306
    invoke-virtual {p0}, Lbd;->repaint()V

    :cond_10
    return-void
.end method

.method public mouseDragged(Lmcshim/awt/event/MouseEvent;)V
    .registers 5

    .line 291
    invoke-virtual {p1}, Lmcshim/awt/event/MouseEvent;->getX()I

    move-result v0

    iget v1, p0, Lbd;->b:I

    div-int/2addr v0, v1

    .line 292
    invoke-virtual {p1}, Lmcshim/awt/event/MouseEvent;->getY()I

    move-result p1

    iget v1, p0, Lbd;->b:I

    div-int/2addr p1, v1

    .line 293
    iget v1, p0, Lbd;->i:I

    iget v2, p0, Lbd;->k:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lbd;->i:I

    .line 294
    iget v1, p0, Lbd;->j:I

    iget v2, p0, Lbd;->l:I

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, p0, Lbd;->j:I

    .line 295
    iput v0, p0, Lbd;->k:I

    .line 296
    iput p1, p0, Lbd;->l:I

    .line 297
    invoke-virtual {p0}, Lbd;->repaint()V

    return-void
.end method

.method public mouseEntered(Lmcshim/awt/event/MouseEvent;)V
    .registers 2

    return-void
.end method

.method public mouseExited(Lmcshim/awt/event/MouseEvent;)V
    .registers 2

    return-void
.end method

.method public mouseMoved(Lmcshim/awt/event/MouseEvent;)V
    .registers 2

    return-void
.end method

.method public mousePressed(Lmcshim/awt/event/MouseEvent;)V
    .registers 4

    .line 317
    invoke-virtual {p1}, Lmcshim/awt/event/MouseEvent;->getX()I

    move-result v0

    iget v1, p0, Lbd;->b:I

    div-int/2addr v0, v1

    .line 318
    invoke-virtual {p1}, Lmcshim/awt/event/MouseEvent;->getY()I

    move-result p1

    iget v1, p0, Lbd;->b:I

    div-int/2addr p1, v1

    .line 319
    iput v0, p0, Lbd;->k:I

    .line 320
    iput p1, p0, Lbd;->l:I

    return-void
.end method

.method public mouseReleased(Lmcshim/awt/event/MouseEvent;)V
    .registers 2

    return-void
.end method

.method public paint(Lmcshim/awt/Graphics;)V
    .registers 2

    return-void
.end method

.method public run()V
    .registers 6

    .line 160
    new-instance v0, Lun;

    invoke-direct {v0}, Lun;-><init>()V

    .line 162
    :goto_5
    iget-boolean v1, p0, Lbd;->f:Z

    if-eqz v1, :cond_41

    .line 164
    iget-object v1, p0, Lbd;->g:Ljava/util/List;

    monitor-enter v1

    .line 165
    :try_start_c
    iget-object v2, p0, Lbd;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1e

    .line 166
    iget-object v2, p0, Lbd;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre;

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 168
    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_3e

    if-eqz v2, :cond_33

    .line 171
    iget v1, p0, Lbd;->a:I

    iget v4, v2, Lre;->g:I

    sub-int/2addr v1, v4

    const/4 v4, 0x2

    if-ge v1, v4, :cond_31

    .line 172
    invoke-virtual {v0, v2}, Lun;->a(Lre;)V

    .line 173
    invoke-virtual {p0}, Lbd;->repaint()V

    goto :goto_33

    .line 175
    :cond_31
    iput-boolean v3, v2, Lre;->h:Z

    :cond_33
    :goto_33
    const-wide/16 v1, 0x2

    .line 179
    :try_start_35
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_5

    :catch_39
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :catchall_3e
    move-exception v0

    .line 168
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    return-void
.end method

.method public update(Lmcshim/awt/Graphics;)V
    .registers 2

    return-void
.end method
