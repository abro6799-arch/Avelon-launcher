###### Class defpackage.qj (qj)
.class public Lqj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/io/File;

.field private c:Ljava/io/RandomAccessFile;

.field private final d:[I

.field private final e:[I

.field private f:Ljava/util/ArrayList;

.field private g:I

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 74
    sput-object v0, Lqj;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 13

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lqj;->h:J

    const/16 v2, 0x400

    new-array v3, v2, [I

    .line 85
    iput-object v3, p0, Lqj;->d:[I

    new-array v3, v2, [I

    .line 86
    iput-object v3, p0, Lqj;->e:[I

    .line 88
    iput-object p1, p0, Lqj;->b:Ljava/io/File;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "REGION LOAD "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lqj;->b(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 128
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 91
    iput v3, p0, Lqj;->g:I

    .line 94
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lqj;->h:J

    .line 98
    :cond_37
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    .line 100
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1000

    cmp-long p1, v5, v7

    if-gez p1, :cond_66

    move p1, v3

    :goto_4b
    if-ge p1, v2, :cond_55

    .line 103
    iget-object v5, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4b

    :cond_55
    move p1, v3

    :goto_56
    if-ge p1, v2, :cond_60

    .line 107
    iget-object v5, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_56

    .line 110
    :cond_60
    iget p1, p0, Lqj;->g:I

    add-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lqj;->g:I

    .line 113
    :cond_66
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xfff

    and-long/2addr v5, v7

    cmp-long p1, v5, v0

    if-eqz p1, :cond_88

    move p1, v3

    :goto_74
    int-to-long v5, p1

    .line 115
    iget-object v9, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    and-long/2addr v9, v7

    cmp-long v5, v5, v9

    if-gez v5, :cond_88

    .line 116
    iget-object v5, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_74

    .line 121
    :cond_88
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int p1, v5

    div-int/lit16 p1, p1, 0x1000

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lqj;->f:Ljava/util/ArrayList;

    move v5, v3

    :goto_99
    const/4 v6, 0x1

    if-ge v5, p1, :cond_a8

    .line 125
    iget-object v7, p0, Lqj;->f:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 128
    :cond_a8
    iget-object p1, p0, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    move p1, v3

    :goto_b8
    if-ge p1, v2, :cond_e4

    .line 133
    iget-object v0, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 134
    iget-object v1, p0, Lqj;->d:[I

    aput v0, v1, p1

    if-eqz v0, :cond_e1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int v5, v1, v0

    .line 135
    iget-object v6, p0, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v5, v6, :cond_e1

    move v5, v3

    :goto_d5
    if-ge v5, v0, :cond_e1

    .line 137
    iget-object v6, p0, Lqj;->f:Ljava/util/ArrayList;

    add-int v7, v1, v5

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    :cond_e1
    add-int/lit8 p1, p1, 0x1

    goto :goto_b8

    :cond_e4
    :goto_e4
    if-ge v3, v2, :cond_f7

    .line 142
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    .line 143
    iget-object v0, p0, Lqj;->e:[I

    aput p1, v0, v3
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_f0} :catch_f3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    :catch_f3
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_f7
    return-void
.end method

.method private a(III)V
    .registers 6

    .line 362
    iget-object v0, p0, Lqj;->d:[I

    mul-int/lit8 p2, p2, 0x20

    add-int/2addr p1, p2

    aput p3, v0, p1

    .line 363
    iget-object p2, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    mul-int/lit8 p1, p1, 0x4

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 364
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method

.method private a(I[BI)V
    .registers 7

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lqj;->b(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    mul-int/lit16 p1, p1, 0x1000

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 343
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 344
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 345
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private a(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 8

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REGION "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lqj;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "B = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lqj;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REGION "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lqj;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lqj;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(III)V
    .registers 6

    .line 368
    iget-object v0, p0, Lqj;->e:[I

    mul-int/lit8 p2, p2, 0x20

    add-int/2addr p1, p2

    aput p3, v0, p1

    .line 369
    iget-object p2, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    mul-int/lit8 p1, p1, 0x4

    add-int/lit16 p1, p1, 0x1000

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 370
    iget-object p1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lqj;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lqj;->a(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private d(II)Z
    .registers 4

    if-ltz p1, :cond_d

    const/16 v0, 0x20

    if-ge p1, v0, :cond_d

    if-ltz p2, :cond_d

    if-lt p2, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method private e(II)I
    .registers 4

    .line 354
    iget-object v0, p0, Lqj;->d:[I

    mul-int/lit8 p2, p2, 0x20

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 3

    monitor-enter p0

    .line 157
    :try_start_1
    iget v0, p0, Lqj;->g:I

    const/4 v1, 0x0

    .line 158
    iput v1, p0, Lqj;->g:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 159
    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(II)Ljava/io/DataInputStream;
    .registers 11

    const-string v0, "unknown version "

    const-string v1, "invalid length: "

    monitor-enter p0

    .line 188
    :try_start_5
    invoke-direct {p0, p1, p2}, Lqj;->d(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    const-string v0, "READ"

    const-string v1, "out of bounds"

    .line 189
    invoke-direct {p0, v0, p1, p2, v1}, Lqj;->b(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_bb

    .line 190
    monitor-exit p0

    return-object v3

    .line 194
    :cond_15
    :try_start_15
    invoke-direct {p0, p1, p2}, Lqj;->e(II)I

    move-result v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_b2
    .catchall {:try_start_15 .. :try_end_19} :catchall_bb

    if-nez v2, :cond_1d

    .line 197
    monitor-exit p0

    return-object v3

    :cond_1d
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int v5, v4, v2

    .line 203
    :try_start_23
    iget-object v6, p0, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_34

    const-string v0, "READ"

    const-string v1, "invalid sector"

    .line 204
    invoke-direct {p0, v0, p1, p2, v1}, Lqj;->b(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_32} :catch_b2
    .catchall {:try_start_23 .. :try_end_32} :catchall_bb

    .line 205
    monitor-exit p0

    return-object v3

    .line 208
    :cond_34
    :try_start_34
    iget-object v5, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    mul-int/lit16 v4, v4, 0x1000

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 209
    iget-object v4, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    mul-int/lit16 v5, v2, 0x1000

    if-le v4, v5, :cond_61

    const-string v0, "READ"

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > 4096 * "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lqj;->b(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5f} :catch_b2
    .catchall {:try_start_34 .. :try_end_5f} :catchall_bb

    .line 213
    monitor-exit p0

    return-object v3

    .line 216
    :cond_61
    :try_start_61
    iget-object v1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_83

    sub-int/2addr v4, v2

    .line 218
    new-array v0, v4, [B

    .line 219
    iget-object v1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 220
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_81} :catch_b2
    .catchall {:try_start_61 .. :try_end_81} :catchall_bb

    .line 222
    monitor-exit p0

    return-object v1

    :cond_83
    const/4 v5, 0x2

    if-ne v1, v5, :cond_9f

    sub-int/2addr v4, v2

    .line 224
    :try_start_87
    new-array v0, v4, [B

    .line 225
    iget-object v1, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 226
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_9d} :catch_b2
    .catchall {:try_start_87 .. :try_end_9d} :catchall_bb

    .line 228
    monitor-exit p0

    return-object v1

    :cond_9f
    :try_start_9f
    const-string v2, "READ"

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, p2, v0}, Lqj;->b(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_b0} :catch_b2
    .catchall {:try_start_9f .. :try_end_b0} :catchall_bb

    .line 232
    monitor-exit p0

    return-object v3

    :catch_b2
    :try_start_b2
    const-string v0, "READ"

    const-string v1, "exception"

    .line 234
    invoke-direct {p0, v0, p1, p2, v1}, Lqj;->b(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_bb

    .line 235
    monitor-exit p0

    return-object v3

    :catchall_bb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized a(II[BI)V
    .registers 19

    move-object v7, p0

    move v0, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    monitor-enter p0

    .line 266
    :try_start_9
    invoke-direct/range {p0 .. p2}, Lqj;->e(II)I

    move-result v1

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v10, 0x5

    .line 269
    div-int/lit16 v2, v2, 0x1000
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_106
    .catchall {:try_start_9 .. :try_end_15} :catchall_104

    const/4 v3, 0x1

    add-int/lit8 v12, v2, 0x1

    const/16 v2, 0x100

    if-lt v12, v2, :cond_1e

    .line 273
    monitor-exit p0

    return-void

    :cond_1e
    if-eqz v11, :cond_34

    if-ne v1, v12, :cond_34

    :try_start_22
    const-string v2, "SAVE"

    const-string v6, "rewrite"

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    .line 278
    invoke-direct/range {v1 .. v6}, Lqj;->a(Ljava/lang/String;IIILjava/lang/String;)V

    .line 279
    invoke-direct {p0, v11, v9, v10}, Lqj;->a(I[BI)V

    goto/16 :goto_f8

    :cond_34
    const/4 v13, 0x0

    move v2, v13

    :goto_36
    if-ge v2, v1, :cond_46

    .line 285
    iget-object v4, v7, Lqj;->f:Ljava/util/ArrayList;

    add-int v5, v11, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 289
    :cond_46
    iget-object v1, v7, Lqj;->f:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8a

    move v2, v1

    move v4, v13

    .line 292
    :goto_55
    iget-object v5, v7, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_88

    if-eqz v4, :cond_72

    .line 294
    iget-object v5, v7, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_70

    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    :cond_70
    move v4, v13

    goto :goto_82

    .line 296
    :cond_72
    iget-object v5, v7, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_82

    move v2, v1

    move v4, v3

    :cond_82
    :goto_82
    if-lt v4, v12, :cond_85

    goto :goto_88

    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_88
    :goto_88
    move v11, v2

    goto :goto_8c

    :cond_8a
    move v11, v1

    move v4, v13

    :goto_8c
    if-lt v4, v12, :cond_b6

    const-string v2, "SAVE"

    const-string v6, "reuse"

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    .line 308
    invoke-direct/range {v1 .. v6}, Lqj;->a(Ljava/lang/String;IIILjava/lang/String;)V

    shl-int/lit8 v1, v11, 0x8

    or-int/2addr v1, v12

    .line 310
    invoke-direct {p0, p1, v8, v1}, Lqj;->a(III)V

    move v1, v13

    :goto_a2
    if-ge v1, v12, :cond_b2

    .line 312
    iget-object v2, v7, Lqj;->f:Ljava/util/ArrayList;

    add-int v3, v11, v1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 314
    :cond_b2
    invoke-direct {p0, v11, v9, v10}, Lqj;->a(I[BI)V

    goto :goto_f8

    :cond_b6
    const-string v2, "SAVE"

    const-string v6, "grow"

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    .line 320
    invoke-direct/range {v1 .. v6}, Lqj;->a(Ljava/lang/String;IIILjava/lang/String;)V

    .line 321
    iget-object v1, v7, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 322
    iget-object v1, v7, Lqj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v13

    :goto_d3
    if-ge v2, v12, :cond_e8

    .line 324
    iget-object v3, v7, Lqj;->c:Ljava/io/RandomAccessFile;

    sget-object v4, Lqj;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 325
    iget-object v3, v7, Lqj;->f:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 327
    :cond_e8
    iget v2, v7, Lqj;->g:I

    mul-int/lit16 v3, v12, 0x1000

    add-int/2addr v2, v3

    iput v2, v7, Lqj;->g:I

    .line 329
    invoke-direct {p0, v1, v9, v10}, Lqj;->a(I[BI)V

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v12

    .line 330
    invoke-direct {p0, p1, v8, v1}, Lqj;->a(III)V

    .line 333
    :goto_f8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {p0, p1, v8, v1}, Lqj;->b(III)V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_103} :catch_106
    .catchall {:try_start_22 .. :try_end_103} :catchall_104

    goto :goto_10a

    :catchall_104
    move-exception v0

    goto :goto_10c

    :catch_106
    move-exception v0

    .line 335
    :try_start_107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_104

    .line 337
    :goto_10a
    monitor-exit p0

    return-void

    :goto_10c
    monitor-exit p0

    throw v0
.end method

.method public b(II)Ljava/io/DataOutputStream;
    .registers 6

    .line 240
    invoke-direct {p0, p1, p2}, Lqj;->d(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 242
    :cond_8
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Lmcport/FastDeflate;

    new-instance v2, Lhz;

    invoke-direct {v2, p0, p1, p2}, Lhz;-><init>(Lqj;II)V

    invoke-direct {v1, v2}, Lmcport/FastDeflate;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public b()V
    .registers 2

    .line 374
    iget-object v0, p0, Lqj;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public c(II)Z
    .registers 3

    .line 358
    invoke-direct {p0, p1, p2}, Lqj;->e(II)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
