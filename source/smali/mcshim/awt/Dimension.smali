###### Class mcshim.awt.Dimension (mcshim.awt.Dimension)
.class public Lmcshim/awt/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmcshim/awt/Dimension;->width:I

    iput p2, p0, Lmcshim/awt/Dimension;->height:I

    return-void
.end method
