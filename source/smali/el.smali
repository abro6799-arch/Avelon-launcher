###### Class defpackage.el (el)
.class public final Lel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lml;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lgu;Ljava/io/Writer;)V
    .registers 8

    .line 43
    sget-object v0, Lkz;->a:[I

    invoke-virtual {p1}, Lgu;->a()Lat;

    move-result-object v1

    invoke-virtual {v1}, Lat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_d6

    .line 85
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Coding failure in Argo:  Attempt to format a JsonNode of unknown type ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lgu;->a()Lat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "];"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_30
    const-string p1, "null"

    .line 82
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_d5

    :pswitch_37
    const-string p1, "true"

    .line 79
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_d5

    :pswitch_3e
    const-string p1, "false"

    .line 76
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_d5

    .line 73
    :pswitch_45
    invoke-virtual {p1}, Lgu;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_d5

    :pswitch_4e
    const/16 v0, 0x22

    .line 69
    invoke-virtual {p2, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p2

    new-instance v1, Lyt;

    invoke-virtual {p1}, Lgu;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lyt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lyt;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_d5

    :pswitch_69
    const/16 v0, 0x7b

    .line 56
    invoke-virtual {p2, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 57
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lgu;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqa;

    if-nez v3, :cond_90

    .line 59
    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 62
    :cond_90
    invoke-direct {p0, v4, p2}, Lel;->a(Lgu;Ljava/io/Writer;)V

    const/16 v3, 0x3a

    .line 63
    invoke-virtual {p2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 64
    invoke-virtual {p1}, Lgu;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgu;

    invoke-direct {p0, v3, p2}, Lel;->a(Lgu;Ljava/io/Writer;)V

    move v3, v2

    goto :goto_7f

    :cond_a7
    const/16 p1, 0x7d

    .line 66
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_d5

    :pswitch_ad
    const/16 v0, 0x5b

    .line 45
    invoke-virtual {p2, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 46
    invoke-virtual {p1}, Lgu;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ba
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgu;

    if-nez v3, :cond_cb

    .line 48
    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 51
    :cond_cb
    invoke-direct {p0, v0, p2}, Lel;->a(Lgu;Ljava/io/Writer;)V

    move v3, v2

    goto :goto_ba

    :cond_d0
    const/16 p1, 0x5d

    .line 53
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :goto_d5
    return-void

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_69
        :pswitch_4e
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public a(Lqe;)Ljava/lang/String;
    .registers 4

    .line 28
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 30
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lel;->a(Lqe;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 34
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_d
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Coding failure in Argo:  StringWriter gave an IOException"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lqe;Ljava/io/Writer;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lel;->a(Lgu;Ljava/io/Writer;)V

    return-void
.end method
