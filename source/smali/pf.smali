###### Class defpackage.pf (pf)
.class public Lpf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:I

.field public static c:I

.field public static d:[I

.field public static e:[I


# instance fields
.field public f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/net/Socket;

.field private final i:Ljava/net/SocketAddress;

.field private j:Ljava/io/DataInputStream;

.field private k:Ljava/io/DataOutputStream;

.field private l:Z

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Lti;

.field private q:Z

.field private r:Ljava/lang/Thread;

.field private s:Ljava/lang/Thread;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:[Ljava/lang/Object;

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpf;->a:Ljava/lang/Object;

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 56
    sput-object v1, Lpf;->d:[I

    new-array v0, v0, [I

    .line 57
    sput-object v0, Lpf;->e:[I

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;Lti;)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lpf;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lpf;->l:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpf;->m:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpf;->n:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpf;->o:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lpf;->q:Z

    .line 49
    iput-boolean v0, p0, Lpf;->t:Z

    const-string v1, ""

    .line 50
    iput-object v1, p0, Lpf;->u:Ljava/lang/String;

    .line 53
    iput v0, p0, Lpf;->w:I

    .line 54
    iput v0, p0, Lpf;->x:I

    .line 59
    iput v0, p0, Lpf;->f:I

    const/16 v0, 0x32

    .line 155
    iput v0, p0, Lpf;->y:I

    .line 62
    iput-object p1, p0, Lpf;->h:Ljava/net/Socket;

    .line 63
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lpf;->i:Ljava/net/SocketAddress;

    .line 64
    iput-object p3, p0, Lpf;->p:Lti;

    const/16 p3, 0x7530

    .line 66
    :try_start_4d
    invoke-virtual {p1, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    const/16 p3, 0x18

    .line 67
    invoke-virtual {p1, p3}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_55
    .catch Ljava/net/SocketException; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_60

    :catch_56
    move-exception p3

    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :goto_60
    new-instance p3, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lpf;->j:Ljava/io/DataInputStream;

    .line 75
    new-instance p3, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v1, 0x1400

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p3, p0, Lpf;->k:Ljava/io/DataOutputStream;

    .line 77
    new-instance p1, Lxj;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " read thread"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lxj;-><init>(Lpf;Ljava/lang/String;)V

    iput-object p1, p0, Lpf;->s:Ljava/lang/Thread;

    .line 100
    new-instance p1, Lxl;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " write thread"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lxl;-><init>(Lpf;Ljava/lang/String;)V

    iput-object p1, p0, Lpf;->r:Ljava/lang/Thread;

    .line 130
    iget-object p1, p0, Lpf;->s:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 131
    iget-object p1, p0, Lpf;->r:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "disconnect.genericReason"

    invoke-virtual {p0, v0, p1}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lpf;Ljava/lang/Exception;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lpf;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lpf;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lpf;->l:Z

    return p0
.end method

.method static synthetic b(Lpf;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lpf;->q:Z

    return p0
.end method

.method static synthetic c(Lpf;)Z
    .registers 1

    .line 17
    invoke-direct {p0}, Lpf;->e()Z

    move-result p0

    return p0
.end method

.method private d()Z
    .registers 8

    const/4 v0, 0x0

    .line 160
    :try_start_1
    iget-object v1, p0, Lpf;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_54

    iget v1, p0, Lpf;->f:I

    if-eqz v1, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lpf;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lki;

    iget-wide v5, v1, Lki;->j:J

    sub-long/2addr v3, v5

    iget v1, p0, Lpf;->f:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_54

    .line 162
    :cond_24
    iget-object v1, p0, Lpf;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_b2

    .line 163
    :try_start_27
    iget-object v3, p0, Lpf;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lki;

    .line 164
    iget v4, p0, Lpf;->x:I

    invoke-virtual {v3}, Lki;->a()I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lpf;->x:I

    .line 165
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_51

    .line 166
    :try_start_3a
    iget-object v1, p0, Lpf;->k:Ljava/io/DataOutputStream;

    invoke-static {v3, v1}, Lki;->a(Lki;Ljava/io/DataOutputStream;)V

    .line 167
    sget-object v1, Lpf;->e:[I

    invoke-virtual {v3}, Lki;->c()I

    move-result v4

    aget v5, v1, v4

    invoke-virtual {v3}, Lki;->a()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v5, v3

    aput v5, v1, v4
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_b2

    move v1, v2

    goto :goto_55

    :catchall_51
    move-exception v2

    .line 165
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v2

    :cond_54
    move v1, v0

    .line 171
    :goto_55
    iget v3, p0, Lpf;->y:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lpf;->y:I

    if-gtz v3, :cond_b0

    iget-object v3, p0, Lpf;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b0

    iget v3, p0, Lpf;->f:I

    if-eqz v3, :cond_7f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lpf;->o:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lki;

    iget-wide v5, v5, Lki;->j:J

    sub-long/2addr v3, v5

    iget v5, p0, Lpf;->f:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_b0

    .line 173
    :cond_7f
    iget-object v1, p0, Lpf;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_82} :catch_b2

    .line 174
    :try_start_82
    iget-object v3, p0, Lpf;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lki;

    .line 175
    iget v4, p0, Lpf;->x:I

    invoke-virtual {v3}, Lki;->a()I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lpf;->x:I

    .line 176
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_82 .. :try_end_95} :catchall_ad

    .line 177
    :try_start_95
    iget-object v1, p0, Lpf;->k:Ljava/io/DataOutputStream;

    invoke-static {v3, v1}, Lki;->a(Lki;Ljava/io/DataOutputStream;)V

    .line 178
    sget-object v1, Lpf;->e:[I

    invoke-virtual {v3}, Lki;->c()I

    move-result v4

    aget v5, v1, v4

    invoke-virtual {v3}, Lki;->a()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 179
    iput v0, p0, Lpf;->y:I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_ac} :catch_b2

    goto :goto_b1

    :catchall_ad
    move-exception v2

    .line 176
    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    :try_start_af
    throw v2
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b0} :catch_b2

    :cond_b0
    move v2, v1

    :goto_b1
    return v2

    :catch_b2
    move-exception v1

    .line 183
    iget-boolean v2, p0, Lpf;->t:Z

    if-nez v2, :cond_ba

    invoke-direct {p0, v1}, Lpf;->a(Ljava/lang/Exception;)V

    :cond_ba
    return v0
.end method

.method static synthetic d(Lpf;)Z
    .registers 1

    .line 17
    invoke-direct {p0}, Lpf;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lpf;)Ljava/io/DataOutputStream;
    .registers 1

    .line 17
    iget-object p0, p0, Lpf;->k:Ljava/io/DataOutputStream;

    return-object p0
.end method

.method private e()Z
    .registers 8

    const/4 v0, 0x0

    .line 197
    :try_start_1
    iget-object v1, p0, Lpf;->j:Ljava/io/DataInputStream;

    iget-object v2, p0, Lpf;->p:Lti;

    invoke-virtual {v2}, Lti;->c()Z

    move-result v2

    invoke-static {v1, v2}, Lki;->a(Ljava/io/DataInputStream;Z)Lki;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 200
    sget-object v2, Lpf;->d:[I

    invoke-virtual {v1}, Lki;->c()I

    move-result v3

    aget v4, v2, v3

    invoke-virtual {v1}, Lki;->a()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 201
    iget-object v2, p0, Lpf;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_2e

    :cond_27
    const-string v1, "disconnect.endOfStream"

    new-array v2, v0, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p0, v1, v2}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    :goto_2e
    return v0

    :catch_2f
    move-exception v1

    .line 205
    iget-boolean v2, p0, Lpf;->t:Z

    if-nez v2, :cond_37

    invoke-direct {p0, v1}, Lpf;->a(Ljava/lang/Exception;)V

    :cond_37
    return v0
.end method

.method static synthetic f(Lpf;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lpf;->t:Z

    return p0
.end method

.method static synthetic g(Lpf;)Ljava/lang/Thread;
    .registers 1

    .line 17
    iget-object p0, p0, Lpf;->s:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic h(Lpf;)Ljava/lang/Thread;
    .registers 1

    .line 17
    iget-object p0, p0, Lpf;->r:Ljava/lang/Thread;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 190
    iget-object v0, p0, Lpf;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 191
    iget-object v0, p0, Lpf;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 217
    iget-boolean v0, p0, Lpf;->l:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lpf;->t:Z

    .line 219
    iput-object p1, p0, Lpf;->u:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lpf;->v:[Ljava/lang/Object;

    .line 222
    new-instance p1, Lxg;

    invoke-direct {p1, p0}, Lxg;-><init>(Lpf;)V

    invoke-virtual {p1}, Lxg;->start()V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lpf;->l:Z

    const/4 p1, 0x0

    .line 247
    :try_start_18
    iget-object p2, p0, Lpf;->j:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    .line 248
    iput-object p1, p0, Lpf;->j:Ljava/io/DataInputStream;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1f

    .line 252
    :catchall_1f
    :try_start_1f
    iget-object p2, p0, Lpf;->k:Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 253
    iput-object p1, p0, Lpf;->k:Ljava/io/DataOutputStream;
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_26

    .line 257
    :catchall_26
    :try_start_26
    iget-object p2, p0, Lpf;->h:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V

    .line 258
    iput-object p1, p0, Lpf;->h:Ljava/net/Socket;
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2d

    :catchall_2d
    return-void
.end method

.method public a(Lki;)V
    .registers 5

    .line 139
    iget-boolean v0, p0, Lpf;->q:Z

    if-eqz v0, :cond_5

    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Lpf;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_8
    iget v1, p0, Lpf;->x:I

    invoke-virtual {p1}, Lki;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lpf;->x:I

    .line 142
    iget-boolean v1, p1, Lki;->k:Z

    if-eqz v1, :cond_1d

    .line 143
    iget-object v1, p0, Lpf;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 145
    :cond_1d
    iget-object v1, p0, Lpf;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public b()V
    .registers 5

    .line 264
    iget v0, p0, Lpf;->x:I

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    if-le v0, v1, :cond_e

    const-string v0, "disconnect.overflow"

    new-array v1, v2, [Ljava/lang/Object;

    .line 265
    invoke-virtual {p0, v0, v1}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_e
    iget-object v0, p0, Lpf;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 268
    iget v0, p0, Lpf;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lpf;->w:I

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_2a

    const-string v0, "disconnect.timeout"

    new-array v1, v2, [Ljava/lang/Object;

    .line 269
    invoke-virtual {p0, v0, v1}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a

    .line 272
    :cond_28
    iput v2, p0, Lpf;->w:I

    :cond_2a
    :goto_2a
    const/16 v0, 0x64

    .line 277
    :goto_2c
    iget-object v1, p0, Lpf;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    add-int/lit8 v1, v0, -0x1

    if-ltz v0, :cond_47

    .line 278
    iget-object v0, p0, Lpf;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    .line 279
    iget-object v3, p0, Lpf;->p:Lti;

    invoke-virtual {v0, v3}, Lki;->a(Lti;)V

    move v0, v1

    goto :goto_2c

    .line 282
    :cond_47
    invoke-virtual {p0}, Lpf;->a()V

    .line 284
    iget-boolean v0, p0, Lpf;->t:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lpf;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 285
    iget-object v0, p0, Lpf;->p:Lti;

    iget-object v1, p0, Lpf;->u:Ljava/lang/String;

    iget-object v2, p0, Lpf;->v:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lti;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5f
    return-void
.end method

.method public c()V
    .registers 2

    .line 294
    invoke-virtual {p0}, Lpf;->a()V

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lpf;->q:Z

    .line 296
    iget-object v0, p0, Lpf;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 297
    new-instance v0, Lxh;

    invoke-direct {v0, p0}, Lxh;-><init>(Lpf;)V

    invoke-virtual {v0}, Lxh;->start()V

    return-void
.end method
