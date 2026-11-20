###### Class com.jcraft.jorbis.Time0 (com.jcraft.jorbis.Time0)
.class Lcom/jcraft/jorbis/Time0;
.super Lcom/jcraft/jorbis/FuncTime;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncTime;-><init>()V

    return-void
.end method


# virtual methods
.method free_info(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F[F)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string p1, ""

    return-object p1
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 3

    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 3

    const-string p1, ""

    return-object p1
.end method
