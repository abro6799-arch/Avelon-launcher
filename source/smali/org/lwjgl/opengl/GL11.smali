###### Class org.lwjgl.opengl.GL11 (org.lwjgl.opengl.GL11)
.class public final Lorg/lwjgl/opengl/GL11;
.super Ljava/lang/Object;
.source "GL11.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 5
    invoke-static {}, Lmcport/NativeLib;->load()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native glAlphaFunc(IF)V
.end method

.method public static native glBindTexture(II)V
.end method

.method public static native glBlendFunc(II)V
.end method

.method public static native glCallList(I)V
.end method

.method public static glCallLists(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/lwjgl/opengl/GL11;->nglCallLists(Ljava/nio/Buffer;II)V

    return-void
.end method

.method public static native glClear(I)V
.end method

.method public static native glClearColor(FFFF)V
.end method

.method public static native glClearDepth(D)V
.end method

.method public static glColor3f(FFF)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    invoke-static {p0, p1, p2, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    return-void
.end method

.method public static native glColor4f(FFFF)V
.end method

.method public static native glColorMask(ZZZZ)V
.end method

.method public static native glColorMaterial(II)V
.end method

.method public static glColorPointer(IIIJ)V
    .registers 5

    return-void
.end method

.method public static glColorPointer(IZILjava/nio/ByteBuffer;)V
    .registers 5

    if-eqz p1, :cond_5

    const/16 p1, 0x1401

    goto :goto_7

    :cond_5
    const/16 p1, 0x1400

    .line 20
    :goto_7
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/lwjgl/opengl/GL11;->nglColorPointer(IIILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glCullFace(I)V
.end method

.method public static native glDeleteLists(II)V
.end method

.method public static glDeleteTextures(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 25
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/lwjgl/opengl/GL11;->nglDeleteTextures(Ljava/nio/Buffer;II)V

    return-void
.end method

.method public static native glDepthFunc(I)V
.end method

.method public static native glDepthMask(Z)V
.end method

.method public static native glDisable(I)V
.end method

.method public static native glDisableClientState(I)V
.end method

.method public static native glDrawArrays(III)V
.end method

.method public static native glEnable(I)V
.end method

.method public static native glEnableClientState(I)V
.end method

.method public static native glEndList()V
.end method

.method public static glFog(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 36
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/lwjgl/opengl/GL11;->nglFogfv(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glFogf(IF)V
.end method

.method public static native glFogi(II)V
.end method

.method public static native glGenLists(I)I
.end method

.method public static glGenTextures()I
    .registers 2

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glGenTextures(Ljava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public static glGenTextures(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 41
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/lwjgl/opengl/GL11;->nglGenTextures(Ljava/nio/Buffer;II)V

    return-void
.end method

.method public static native glGetError()I
.end method

.method public static glGetFloat(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 45
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/lwjgl/opengl/GL11;->nglGetFloatv(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glGetString(I)Ljava/lang/String;
.end method

.method public static glLight(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 48
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lorg/lwjgl/opengl/GL11;->nglLightfv(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public static glLightModel(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 50
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/lwjgl/opengl/GL11;->nglLightModelfv(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glLineWidth(F)V
.end method

.method public static native glLoadIdentity()V
.end method

.method public static native glMatrixMode(I)V
.end method

.method public static native glNewList(II)V
.end method

.method public static native glNormal3f(FFF)V
.end method

.method public static glNormalPointer(IIJ)V
    .registers 4

    return-void
.end method

.method public static glNormalPointer(ILjava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x1400

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {v0, p0, p1, v1}, Lorg/lwjgl/opengl/GL11;->nglNormalPointer(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glOrtho(DDDDDD)V
.end method

.method public static native glPixelStorei(II)V
.end method

.method public static native glPolygonOffset(FF)V
.end method

.method public static native glPopMatrix()V
.end method

.method public static native glPushMatrix()V
.end method

.method public static glReadPixels(IIIIIILjava/nio/ByteBuffer;)V
    .registers 15

    .line 64
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lorg/lwjgl/opengl/GL11;->nglReadPixels(IIIIIILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glRotatef(FFFF)V
.end method

.method public static glScaled(DDD)V
    .registers 6

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    .line 67
    invoke-static {p0, p1, p2}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    return-void
.end method

.method public static native glScalef(FFF)V
.end method

.method public static native glShadeModel(I)V
.end method

.method public static glTexCoordPointer(IIIJ)V
    .registers 5

    return-void
.end method

.method public static glTexCoordPointer(IILjava/nio/FloatBuffer;)V
    .registers 5

    .line 70
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1406

    invoke-static {p0, v1, p1, p2, v0}, Lorg/lwjgl/opengl/GL11;->nglTexCoordPointer(IIILjava/nio/Buffer;I)V

    return-void
.end method

.method public static glTexImage2D(IIIIIIIILjava/nio/ByteBuffer;)V
    .registers 19

    if-nez p8, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 73
    :cond_4
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_8
    move v9, v0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lorg/lwjgl/opengl/GL11;->nglTexImage2D(IIIIIIIILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glTexParameteri(III)V
.end method

.method public static glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V
    .registers 19

    .line 76
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lorg/lwjgl/opengl/GL11;->nglTexSubImage2D(IIIIIIIILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glTranslatef(FFF)V
.end method

.method public static glVertexPointer(IIIJ)V
    .registers 5

    return-void
.end method

.method public static glVertexPointer(IILjava/nio/FloatBuffer;)V
    .registers 5

    .line 79
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1406

    invoke-static {p0, v1, p1, p2, v0}, Lorg/lwjgl/opengl/GL11;->nglVertexPointer(IIILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native glViewport(IIII)V
.end method

.method static native nglCallLists(Ljava/nio/Buffer;II)V
.end method

.method static native nglColorPointer(IIILjava/nio/Buffer;I)V
.end method

.method static native nglDeleteTextures(Ljava/nio/Buffer;II)V
.end method

.method static native nglFogfv(ILjava/nio/Buffer;I)V
.end method

.method static native nglGenTextures(Ljava/nio/Buffer;II)V
.end method

.method static native nglGetFloatv(ILjava/nio/Buffer;I)V
.end method

.method static native nglLightModelfv(ILjava/nio/Buffer;I)V
.end method

.method static native nglLightfv(IILjava/nio/Buffer;I)V
.end method

.method static native nglNormalPointer(IILjava/nio/Buffer;I)V
.end method

.method static native nglReadPixels(IIIIIILjava/nio/Buffer;I)V
.end method

.method static native nglTexCoordPointer(IIILjava/nio/Buffer;I)V
.end method

.method static native nglTexImage2D(IIIIIIIILjava/nio/Buffer;I)V
.end method

.method static native nglTexSubImage2D(IIIIIIIILjava/nio/Buffer;I)V
.end method

.method static native nglVertexPointer(IIILjava/nio/Buffer;I)V
.end method
