###### Class defpackage.u (u)
.class public Lu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 10
    invoke-static {v0}, Lge;->e(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lu;->a:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DDDD)Ljava/nio/FloatBuffer;
    .registers 8

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    double-to-float p3, p6

    .line 46
    invoke-static {p0, p1, p2, p3}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static a(FFFF)Ljava/nio/FloatBuffer;
    .registers 5

    .line 50
    sget-object v0, Lu;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 51
    sget-object v0, Lu;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 52
    sget-object p0, Lu;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 53
    sget-object p0, Lu;->a:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public static a()V
    .registers 1

    const/16 v0, 0xb50

    .line 13
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0x4000

    .line 14
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0x4001

    .line 15
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0xb57

    .line 16
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method public static b()V
    .registers 18

    const/16 v0, 0xb50

    .line 20
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x4000

    .line 21
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v1, 0x4001

    .line 22
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v2, 0xb57

    .line 23
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v2, 0x408

    const/16 v3, 0x1602

    .line 24
    invoke-static {v2, v3}, Lorg/lwjgl/opengl/GL11;->glColorMaterial(II)V

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, -0x40199999a0000000L    # -0.699999988079071

    .line 29
    invoke-static/range {v4 .. v9}, Lbt;->b(DDD)Lbt;

    move-result-object v2

    invoke-virtual {v2}, Lbt;->c()Lbt;

    move-result-object v2

    .line 30
    iget-wide v3, v2, Lbt;->a:D

    iget-wide v5, v2, Lbt;->b:D

    iget-wide v7, v2, Lbt;->c:D

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v10}, Lu;->a(DDDD)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/16 v3, 0x1203

    invoke-static {v0, v3, v2}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    const v2, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    invoke-static {v2, v2, v2, v4}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/16 v6, 0x1201

    invoke-static {v0, v6, v5}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    const/4 v5, 0x0

    .line 32
    invoke-static {v5, v5, v5, v4}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/16 v8, 0x1200

    invoke-static {v0, v8, v7}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    .line 33
    invoke-static {v5, v5, v5, v4}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/16 v9, 0x1202

    invoke-static {v0, v9, v7}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    const-wide v10, -0x4036666660000000L    # -0.20000000298023224

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    .line 35
    invoke-static/range {v10 .. v15}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    invoke-virtual {v0}, Lbt;->c()Lbt;

    move-result-object v0

    .line 36
    iget-wide v10, v0, Lbt;->a:D

    iget-wide v12, v0, Lbt;->b:D

    iget-wide v14, v0, Lbt;->c:D

    const-wide/16 v16, 0x0

    invoke-static/range {v10 .. v17}, Lu;->a(DDDD)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    .line 37
    invoke-static {v2, v2, v2, v4}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    .line 38
    invoke-static {v5, v5, v5, v4}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    .line 39
    invoke-static {v5, v5, v5, v4}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v1, v9, v0}, Lorg/lwjgl/opengl/GL11;->glLight(IILjava/nio/FloatBuffer;)V

    const/16 v0, 0x1d00

    .line 41
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    const/16 v0, 0xb53

    const v1, 0x3ecccccd    # 0.4f

    .line 42
    invoke-static {v1, v1, v1, v4}, Lu;->a(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glLightModel(ILjava/nio/FloatBuffer;)V

    return-void
.end method
