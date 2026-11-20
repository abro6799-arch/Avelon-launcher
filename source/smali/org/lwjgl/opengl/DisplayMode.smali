###### Class org.lwjgl.opengl.DisplayMode (org.lwjgl.opengl.DisplayMode)
.class public final Lorg/lwjgl/opengl/DisplayMode;
.super Ljava/lang/Object;
.source "DisplayMode.java"


# instance fields
.field private final h:I

.field private final w:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/lwjgl/opengl/DisplayMode;->w:I

    iput p2, p0, Lorg/lwjgl/opengl/DisplayMode;->h:I

    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public getFrequency()I
    .registers 2

    const/16 v0, 0x3c

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 2
    iget v0, p0, Lorg/lwjgl/opengl/DisplayMode;->h:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 2
    iget v0, p0, Lorg/lwjgl/opengl/DisplayMode;->w:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/lwjgl/opengl/DisplayMode;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/lwjgl/opengl/DisplayMode;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
