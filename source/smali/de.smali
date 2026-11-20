###### Class defpackage.de (de)
.class Lde;
.super Llg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lft;


# direct methods
.method public constructor <init>(Lft;)V
    .registers 9

    .line 111
    iput-object p1, p0, Lde;->a:Lft;

    .line 112
    invoke-static {p1}, Lft;->a(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object v1

    iget v2, p1, Lft;->c:I

    iget v3, p1, Lft;->d:I

    const/16 v4, 0x20

    iget p1, p1, Lft;->d:I

    add-int/lit8 p1, p1, -0x37

    add-int/lit8 v5, p1, 0x4

    const/16 v6, 0x24

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Llg;-><init>(Lnet/minecraft/client/Minecraft;IIIII)V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .line 117
    iget-object v0, p0, Lde;->a:Lft;

    invoke-static {v0}, Lft;->b(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object v0

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->D:Lik;

    invoke-virtual {v0}, Lik;->b()Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected a(IIIILnw;)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 146
    iget-object v3, v0, Lde;->a:Lft;

    invoke-static {v3}, Lft;->h(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object v3

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->D:Lik;

    invoke-virtual {v3}, Lik;->b()Ljava/util/List;

    move-result-object v3

    move/from16 v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li;

    .line 148
    iget-object v4, v0, Lde;->a:Lft;

    invoke-static {v4}, Lft;->i(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object v4

    invoke-virtual {v3, v4}, Li;->c(Lnet/minecraft/client/Minecraft;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 150
    invoke-static {v4, v4, v4, v4}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 151
    invoke-virtual/range {p5 .. p5}, Lnw;->b()V

    const v4, 0xffffff

    move-object/from16 v14, p5

    .line 152
    invoke-virtual {v14, v4}, Lnw;->b(I)V

    int-to-double v12, v1

    add-int v4, v2, p4

    int-to-double v10, v4

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-object/from16 v5, p5

    move-wide v6, v12

    move-wide v8, v10

    move-wide/from16 v21, v10

    move-wide v10, v15

    move-wide/from16 v23, v12

    move-wide/from16 v12, v17

    move-wide/from16 v14, v19

    .line 153
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v1, v1, 0x20

    int-to-double v14, v1

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide v6, v14

    move-wide/from16 v8, v21

    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    .line 154
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    int-to-double v14, v2

    const-wide/16 v16, 0x0

    move-wide/from16 v6, v18

    move-wide v8, v14

    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    .line 155
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v6, v23

    move-wide/from16 v8, v18

    .line 156
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 157
    invoke-virtual/range {p5 .. p5}, Lnw;->a()V

    .line 159
    iget-object v4, v0, Lde;->a:Lft;

    invoke-static {v4}, Lft;->j(Lft;)Lsj;

    move-result-object v5

    iget-object v6, v3, Li;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v8, v2, 0x1

    const v9, 0xffffff

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Lft;->b(Lsj;Ljava/lang/String;III)V

    .line 160
    iget-object v7, v0, Lde;->a:Lft;

    invoke-static {v7}, Lft;->k(Lft;)Lsj;

    move-result-object v8

    iget-object v9, v3, Li;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0xc

    const v12, 0x808080

    move v10, v1

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Lft;->b(Lsj;Ljava/lang/String;III)V

    .line 161
    iget-object v7, v0, Lde;->a:Lft;

    invoke-static {v7}, Lft;->l(Lft;)Lsj;

    move-result-object v8

    iget-object v9, v3, Li;->c:Ljava/lang/String;

    add-int/lit8 v11, v2, 0xa

    invoke-virtual/range {v7 .. v12}, Lft;->b(Lsj;Ljava/lang/String;III)V

    return-void
.end method

.method protected a(IZ)V
    .registers 4

    .line 123
    iget-object p2, p0, Lde;->a:Lft;

    invoke-static {p2}, Lft;->c(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object p2

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->D:Lik;

    invoke-virtual {p2}, Lik;->b()Ljava/util/List;

    move-result-object p2

    .line 124
    iget-object v0, p0, Lde;->a:Lft;

    invoke-static {v0}, Lft;->d(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object v0

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->D:Lik;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li;

    invoke-virtual {v0, p1}, Lik;->a(Li;)Z

    .line 125
    iget-object p1, p0, Lde;->a:Lft;

    invoke-static {p1}, Lft;->e(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object p1

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {p1}, Lji;->b()V

    return-void
.end method

.method protected b()I
    .registers 2

    .line 136
    invoke-virtual {p0}, Lde;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x24

    return v0
.end method

.method protected c()V
    .registers 2

    .line 141
    iget-object v0, p0, Lde;->a:Lft;

    invoke-virtual {v0}, Lft;->i()V

    return-void
.end method

.method protected c_(I)Z
    .registers 4

    .line 130
    iget-object v0, p0, Lde;->a:Lft;

    invoke-static {v0}, Lft;->f(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object v0

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->D:Lik;

    invoke-virtual {v0}, Lik;->b()Ljava/util/List;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lde;->a:Lft;

    invoke-static {v1}, Lft;->g(Lft;)Lnet/minecraft/client/Minecraft;

    move-result-object v1

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->D:Lik;

    iget-object v1, v1, Lik;->a:Li;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne v1, p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method
