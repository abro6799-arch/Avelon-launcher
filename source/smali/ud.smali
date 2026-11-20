###### Class defpackage.ud (ud)
.class public Lud;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;


# instance fields
.field private final b:Ljava/util/Map;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lud;->a:Ljava/util/HashMap;

    .line 27
    const-class v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v1, Ljava/lang/Short;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v1, Liz;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v1, Lbr;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lud;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Ljava/util/List;
    .registers 10

    .line 199
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_6
    const/16 v3, 0x7f

    if-eq v0, v3, :cond_97

    if-nez v2, :cond_11

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    and-int/lit16 v3, v0, 0xe0

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v0, v0, 0x1f

    packed-switch v3, :pswitch_data_98

    move-object v7, v1

    goto/16 :goto_8e

    .line 236
    :pswitch_1d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 237
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 238
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 239
    new-instance v7, Lma;

    new-instance v8, Lbr;

    invoke-direct {v8, v4, v5, v6}, Lbr;-><init>(III)V

    invoke-direct {v7, v3, v0, v8}, Lma;-><init>(IILjava/lang/Object;)V

    goto :goto_8e

    .line 229
    :pswitch_34
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 230
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 231
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 232
    new-instance v7, Lma;

    new-instance v8, Liz;

    invoke-direct {v8, v4, v5, v6}, Liz;-><init>(III)V

    invoke-direct {v7, v3, v0, v8}, Lma;-><init>(IILjava/lang/Object;)V

    goto :goto_8e

    .line 226
    :pswitch_4b
    new-instance v7, Lma;

    const/16 v4, 0x40

    invoke-static {p0, v4}, Lki;->a(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v3, v0, v4}, Lma;-><init>(IILjava/lang/Object;)V

    goto :goto_8e

    .line 223
    :pswitch_57
    new-instance v7, Lma;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v7, v3, v0, v4}, Lma;-><init>(IILjava/lang/Object;)V

    goto :goto_8e

    .line 220
    :pswitch_65
    new-instance v7, Lma;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v3, v0, v4}, Lma;-><init>(IILjava/lang/Object;)V

    goto :goto_8e

    .line 217
    :pswitch_73
    new-instance v7, Lma;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-direct {v7, v3, v0, v4}, Lma;-><init>(IILjava/lang/Object;)V

    goto :goto_8e

    .line 214
    :pswitch_81
    new-instance v7, Lma;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-direct {v7, v3, v0, v4}, Lma;-><init>(IILjava/lang/Object;)V

    .line 243
    :goto_8e
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    goto/16 :goto_6

    :cond_97
    return-object v2

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_81
        :pswitch_73
        :pswitch_65
        :pswitch_57
        :pswitch_4b
        :pswitch_34
        :pswitch_1d
    .end packed-switch
.end method

.method private static a(Ljava/io/DataOutputStream;Lma;)V
    .registers 4

    .line 158
    invoke-virtual {p1}, Lma;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x5

    invoke-virtual {p1}, Lma;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 159
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 162
    invoke-virtual {p1}, Lma;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_90

    goto/16 :goto_8e

    .line 186
    :pswitch_1b
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbr;

    .line 187
    iget v0, p1, Lbr;->a:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    iget v0, p1, Lbr;->b:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    iget p1, p1, Lbr;->c:I

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8e

    .line 179
    :pswitch_31
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liz;

    .line 180
    invoke-virtual {p1}, Liz;->a()Lgm;

    move-result-object v0

    iget v0, v0, Lgm;->bf:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 181
    iget v0, p1, Liz;->a:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 182
    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_8e

    .line 176
    :pswitch_4d
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0}, Lki;->a(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    goto :goto_8e

    .line 173
    :pswitch_57
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_8e

    .line 170
    :pswitch_65
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8e

    .line 167
    :pswitch_73
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_8e

    .line 164
    :pswitch_81
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_81
        :pswitch_73
        :pswitch_65
        :pswitch_57
        :pswitch_4d
        :pswitch_31
        :pswitch_1b
    .end packed-switch
.end method

.method public static a(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .registers 3

    if-eqz p0, :cond_16

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    .line 118
    invoke-static {p1, v0}, Lud;->a(Ljava/io/DataOutputStream;Lma;)V

    goto :goto_6

    :cond_16
    const/16 p0, 0x7f

    .line 123
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3

    .line 67
    iget-object v0, p0, Lud;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma;

    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method public a(ILjava/lang/Object;)V
    .registers 6

    .line 51
    sget-object v0, Lud;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_63

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_4a

    .line 58
    iget-object v1, p0, Lud;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 62
    new-instance v1, Lma;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0, p1, p2}, Lma;-><init>(IILjava/lang/Object;)V

    .line 63
    iget-object p2, p0, Lud;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 59
    :cond_31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate id value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 56
    :cond_4a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data value id is too big with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "! (Max is 31)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown data type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 148
    iget-object v0, p0, Lud;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lma;

    .line 149
    invoke-static {p1, v1}, Lud;->a(Ljava/io/DataOutputStream;Lma;)V

    goto :goto_a

    :cond_1a
    const/16 v0, 0x7f

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    .line 259
    iget-object v1, p0, Lud;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lma;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lma;

    if-eqz v1, :cond_4

    .line 261
    invoke-virtual {v0}, Lma;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lma;->a(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2a
    return-void
.end method

.method public b(I)I
    .registers 3

    .line 75
    iget-object v0, p0, Lud;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma;

    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public b(ILjava/lang/Object;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lud;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma;

    .line 98
    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 99
    invoke-virtual {p1, p2}, Lma;->a(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 100
    invoke-virtual {p1, p2}, Lma;->a(Z)V

    .line 101
    iput-boolean p2, p0, Lud;->c:Z

    :cond_1f
    return-void
.end method

.method public c(I)Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Lud;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma;

    invoke-virtual {p1}, Lma;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
