###### Class org.lwjgl.opengl.GLContext (org.lwjgl.opengl.GLContext)
.class public final Lorg/lwjgl/opengl/GLContext;
.super Ljava/lang/Object;
.source "GLContext.java"


# static fields
.field private static final CAPS:Lorg/lwjgl/opengl/ContextCapabilities;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2
    new-instance v0, Lorg/lwjgl/opengl/ContextCapabilities;

    invoke-direct {v0}, Lorg/lwjgl/opengl/ContextCapabilities;-><init>()V

    sput-object v0, Lorg/lwjgl/opengl/GLContext;->CAPS:Lorg/lwjgl/opengl/ContextCapabilities;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapabilities()Lorg/lwjgl/opengl/ContextCapabilities;
    .registers 1

    .line 2
    sget-object v0, Lorg/lwjgl/opengl/GLContext;->CAPS:Lorg/lwjgl/opengl/ContextCapabilities;

    return-object v0
.end method
