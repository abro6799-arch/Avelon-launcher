###### Class mcshim.awt.image.DataBufferInt (mcshim.awt.image.DataBufferInt)
.class public final Lmcshim/awt/image/DataBufferInt;
.super Lmcshim/awt/image/DataBuffer;
.source "DataBufferInt.java"


# instance fields
.field private final d:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lmcshim/awt/image/DataBuffer;-><init>()V

    iput-object p1, p0, Lmcshim/awt/image/DataBufferInt;->d:[I

    return-void
.end method


# virtual methods
.method public getData()[I
    .registers 2

    .line 2
    iget-object v0, p0, Lmcshim/awt/image/DataBufferInt;->d:[I

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 2
    iget-object v0, p0, Lmcshim/awt/image/DataBufferInt;->d:[I

    array-length v0, v0

    return v0
.end method
