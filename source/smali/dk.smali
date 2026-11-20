###### Class defpackage.dk (dk)
.class public Ldk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static D:Lnw;

.field public static b:I


# instance fields
.field public A:Z

.field public B:Ljava/util/List;

.field private C:I

.field private E:Z

.field private F:Ljava/util/List;

.field public a:Lfd;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:[Z

.field public q:I

.field public r:I

.field public s:I

.field public t:F

.field public u:Z

.field public v:Leq;

.field public w:I

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-object v0, Lnw;->a:Lnw;

    sput-object v0, Ldk;->D:Lnw;

    const/4 v0, 0x0

    .line 36
    sput v0, Ldk;->b:I

    return-void
.end method

.method public constructor <init>(Lfd;Ljava/util/List;IIIII)V
    .registers 10

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Ldk;->C:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ldk;->o:Z

    const/4 v1, 0x2

    new-array v1, v1, [Z

    .line 44
    iput-object v1, p0, Ldk;->p:[Z

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Ldk;->x:Z

    .line 55
    iput-boolean v0, p0, Ldk;->E:Z

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldk;->B:Ljava/util/List;

    .line 61
    iput-object p1, p0, Ldk;->a:Lfd;

    .line 62
    iput-object p2, p0, Ldk;->F:Ljava/util/List;

    .line 64
    iput p6, p0, Ldk;->h:I

    iput p6, p0, Ldk;->g:I

    iput p6, p0, Ldk;->f:I

    mul-int p1, p6, p6

    mul-int p2, p6, p6

    add-int/2addr p1, p2

    mul-int/2addr p6, p6

    add-int/2addr p1, p6

    int-to-float p1, p1

    .line 65
    invoke-static {p1}, Lin;->c(F)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Ldk;->t:F

    .line 66
    iput p7, p0, Ldk;->C:I

    const/16 p1, -0x3e7

    .line 68
    iput p1, p0, Ldk;->c:I

    .line 69
    invoke-virtual {p0, p3, p4, p5}, Ldk;->a(III)V

    .line 71
    iput-boolean v0, p0, Ldk;->u:Z

    return-void
.end method

.method private g()V
    .registers 4

    .line 102
    iget v0, p0, Ldk;->l:I

    int-to-float v0, v0

    iget v1, p0, Ldk;->m:I

    int-to-float v1, v1

    iget v2, p0, Ldk;->n:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    return-void
.end method


# virtual methods
.method public a(Lsn;)F
    .registers 8

    .line 208
    iget-wide v0, p1, Lsn;->aM:D

    iget v2, p0, Ldk;->q:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 209
    iget-wide v1, p1, Lsn;->aN:D

    iget v3, p0, Ldk;->r:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 210
    iget-wide v2, p1, Lsn;->aO:D

    iget p1, p0, Ldk;->s:I

    int-to-double v4, p1

    sub-double/2addr v2, v4

    double-to-float p1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public a(I)I
    .registers 4

    .line 235
    iget-boolean v0, p0, Ldk;->o:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 236
    :cond_6
    iget-object v0, p0, Ldk;->p:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_10

    iget v0, p0, Ldk;->C:I

    add-int/2addr v0, p1

    return v0

    :cond_10
    return v1
.end method

.method public a()V
    .registers 35

    move-object/from16 v0, p0

    .line 106
    iget-boolean v1, v0, Ldk;->u:Z

    if-nez v1, :cond_7

    return-void

    .line 107
    :cond_7
    sget v1, Ldk;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Ldk;->b:I

    .line 109
    iget v1, v0, Ldk;->c:I

    .line 110
    iget v3, v0, Ldk;->d:I

    .line 111
    iget v4, v0, Ldk;->e:I

    .line 112
    iget v5, v0, Ldk;->f:I

    add-int/2addr v5, v1

    .line 113
    iget v6, v0, Ldk;->g:I

    add-int/2addr v6, v3

    .line 114
    iget v7, v0, Ldk;->h:I

    add-int/2addr v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_1e
    const/4 v10, 0x2

    if-ge v9, v10, :cond_28

    .line 116
    iget-object v10, v0, Ldk;->p:[Z

    aput-boolean v2, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 119
    :cond_28
    sput-boolean v8, Llm;->a:Z

    .line 121
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 122
    iget-object v11, v0, Ldk;->B:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v11, v0, Ldk;->B:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 129
    new-instance v11, Lew;

    iget-object v13, v0, Ldk;->a:Lfd;

    add-int/lit8 v14, v1, -0x1

    add-int/lit8 v15, v3, -0x1

    add-int/lit8 v16, v4, -0x1

    add-int/lit8 v17, v5, 0x1

    add-int/lit8 v18, v6, 0x1

    add-int/lit8 v19, v7, 0x1

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Lew;-><init>(Lfd;IIIIII)V

    .line 130
    new-instance v12, Lcv;

    invoke-direct {v12, v11}, Lcv;-><init>(Lxp;)V

    move v13, v8

    :goto_53
    if-ge v13, v10, :cond_192

    move v14, v3

    move v15, v8

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_5b
    if-ge v14, v6, :cond_14c

    move v10, v4

    :goto_5e
    if-ge v10, v7, :cond_139

    move v2, v1

    :goto_61
    if-ge v2, v5, :cond_127

    .line 146
    invoke-interface {v11, v2, v14, v10}, Lxp;->a(III)I

    move-result v20

    if-lez v20, :cond_10a

    if-nez v15, :cond_cf

    .line 151
    iget v15, v0, Ldk;->C:I

    add-int/2addr v15, v13

    const/16 v8, 0x1300

    invoke-static {v15, v8}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    .line 152
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 153
    invoke-direct/range {p0 .. p0}, Ldk;->g()V

    .line 155
    iget v8, v0, Ldk;->h:I

    neg-int v15, v8

    int-to-float v15, v15

    const/high16 v21, 0x40000000    # 2.0f

    div-float v15, v15, v21

    move/from16 v22, v1

    iget v1, v0, Ldk;->g:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v21

    neg-int v8, v8

    int-to-float v8, v8

    div-float v8, v8, v21

    invoke-static {v15, v1, v8}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v1, 0x3f800008    # 1.000001f

    .line 156
    invoke-static {v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 157
    iget v1, v0, Ldk;->h:I

    int-to-float v8, v1

    div-float v8, v8, v21

    iget v15, v0, Ldk;->g:I

    int-to-float v15, v15

    div-float v15, v15, v21

    int-to-float v1, v1

    div-float v1, v1, v21

    invoke-static {v8, v15, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 158
    sget-object v1, Ldk;->D:Lnw;

    invoke-virtual {v1}, Lnw;->b()V

    .line 159
    sget-object v23, Ldk;->D:Lnw;

    iget v1, v0, Ldk;->c:I

    neg-int v1, v1

    move v8, v3

    move/from16 v21, v4

    int-to-double v3, v1

    iget v1, v0, Ldk;->d:I

    neg-int v1, v1

    move/from16 v30, v5

    move/from16 v31, v6

    int-to-double v5, v1

    iget v1, v0, Ldk;->e:I

    neg-int v1, v1

    move/from16 v32, v7

    move/from16 v33, v8

    int-to-double v7, v1

    move-wide/from16 v24, v3

    move-wide/from16 v26, v5

    move-wide/from16 v28, v7

    invoke-virtual/range {v23 .. v29}, Lnw;->b(DDD)V

    const/4 v15, 0x1

    goto :goto_db

    :cond_cf
    move/from16 v22, v1

    move/from16 v33, v3

    move/from16 v21, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    :goto_db
    if-nez v13, :cond_f4

    .line 162
    sget-object v1, Luu;->p:[Z

    aget-boolean v1, v1, v20

    if-eqz v1, :cond_f4

    .line 163
    invoke-interface {v11, v2, v14, v10}, Lxp;->b(III)Low;

    move-result-object v1

    .line 164
    sget-object v3, Lll;->a:Lll;

    invoke-virtual {v3, v1}, Lll;->a(Low;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 165
    iget-object v3, v0, Ldk;->B:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_f4
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v20

    .line 169
    invoke-virtual {v1}, Luu;->b_()I

    move-result v3

    if-eq v3, v13, :cond_101

    const/16 v17, 0x1

    goto :goto_116

    :cond_101
    if-ne v3, v13, :cond_116

    .line 173
    invoke-virtual {v12, v1, v2, v14, v10}, Lcv;->b(Luu;III)Z

    move-result v1

    or-int v16, v16, v1

    goto :goto_116

    :cond_10a
    move/from16 v22, v1

    move/from16 v33, v3

    move/from16 v21, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    :cond_116
    :goto_116
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v21

    move/from16 v1, v22

    move/from16 v5, v30

    move/from16 v6, v31

    move/from16 v7, v32

    move/from16 v3, v33

    const/4 v8, 0x0

    goto/16 :goto_61

    :cond_127
    move/from16 v22, v1

    move/from16 v33, v3

    move/from16 v21, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5e

    :cond_139
    move/from16 v22, v1

    move/from16 v33, v3

    move/from16 v21, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x2

    goto/16 :goto_5b

    :cond_14c
    move/from16 v22, v1

    move/from16 v33, v3

    move/from16 v21, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    if-eqz v15, :cond_171

    .line 180
    sget-object v1, Ldk;->D:Lnw;

    invoke-virtual {v1}, Lnw;->a()V

    .line 181
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 182
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    .line 183
    sget-object v2, Ldk;->D:Lnw;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lnw;->b(DDD)V

    goto :goto_173

    :cond_171
    const/16 v16, 0x0

    :goto_173
    if-eqz v16, :cond_17b

    .line 187
    iget-object v1, v0, Ldk;->p:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v13

    goto :goto_17c

    :cond_17b
    const/4 v2, 0x0

    :goto_17c
    if-nez v17, :cond_17f

    goto :goto_192

    :cond_17f
    add-int/lit8 v13, v13, 0x1

    move v8, v2

    move/from16 v4, v21

    move/from16 v1, v22

    move/from16 v5, v30

    move/from16 v6, v31

    move/from16 v7, v32

    move/from16 v3, v33

    const/4 v2, 0x1

    const/4 v10, 0x2

    goto/16 :goto_53

    .line 194
    :cond_192
    :goto_192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 195
    iget-object v2, v0, Ldk;->B:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-interface {v1, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v2, v0, Ldk;->F:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v1, v0, Ldk;->B:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v1, v0, Ldk;->F:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 202
    sget-boolean v1, Llm;->a:Z

    iput-boolean v1, v0, Ldk;->A:Z

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, v0, Ldk;->E:Z

    return-void
.end method

.method public a(III)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 75
    iget v4, v0, Ldk;->c:I

    if-ne v1, v4, :cond_15

    iget v4, v0, Ldk;->d:I

    if-ne v2, v4, :cond_15

    iget v4, v0, Ldk;->e:I

    if-ne v3, v4, :cond_15

    return-void

    .line 77
    :cond_15
    invoke-virtual/range {p0 .. p0}, Ldk;->b()V

    .line 78
    iput v1, v0, Ldk;->c:I

    .line 79
    iput v2, v0, Ldk;->d:I

    .line 80
    iput v3, v0, Ldk;->e:I

    .line 81
    iget v4, v0, Ldk;->f:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v1

    iput v5, v0, Ldk;->q:I

    .line 82
    iget v5, v0, Ldk;->g:I

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v2

    iput v6, v0, Ldk;->r:I

    .line 83
    iget v6, v0, Ldk;->h:I

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v3

    iput v7, v0, Ldk;->s:I

    and-int/lit16 v7, v1, 0x3ff

    .line 85
    iput v7, v0, Ldk;->l:I

    .line 86
    iput v2, v0, Ldk;->m:I

    and-int/lit16 v8, v3, 0x3ff

    .line 87
    iput v8, v0, Ldk;->n:I

    sub-int v7, v1, v7

    .line 88
    iput v7, v0, Ldk;->i:I

    sub-int v7, v2, v2

    .line 89
    iput v7, v0, Ldk;->j:I

    sub-int v7, v3, v8

    .line 90
    iput v7, v0, Ldk;->k:I

    int-to-float v7, v1

    const/high16 v8, 0x40c00000    # 6.0f

    sub-float/2addr v7, v8

    float-to-double v9, v7

    int-to-float v7, v2

    sub-float/2addr v7, v8

    float-to-double v11, v7

    int-to-float v7, v3

    sub-float/2addr v7, v8

    float-to-double v13, v7

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v1, v8

    move-wide v15, v9

    float-to-double v8, v1

    add-int v1, v2, v5

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    add-float/2addr v1, v2

    float-to-double v4, v1

    add-int v1, v3, v6

    int-to-float v1, v1

    add-float/2addr v1, v2

    move-wide v2, v4

    float-to-double v5, v1

    move-wide v7, v8

    move-wide v9, v15

    move-wide v15, v7

    move-wide/from16 v17, v2

    move-wide/from16 v19, v5

    .line 93
    invoke-static/range {v9 .. v20}, Leq;->a(DDDDDD)Leq;

    move-result-object v1

    iput-object v1, v0, Ldk;->v:Leq;

    .line 95
    iget v1, v0, Ldk;->C:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1300

    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    .line 96
    iget v1, v0, Ldk;->l:I

    int-to-float v2, v1

    const/high16 v3, 0x40c00000    # 6.0f

    sub-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, v0, Ldk;->m:I

    int-to-float v6, v2

    sub-float/2addr v6, v3

    float-to-double v6, v6

    iget v8, v0, Ldk;->n:I

    int-to-float v9, v8

    sub-float/2addr v9, v3

    float-to-double v9, v9

    iget v11, v0, Ldk;->f:I

    add-int/2addr v1, v11

    int-to-float v1, v1

    add-float/2addr v1, v3

    float-to-double v11, v1

    iget v1, v0, Ldk;->g:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    add-float/2addr v1, v3

    float-to-double v1, v1

    iget v13, v0, Ldk;->h:I

    add-int/2addr v8, v13

    int-to-float v8, v8

    add-float/2addr v8, v3

    float-to-double v14, v8

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v1

    invoke-static/range {v4 .. v15}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    invoke-static {v1}, Lbb;->a(Leq;)V

    .line 97
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Ldk;->f()V

    return-void
.end method

.method public a(Lyn;)V
    .registers 3

    .line 247
    iget-object v0, p0, Ldk;->v:Leq;

    invoke-interface {p1, v0}, Lyn;->a(Leq;)Z

    move-result p1

    iput-boolean p1, p0, Ldk;->o:Z

    return-void
.end method

.method public b()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    .line 223
    iget-object v2, p0, Ldk;->p:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 225
    :cond_d
    iput-boolean v0, p0, Ldk;->o:Z

    .line 226
    iput-boolean v0, p0, Ldk;->E:Z

    return-void
.end method

.method public c()V
    .registers 2

    .line 230
    invoke-virtual {p0}, Ldk;->b()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Ldk;->a:Lfd;

    return-void
.end method

.method public d()V
    .registers 2

    .line 251
    iget v0, p0, Ldk;->C:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    return-void
.end method

.method public e()Z
    .registers 4

    .line 255
    iget-boolean v0, p0, Ldk;->E:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 256
    :cond_6
    iget-object v0, p0, Ldk;->p:[Z

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Ldk;->u:Z

    return-void
.end method
