###### Class defpackage.an (an)
.class public final Lan;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Llj;)Ljava/lang/String;
    .registers 5

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {p1}, Llj;->c()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2d

    if-ne v2, v1, :cond_12

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 211
    :cond_12
    invoke-virtual {p1, v1}, Llj;->a(C)V

    .line 213
    :goto_15
    invoke-direct {p0, p1}, Lan;->b(Llj;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Llj;Lwg;)V
    .registers 8

    .line 71
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x5b

    const-string v2, "]."

    if-ne v0, v1, :cond_4c

    .line 75
    invoke-interface {p2}, Lwg;->d()V

    .line 76
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v0

    int-to-char v0, v0

    .line 77
    invoke-virtual {p1, v0}, Llj;->a(C)V

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1d

    .line 79
    invoke-direct {p0, p1, p2}, Lan;->d(Llj;Lwg;)V

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_48

    .line 83
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_44

    if-ne v3, v1, :cond_2d

    const/4 v0, 0x1

    goto :goto_1e

    .line 92
    :cond_2d
    new-instance p2, Lxe;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected either , or ] but got ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    .line 86
    :cond_44
    invoke-direct {p0, p1, p2}, Lan;->d(Llj;Lwg;)V

    goto :goto_1e

    .line 95
    :cond_48
    invoke-interface {p2}, Lwg;->e()V

    return-void

    .line 73
    :cond_4c
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected object to start with [ but got ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2
.end method

.method private b(Llj;)Ljava/lang/String;
    .registers 5

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-virtual {p1}, Llj;->c()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x30

    if-ne v2, v1, :cond_20

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {p0, p1}, Lan;->f(Llj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {p0, p1}, Lan;->g(Llj;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 225
    :cond_20
    invoke-virtual {p1, v1}, Llj;->a(C)V

    .line 226
    invoke-direct {p0, p1}, Lan;->c(Llj;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p0, p1}, Lan;->e(Llj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p0, p1}, Lan;->f(Llj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0, p1}, Lan;->g(Llj;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Llj;Lwg;)V
    .registers 8

    .line 99
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x7b

    const-string v2, "]."

    if-ne v0, v1, :cond_4c

    .line 103
    invoke-interface {p2}, Lwg;->f()V

    .line 104
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v0

    int-to-char v0, v0

    .line 105
    invoke-virtual {p1, v0}, Llj;->a(C)V

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1d

    .line 107
    invoke-direct {p0, p1, p2}, Lan;->c(Llj;Lwg;)V

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_48

    .line 111
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_44

    if-ne v3, v1, :cond_2d

    const/4 v0, 0x1

    goto :goto_1e

    .line 120
    :cond_2d
    new-instance p2, Lxe;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected either , or } but got ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    .line 114
    :cond_44
    invoke-direct {p0, p1, p2}, Lan;->c(Llj;Lwg;)V

    goto :goto_1e

    .line 123
    :cond_48
    invoke-interface {p2}, Lwg;->g()V

    return-void

    .line 101
    :cond_4c
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected object to start with { but got ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2
.end method

.method private c(Llj;)C
    .registers 6

    .line 236
    invoke-virtual {p1}, Llj;->c()I

    move-result v0

    int-to-char v0, v0

    packed-switch v0, :pswitch_data_22

    .line 250
    new-instance v1, Lxe;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a digit 1 - 9 but got ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw v1

    :pswitch_21
    return v0

    :pswitch_data_22
    .packed-switch 0x31
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private c(Llj;Lwg;)V
    .registers 7

    .line 127
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x22

    const-string v2, "]."

    if-ne v1, v0, :cond_3c

    .line 131
    invoke-virtual {p1, v0}, Llj;->a(C)V

    .line 132
    invoke-direct {p0, p1}, Lan;->i(Llj;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lwg;->a(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_25

    .line 137
    invoke-direct {p0, p1, p2}, Lan;->d(Llj;Lwg;)V

    .line 138
    invoke-interface {p2}, Lwg;->h()V

    return-void

    .line 135
    :cond_25
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected object identifier to be followed by : but got ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    .line 129
    :cond_3c
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected object identifier to begin with [\"] but got ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2
.end method

.method private d(Llj;)C
    .registers 6

    .line 257
    invoke-virtual {p1}, Llj;->c()I

    move-result v0

    int-to-char v0, v0

    packed-switch v0, :pswitch_data_22

    .line 272
    new-instance v1, Lxe;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a digit 1 - 9 but got ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw v1

    :pswitch_21
    return v0

    :pswitch_data_22
    .packed-switch 0x30
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private d(Llj;Lwg;)V
    .registers 13

    .line 142
    invoke-direct {p0, p1}, Lan;->l(Llj;)I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_110

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_105

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_fe

    const/16 v1, 0x66

    const/16 v2, 0x65

    const/4 v3, 0x2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "]."

    const/4 v8, 0x3

    if-eq v0, v1, :cond_bf

    const/16 v1, 0x6e

    const/16 v9, 0x75

    if-eq v0, v1, :cond_88

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4f

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_47

    packed-switch v0, :pswitch_data_11c

    .line 201
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid character at start of value ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    .line 193
    :cond_47
    invoke-virtual {p1, v0}, Llj;->a(C)V

    .line 194
    invoke-direct {p0, p1, p2}, Lan;->b(Llj;Lwg;)V

    goto/16 :goto_11a

    :cond_4f
    new-array v0, v8, [C

    .line 150
    invoke-virtual {p1, v0}, Llj;->b([C)I

    move-result v1

    if-ne v1, v8, :cond_6a

    aget-char v1, v0, v6

    const/16 v4, 0x72

    if-ne v1, v4, :cond_6a

    aget-char v1, v0, v5

    if-ne v1, v9, :cond_6a

    aget-char v1, v0, v3

    if-ne v1, v2, :cond_6a

    .line 155
    invoke-interface {p2}, Lwg;->i()V

    goto/16 :goto_11a

    .line 152
    :cond_6a
    invoke-virtual {p1, v0}, Llj;->a([C)V

    .line 153
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'t\' to be followed by [[r, u, e]], but got ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    :cond_88
    new-array v0, v8, [C

    .line 170
    invoke-virtual {p1, v0}, Llj;->b([C)I

    move-result v1

    if-ne v1, v8, :cond_a1

    aget-char v1, v0, v6

    if-ne v1, v9, :cond_a1

    aget-char v1, v0, v5

    if-ne v1, v4, :cond_a1

    aget-char v1, v0, v3

    if-ne v1, v4, :cond_a1

    .line 175
    invoke-interface {p2}, Lwg;->k()V

    goto/16 :goto_11a

    .line 172
    :cond_a1
    invoke-virtual {p1, v0}, Llj;->a([C)V

    .line 173
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'n\' to be followed by [[u, l, l]], but got ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    :cond_bf
    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 160
    invoke-virtual {p1, v1}, Llj;->b([C)I

    move-result v9

    if-ne v9, v0, :cond_e0

    aget-char v0, v1, v6

    const/16 v6, 0x61

    if-ne v0, v6, :cond_e0

    aget-char v0, v1, v5

    if-ne v0, v4, :cond_e0

    aget-char v0, v1, v3

    const/16 v3, 0x73

    if-ne v0, v3, :cond_e0

    aget-char v0, v1, v8

    if-ne v0, v2, :cond_e0

    .line 165
    invoke-interface {p2}, Lwg;->j()V

    goto :goto_11a

    .line 162
    :cond_e0
    invoke-virtual {p1, v1}, Llj;->a([C)V

    .line 163
    new-instance p2, Lxe;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'f\' to be followed by [[a, l, s, e]], but got ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    .line 197
    :cond_fe
    invoke-virtual {p1, v0}, Llj;->a(C)V

    .line 198
    invoke-direct {p0, p1, p2}, Lan;->a(Llj;Lwg;)V

    goto :goto_11a

    .line 189
    :cond_105
    :pswitch_105
    invoke-virtual {p1, v0}, Llj;->a(C)V

    .line 190
    invoke-direct {p0, p1}, Lan;->a(Llj;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lwg;->b(Ljava/lang/String;)V

    goto :goto_11a

    .line 145
    :cond_110
    invoke-virtual {p1, v0}, Llj;->a(C)V

    .line 146
    invoke-direct {p0, p1}, Lan;->i(Llj;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lwg;->c(Ljava/lang/String;)V

    :goto_11a
    return-void

    nop

    :pswitch_data_11c
    .packed-switch 0x30
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
    .end packed-switch
.end method

.method private e(Llj;)Ljava/lang/String;
    .registers 5

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_19

    .line 281
    invoke-virtual {p1}, Llj;->c()I

    move-result v2

    int-to-char v2, v2

    packed-switch v2, :pswitch_data_1e

    .line 297
    invoke-virtual {p1, v2}, Llj;->a(C)V

    const/4 v1, 0x1

    goto :goto_6

    .line 293
    :pswitch_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 300
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_1e
    .packed-switch 0x30
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private f(Llj;)Ljava/lang/String;
    .registers 5

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-virtual {p1}, Llj;->c()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_20

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {p0, p1}, Lan;->d(Llj;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {p0, p1}, Lan;->e(Llj;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 311
    :cond_20
    invoke-virtual {p1, v1}, Llj;->a(C)V

    .line 313
    :goto_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Llj;)Ljava/lang/String;
    .registers 6

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-virtual {p1}, Llj;->c()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2e

    const/16 v3, 0x45

    if-eq v1, v2, :cond_17

    if-ne v1, v3, :cond_13

    goto :goto_17

    .line 325
    :cond_13
    invoke-virtual {p1, v1}, Llj;->a(C)V

    goto :goto_2f

    .line 320
    :cond_17
    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    invoke-direct {p0, p1}, Lan;->h(Llj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-direct {p0, p1}, Lan;->d(Llj;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {p0, p1}, Lan;->e(Llj;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :goto_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h(Llj;)Ljava/lang/String;
    .registers 5

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    invoke-virtual {p1}, Llj;->c()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_17

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_13

    goto :goto_17

    .line 336
    :cond_13
    invoke-virtual {p1, v1}, Llj;->a(C)V

    goto :goto_1a

    .line 334
    :cond_17
    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(Llj;)Ljava/lang/String;
    .registers 7

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    invoke-virtual {p1}, Llj;->c()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x22

    if-ne v2, v1, :cond_2f

    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_2a

    .line 350
    invoke-virtual {p1}, Llj;->c()I

    move-result v3

    int-to-char v3, v3

    if-eq v3, v2, :cond_28

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_20

    .line 360
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 356
    :cond_20
    invoke-direct {p0, p1}, Lan;->j(Llj;)C

    move-result v3

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_28
    const/4 v1, 0x1

    goto :goto_f

    .line 363
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 346
    :cond_2f
    new-instance v0, Lxe;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected [\"] but got ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw v0
.end method

.method private j(Llj;)C
    .registers 6

    .line 368
    invoke-virtual {p1}, Llj;->c()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_56

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_56

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_56

    const/16 v1, 0x62

    if-eq v0, v1, :cond_54

    const/16 v1, 0x66

    if-eq v0, v1, :cond_51

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x74

    if-eq v0, v1, :cond_48

    const/16 v1, 0x75

    if-ne v0, v1, :cond_2f

    .line 395
    invoke-direct {p0, p1}, Lan;->k(Llj;)I

    move-result p1

    int-to-char v1, p1

    goto :goto_56

    .line 398
    :cond_2f
    new-instance v1, Lxe;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognised escape character ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw v1

    :cond_48
    const/16 v1, 0x9

    goto :goto_56

    :cond_4b
    const/16 v1, 0xd

    goto :goto_56

    :cond_4e
    const/16 v1, 0xa

    goto :goto_56

    :cond_51
    const/16 v1, 0xc

    goto :goto_56

    :cond_54
    const/16 v1, 0x8

    :cond_56
    :goto_56
    return v1
.end method

.method private k(Llj;)I
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 405
    invoke-virtual {p1, v1}, Llj;->b([C)I

    move-result v2

    if-ne v2, v0, :cond_35

    .line 411
    :try_start_9
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_13} :catch_14

    return p1

    :catch_14
    move-exception v0

    .line 413
    invoke-virtual {p1, v1}, Llj;->a([C)V

    .line 414
    new-instance v2, Lxe;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to parse ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] as a hexidecimal number."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, p1}, Lxe;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Let;)V

    throw v2

    .line 407
    :cond_35
    new-instance v0, Lxe;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected a 4 digit hexidecimal number but got only ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], namely ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw v0
.end method

.method private l(Llj;)I
    .registers 5

    const/4 v0, 0x0

    .line 423
    :cond_1
    invoke-virtual {p1}, Llj;->c()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_16

    const/16 v2, 0xa

    if-eq v1, v2, :cond_16

    const/16 v2, 0xd

    if-eq v1, v2, :cond_16

    const/16 v2, 0x20

    if-eq v1, v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    if-eqz v0, :cond_1

    return v1
.end method


# virtual methods
.method public a(Ljava/io/Reader;Lwg;)V
    .registers 7

    .line 47
    new-instance v0, Llj;

    invoke-direct {v0, p1}, Llj;-><init>(Ljava/io/Reader;)V

    .line 48
    invoke-virtual {v0}, Llj;->c()I

    move-result p1

    int-to-char p1, p1

    const/16 v1, 0x5b

    const-string v2, "]."

    if-eq p1, v1, :cond_35

    const/16 v1, 0x7b

    if-ne p1, v1, :cond_1e

    .line 51
    invoke-virtual {v0, p1}, Llj;->a(C)V

    .line 52
    invoke-interface {p2}, Lwg;->b()V

    .line 53
    invoke-direct {p0, v0, p2}, Lan;->b(Llj;Lwg;)V

    goto :goto_3e

    .line 61
    :cond_1e
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected either [ or { but got ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2

    .line 56
    :cond_35
    invoke-virtual {v0, p1}, Llj;->a(C)V

    .line 57
    invoke-interface {p2}, Lwg;->b()V

    .line 58
    invoke-direct {p0, v0, p2}, Lan;->a(Llj;Lwg;)V

    .line 63
    :goto_3e
    invoke-direct {p0, v0}, Lan;->l(Llj;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_49

    .line 67
    invoke-interface {p2}, Lwg;->c()V

    return-void

    .line 65
    :cond_49
    new-instance p2, Lxe;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Got unexpected trailing character ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lxe;-><init>(Ljava/lang/String;Let;)V

    throw p2
.end method
