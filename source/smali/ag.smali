###### Class defpackage.ag (ag)
.class public Lag;
.super Lje;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lje;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lag;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcy;DDDF)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 22
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide/from16 v2, p2

    double-to-float v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    move-wide/from16 v6, p4

    double-to-float v8, v6

    move-wide/from16 v9, p6

    double-to-float v11, v9

    add-float/2addr v11, v5

    .line 23
    invoke-static {v4, v8, v11}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 25
    iget-object v4, v0, Lag;->b:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsn;

    if-nez v4, :cond_37

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcy;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljc;->a(Ljava/lang/String;Lfd;)Lsn;

    move-result-object v4

    .line 28
    iget-object v5, v0, Lag;->b:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcy;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    move-object v11, v4

    if-eqz v11, :cond_8b

    .line 31
    iget-object v4, v1, Lcy;->d:Lfd;

    invoke-virtual {v11, v4}, Lsn;->a(Lfd;)V

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    .line 33
    invoke-static {v5, v4, v5}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 34
    iget-wide v12, v1, Lcy;->c:D

    iget-wide v14, v1, Lcy;->b:D

    iget-wide v5, v1, Lcy;->c:D

    sub-double/2addr v14, v5

    move/from16 v8, p8

    float-to-double v5, v8

    mul-double/2addr v14, v5

    add-double/2addr v12, v14

    double-to-float v1, v12

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v1, v4, v5, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v1, -0x3e100000    # -30.0f

    .line 35
    invoke-static {v1, v5, v4, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v1, -0x41333333    # -0.4f

    .line 36
    invoke-static {v4, v1, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v1, 0x3ee00000    # 0.4375f

    .line 37
    invoke-static {v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v11

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move v8, v12

    move v9, v13

    .line 38
    invoke-virtual/range {v1 .. v9}, Lsn;->c(DDDFF)V

    .line 39
    sget-object v9, Lth;->a:Lth;

    const-wide/16 v1, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-object v10, v11

    move-wide v11, v1

    move/from16 v18, p8

    invoke-virtual/range {v9 .. v18}, Lth;->a(Lsn;DDDFF)V

    .line 41
    :cond_8b
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Low;DDDF)V
    .registers 9

    .line 17
    check-cast p1, Lcy;

    invoke-virtual/range {p0 .. p8}, Lag;->a(Lcy;DDDF)V

    return-void
.end method
