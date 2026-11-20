###### Class mcshim.awt.image.WritableRaster (mcshim.awt.image.WritableRaster)
.class public Lmcshim/awt/image/WritableRaster;
.super Ljava/lang/Object;
.source "WritableRaster.java"


# instance fields
.field private final b:Lmcshim/awt/image/DataBuffer;


# direct methods
.method public constructor <init>(Lmcshim/awt/image/DataBuffer;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmcshim/awt/image/WritableRaster;->b:Lmcshim/awt/image/DataBuffer;

    return-void
.end method


# virtual methods
.method public getDataBuffer()Lmcshim/awt/image/DataBuffer;
    .registers 2

    .line 2
    iget-object v0, p0, Lmcshim/awt/image/WritableRaster;->b:Lmcshim/awt/image/DataBuffer;

    return-object v0
.end method
