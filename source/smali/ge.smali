###### Class defpackage.ge (ge)
.class public Lge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lge;->a:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lge;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(I)I
    .registers 5

    const-class v0, Lge;

    monitor-enter v0

    .line 21
    :try_start_3
    invoke-static {p0}, Lorg/lwjgl/opengl/GL11;->glGenLists(I)I

    move-result v1

    .line 22
    sget-object v2, Lge;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v2, Lge;->a:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 24
    monitor-exit v0

    return v1

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()V
    .registers 6

    const-class v0, Lge;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 42
    :goto_5
    :try_start_5
    sget-object v3, Lge;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 43
    sget-object v3, Lge;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lge;->a:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lorg/lwjgl/opengl/GL11;->glDeleteLists(II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 45
    :cond_2d
    sget-object v2, Lge;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 47
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDeleteTextures(Ljava/nio/IntBuffer;)V

    .line 48
    :goto_3d
    sget-object v3, Lge;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_57

    .line 49
    sget-object v3, Lge;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 51
    :cond_57
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDeleteTextures(Ljava/nio/IntBuffer;)V

    .line 53
    sget-object v1, Lge;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    sget-object v1, Lge;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_69

    .line 58
    monitor-exit v0

    return-void

    :catchall_69
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/nio/IntBuffer;)V
    .registers 5

    const-class v0, Lge;

    monitor-enter v0

    .line 28
    :try_start_3
    invoke-static {p0}, Lorg/lwjgl/opengl/GL11;->glGenTextures(Ljava/nio/IntBuffer;)V

    .line 29
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    :goto_a
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 30
    sget-object v2, Lge;->b:Ljava/util/List;

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_22

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 32
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(I)V
    .registers 5

    const-class v0, Lge;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lge;->a:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 36
    sget-object v1, Lge;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lge;->a:Ljava/util/List;

    add-int/lit8 v3, p0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glDeleteLists(II)V

    .line 37
    sget-object v1, Lge;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    sget-object v1, Lge;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    .line 39
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(I)Ljava/nio/ByteBuffer;
    .registers 3

    const-class v0, Lge;

    monitor-enter v0

    .line 72
    :try_start_3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 75
    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(I)Ljava/nio/IntBuffer;
    .registers 1

    shl-int/lit8 p0, p0, 0x2

    .line 87
    invoke-static {p0}, Lge;->c(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)Ljava/nio/FloatBuffer;
    .registers 1

    shl-int/lit8 p0, p0, 0x2

    .line 95
    invoke-static {p0}, Lge;->c(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method
