###### Class com.jcraft.jorbis.Residue1 (com.jcraft.jorbis.Residue1)
.class Lcom/jcraft/jorbis/Residue1;
.super Lcom/jcraft/jorbis/Residue0;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jorbis/Residue0;-><init>()V

    return-void
.end method


# virtual methods
.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, p5, :cond_13

    .line 34
    aget v3, p4, v1

    if-eqz v3, :cond_10

    add-int/lit8 v3, v2, 0x1

    .line 35
    aget-object v4, p3, v1

    aput-object v4, p3, v2

    move v2, v3

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    if-eqz v2, :cond_1b

    const/4 p4, 0x1

    .line 39
    invoke-static {p1, p2, p3, v2, p4}, Lcom/jcraft/jorbis/Residue1;->_01inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FII)I

    move-result p1

    return p1

    :cond_1b
    return v0
.end method
