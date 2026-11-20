###### Class com.jcraft.jorbis.Residue2 (com.jcraft.jorbis.Residue2)
.class Lcom/jcraft/jorbis/Residue2;
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
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p5, :cond_c

    .line 34
    aget v2, p4, v1

    if-eqz v2, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    :goto_c
    if-ne v1, p5, :cond_f

    return v0

    .line 39
    :cond_f
    invoke-static {p1, p2, p3, p5}, Lcom/jcraft/jorbis/Residue2;->_2inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[FI)I

    move-result p1

    return p1
.end method
