###### Class defpackage.po (po)
.class public Lpo;
.super Lje;
.source "SourceFile"


# instance fields
.field private b:Lrf;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lje;-><init>()V

    .line 10
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    iput-object v0, p0, Lpo;->b:Lrf;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Low;DDDF)V
    .registers 9

    .line 9
    check-cast p1, Lyk;

    invoke-virtual/range {p0 .. p8}, Lpo;->a(Lyk;DDDF)V

    return-void
.end method

.method public a(Lyk;DDDF)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lyk;->f()Luu;

    move-result-object v8

    .line 17
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 19
    sget-object v9, Luu;->aE:Luu;

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    if-ne v8, v9, :cond_3b

    double-to-float v2, v2

    add-float/2addr v2, v15

    double-to-float v3, v4

    add-float/2addr v3, v15

    double-to-float v4, v6

    add-float/2addr v4, v15

    .line 20
    invoke-static {v2, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 21
    invoke-virtual/range {p1 .. p1}, Lyk;->e()I

    move-result v2

    mul-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    neg-float v2, v2

    .line 22
    invoke-static {v2, v13, v14, v13}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 23
    iget-object v2, v0, Lpo;->b:Lrf;

    iget-object v2, v2, Lrf;->b:Lps;

    iput-boolean v11, v2, Lps;->h:Z

    goto :goto_69

    .line 25
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lyk;->e()I

    move-result v8

    if-ne v8, v12, :cond_44

    const/high16 v9, 0x43340000    # 180.0f

    goto :goto_45

    :cond_44
    move v9, v13

    :goto_45
    const/4 v11, 0x4

    if-ne v8, v11, :cond_4a

    const/high16 v9, 0x42b40000    # 90.0f

    :cond_4a
    if-ne v8, v10, :cond_4e

    const/high16 v9, -0x3d4c0000    # -90.0f

    :cond_4e
    double-to-float v2, v2

    add-float/2addr v2, v15

    double-to-float v3, v4

    add-float/2addr v3, v15

    double-to-float v4, v6

    add-float/2addr v4, v15

    .line 32
    invoke-static {v2, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    neg-float v2, v9

    .line 33
    invoke-static {v2, v13, v14, v13}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v2, -0x41600000    # -0.3125f

    const/high16 v3, -0x41200000    # -0.4375f

    .line 34
    invoke-static {v13, v2, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 36
    iget-object v2, v0, Lpo;->b:Lrf;

    iget-object v2, v2, Lrf;->b:Lps;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lps;->h:Z

    :goto_69
    const-string v2, "/item/sign.png"

    .line 39
    invoke-virtual {v0, v2}, Lpo;->a(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const v2, -0x40d55555

    const v3, 0x3f2aaaab

    .line 43
    invoke-static {v3, v2, v2}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 44
    iget-object v2, v0, Lpo;->b:Lrf;

    invoke-virtual {v2}, Lrf;->a()V

    .line 45
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lpo;->a()Lsj;

    move-result-object v2

    const v3, 0x3eaaaaab

    const v4, 0x3d3f258c

    .line 49
    invoke-static {v13, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v3, 0x3c360b62

    const v4, -0x43c9f49e

    .line 50
    invoke-static {v3, v4, v3}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 51
    invoke-static {v13, v13, v4}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    const/4 v3, 0x0

    .line 52
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/4 v3, 0x0

    .line 55
    :goto_a0
    iget-object v4, v1, Lyk;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_e6

    .line 56
    iget-object v4, v1, Lyk;->a:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 57
    iget v5, v1, Lyk;->b:I

    if-ne v3, v5, :cond_d2

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " <"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v2, v4}, Lsj;->a(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    div-int/2addr v5, v12

    mul-int/lit8 v6, v3, 0xa

    iget-object v7, v1, Lyk;->a:[Ljava/lang/String;

    array-length v7, v7

    mul-int/2addr v7, v10

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lsj;->b(Ljava/lang/String;III)V

    goto :goto_e3

    :cond_d2
    const/4 v7, 0x0

    .line 61
    invoke-virtual {v2, v4}, Lsj;->a(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    div-int/2addr v5, v12

    mul-int/lit8 v6, v3, 0xa

    iget-object v8, v1, Lyk;->a:[Ljava/lang/String;

    array-length v8, v8

    mul-int/2addr v8, v10

    sub-int/2addr v6, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Lsj;->b(Ljava/lang/String;III)V

    :goto_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :cond_e6
    const/4 v3, 0x1

    .line 64
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 65
    invoke-static {v14, v14, v14, v14}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 66
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method
