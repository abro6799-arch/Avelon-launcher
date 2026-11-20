###### Class org.lwjgl.input.Cursor (org.lwjgl.input.Cursor)
.class public Lorg/lwjgl/input/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# direct methods
.method public constructor <init>(IIIIILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/lwjgl/LWJGLException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapabilities()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method
