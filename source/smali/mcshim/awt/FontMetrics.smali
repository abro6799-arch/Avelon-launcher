###### Class mcshim.awt.FontMetrics (mcshim.awt.FontMetrics)
.class public abstract Lmcshim/awt/FontMetrics;
.super Ljava/lang/Object;
.source "FontMetrics.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stringWidth(Ljava/lang/String;)I
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x6

    return p1
.end method
