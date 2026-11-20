###### Class mcshim.awt.Rectangle (mcshim.awt.Rectangle)
.class public Lmcshim/awt/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmcshim/awt/Rectangle;->x:I

    iput p2, p0, Lmcshim/awt/Rectangle;->y:I

    iput p3, p0, Lmcshim/awt/Rectangle;->width:I

    iput p4, p0, Lmcshim/awt/Rectangle;->height:I

    return-void
.end method
