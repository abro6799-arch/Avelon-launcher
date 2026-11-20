###### Class defpackage.tg (tg)
.class public Ltg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:Ljava/nio/IntBuffer;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 12
    invoke-static {v0}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Ltg;->g:Ljava/nio/IntBuffer;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Ltg;->h:Z

    .line 14
    iput-boolean v0, p0, Ltg;->i:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 39
    iget-boolean v0, p0, Ltg;->h:Z

    if-nez v0, :cond_5

    return-void

    .line 40
    :cond_5
    iget-boolean v0, p0, Ltg;->i:Z

    if-nez v0, :cond_11

    .line 41
    iget-object v0, p0, Ltg;->g:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Ltg;->i:Z

    .line 44
    :cond_11
    iget-object v0, p0, Ltg;->g:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_39

    .line 45
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 46
    iget v0, p0, Ltg;->a:I

    int-to-float v0, v0

    iget v1, p0, Ltg;->d:F

    sub-float/2addr v0, v1

    iget v1, p0, Ltg;->b:I

    int-to-float v1, v1

    iget v2, p0, Ltg;->e:F

    sub-float/2addr v1, v2

    iget v2, p0, Ltg;->c:I

    int-to-float v2, v2

    iget v3, p0, Ltg;->f:F

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 47
    iget-object v0, p0, Ltg;->g:Ljava/nio/IntBuffer;

    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glCallLists(Ljava/nio/IntBuffer;)V

    .line 48
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    :cond_39
    return-void
.end method

.method public a(I)V
    .registers 3

    .line 34
    iget-object v0, p0, Ltg;->g:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 35
    iget-object p1, p0, Ltg;->g:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Ltg;->a()V

    :cond_10
    return-void
.end method

.method public a(IIIDDD)V
    .registers 11

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Ltg;->h:Z

    .line 18
    iget-object v0, p0, Ltg;->g:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 19
    iput p1, p0, Ltg;->a:I

    .line 20
    iput p2, p0, Ltg;->b:I

    .line 21
    iput p3, p0, Ltg;->c:I

    double-to-float p1, p4

    .line 23
    iput p1, p0, Ltg;->d:F

    double-to-float p1, p6

    .line 24
    iput p1, p0, Ltg;->e:F

    double-to-float p1, p8

    .line 25
    iput p1, p0, Ltg;->f:F

    return-void
.end method

.method public a(III)Z
    .registers 6

    .line 29
    iget-boolean v0, p0, Ltg;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 30
    :cond_6
    iget v0, p0, Ltg;->a:I

    if-ne p1, v0, :cond_13

    iget p1, p0, Ltg;->b:I

    if-ne p2, p1, :cond_13

    iget p1, p0, Ltg;->c:I

    if-ne p3, p1, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Ltg;->h:Z

    .line 54
    iput-boolean v0, p0, Ltg;->i:Z

    return-void
.end method
