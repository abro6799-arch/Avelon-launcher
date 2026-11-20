###### Class defpackage.cx (cx)
.class public Lcx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 9
    sget-boolean v0, Lcx;->a:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lorg/lwjgl/opengl/GLContext;->getCapabilities()Lorg/lwjgl/opengl/ContextCapabilities;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lwjgl/opengl/ContextCapabilities;->GL_ARB_occlusion_query:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
