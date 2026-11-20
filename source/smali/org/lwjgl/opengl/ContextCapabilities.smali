###### Class org.lwjgl.opengl.ContextCapabilities (org.lwjgl.opengl.ContextCapabilities)
.class public Lorg/lwjgl/opengl/ContextCapabilities;
.super Ljava/lang/Object;
.source "ContextCapabilities.java"


# instance fields
.field public final GL_ARB_occlusion_query:Z

.field public final GL_ARB_vertex_buffer_object:Z

.field public final GL_NV_fog_distance:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/lwjgl/opengl/ContextCapabilities;->GL_ARB_occlusion_query:Z

    .line 6
    iput-boolean v0, p0, Lorg/lwjgl/opengl/ContextCapabilities;->GL_ARB_vertex_buffer_object:Z

    .line 7
    iput-boolean v0, p0, Lorg/lwjgl/opengl/ContextCapabilities;->GL_NV_fog_distance:Z

    return-void
.end method
