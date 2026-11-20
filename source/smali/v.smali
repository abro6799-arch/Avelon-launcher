###### Class defpackage.v (v)
.class public Lv;
.super Lgv;
.source "SourceFile"


# instance fields
.field protected a:Lfh;


# direct methods
.method public constructor <init>(Lfh;F)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lgv;-><init>(Lko;F)V

    .line 16
    iput-object p1, p0, Lv;->a:Lfh;

    return-void
.end method


# virtual methods
.method protected b(Lls;F)V
    .registers 11

    .line 20
    invoke-virtual {p1}, Lls;->r_()Liz;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 23
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 24
    iget-object v0, p0, Lv;->a:Lfh;

    iget-object v0, v0, Lfh;->d:Lps;

    const/high16 v1, 0x3d800000    # 0.0625f

    invoke-virtual {v0, v1}, Lps;->c(F)V

    const/high16 v0, -0x42800000    # -0.0625f

    const/high16 v2, 0x3ee00000    # 0.4375f

    .line 25
    invoke-static {v0, v2, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 27
    iget v0, p2, Liz;->c:I

    const/16 v1, 0x100

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x3ec00000    # 0.375f

    const/high16 v5, 0x3e400000    # 0.1875f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-ge v0, v1, :cond_4b

    sget-object v0, Luu;->m:[Luu;

    iget v1, p2, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Luu;->b()I

    move-result v0

    invoke-static {v0}, Lcv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/high16 v0, -0x41600000    # -0.3125f

    .line 29
    invoke-static {v7, v5, v0}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 31
    invoke-static {v3, v6, v7, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 32
    invoke-static {v2, v7, v6, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v0, -0x41400000    # -0.375f

    .line 33
    invoke-static {v4, v0, v4}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    goto :goto_81

    .line 34
    :cond_4b
    sget-object v0, Lgm;->c:[Lgm;

    iget v1, p2, Liz;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgm;->b()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 36
    invoke-static {v7, v5, v7}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v0, -0x40e00000    # -0.625f

    const/high16 v1, 0x3f200000    # 0.625f

    .line 37
    invoke-static {v1, v0, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v0, -0x3d380000    # -100.0f

    .line 38
    invoke-static {v0, v6, v7, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 39
    invoke-static {v2, v7, v6, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    goto :goto_81

    :cond_6a
    const/high16 v0, 0x3e800000    # 0.25f

    const/high16 v1, -0x41c00000    # -0.1875f

    .line 42
    invoke-static {v0, v5, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 43
    invoke-static {v4, v4, v4}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v0, 0x42700000    # 60.0f

    .line 44
    invoke-static {v0, v7, v7, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 45
    invoke-static {v0, v6, v7, v7}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 46
    invoke-static {v3, v7, v7, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 50
    :goto_81
    iget-object v0, p0, Lv;->b:Lth;

    iget-object v0, v0, Lth;->f:Lra;

    invoke-virtual {v0, p1, p2}, Lra;->a(Lls;Liz;)V

    .line 51
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    :cond_8b
    return-void
.end method
