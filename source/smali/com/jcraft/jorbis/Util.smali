###### Class com.jcraft.jorbis.Util (com.jcraft.jorbis.Util)
.class Lcom/jcraft/jorbis/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static icount(I)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_9

    and-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_9
    return v0
.end method

.method static ilog(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method static ilog2(I)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-le p0, v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_9
    return v0
.end method
