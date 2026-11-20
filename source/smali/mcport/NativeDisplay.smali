###### Class mcport.NativeDisplay (mcport.NativeDisplay)
.class public final Lmcport/NativeDisplay;
.super Ljava/lang/Object;
.source "NativeDisplay.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 3
    invoke-static {}, Lmcport/NativeLib;->load()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native attachPbuffer()Z
.end method

.method public static native attachSurface(Ljava/lang/Object;II)Z
.end method

.method public static native create(Ljava/lang/Object;II)Z
.end method

.method public static native destroy()V
.end method

.method public static native height()I
.end method

.method public static native readRGBA(Ljava/nio/ByteBuffer;)V
.end method

.method public static native releaseSurface()V
.end method

.method public static native swap()Z
.end method

.method public static native swapInterval(I)V
.end method

.method public static native width()I
.end method
