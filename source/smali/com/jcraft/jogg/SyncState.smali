###### Class com.jcraft.jogg.SyncState (com.jcraft.jogg.SyncState)
.class public Lcom/jcraft/jogg/SyncState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bodybytes:I

.field private chksum:[B

.field public data:[B

.field fill:I

.field headerbytes:I

.field private pageseek:Lcom/jcraft/jogg/Page;

.field returned:I

.field storage:I

.field unsynced:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jogg/SyncState;->pageseek:Lcom/jcraft/jogg/Page;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 103
    iput-object v0, p0, Lcom/jcraft/jogg/SyncState;->chksum:[B

    return-void
.end method


# virtual methods
.method public buffer(I)I
    .registers 6

    .line 63
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 64
    iget v2, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    if-lez v2, :cond_11

    .line 66
    iget-object v3, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_11
    iput v1, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 71
    :cond_13
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->storage:I

    iget v2, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_30

    add-int/2addr p1, v2

    add-int/lit16 p1, p1, 0x1000

    .line 74
    iget-object v0, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    if-eqz v0, :cond_2a

    .line 75
    new-array v2, p1, [B

    .line 76
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v2, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    goto :goto_2e

    .line 80
    :cond_2a
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    .line 82
    :goto_2e
    iput p1, p0, Lcom/jcraft/jogg/SyncState;->storage:I

    .line 85
    :cond_30
    iget p1, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    return p1
.end method

.method public clear()I
    .registers 2

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/jcraft/jogg/SyncState;->data:[B

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferOffset()I
    .registers 2

    .line 273
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    return v0
.end method

.method public getDataOffset()I
    .registers 2

    .line 269
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    return v0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public pageout(Lcom/jcraft/jogg/Page;)I
    .registers 4

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jogg/SyncState;->pageseek(Lcom/jcraft/jogg/Page;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_8

    return v1

    :cond_8
    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 247
    :cond_c
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->unsynced:I

    if-nez v0, :cond_0

    .line 248
    iput v1, p0, Lcom/jcraft/jogg/SyncState;->unsynced:I

    const/4 p1, -0x1

    return p1
.end method

.method public pageseek(Lcom/jcraft/jogg/Page;)I
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 106
    iget v2, v1, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 108
    iget v3, v1, Lcom/jcraft/jogg/SyncState;->fill:I

    sub-int/2addr v3, v2

    .line 110
    iget v4, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    const/16 v5, 0x4f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_78

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_16

    return v7

    .line 116
    :cond_16
    iget-object v8, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    aget-byte v9, v8, v2

    if-ne v9, v5, :cond_58

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v8, v9

    const/16 v10, 0x67

    if-ne v9, v10, :cond_58

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, v8, v9

    if-ne v9, v10, :cond_58

    add-int/lit8 v9, v2, 0x3

    aget-byte v9, v8, v9

    const/16 v10, 0x53

    if-eq v9, v10, :cond_33

    goto :goto_58

    :cond_33
    add-int/lit8 v9, v2, 0x1a

    .line 136
    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v4

    if-ge v3, v8, :cond_3d

    return v7

    :cond_3d
    move v4, v7

    .line 142
    :goto_3e
    iget-object v10, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    aget-byte v11, v10, v9

    and-int/lit16 v11, v11, 0xff

    if-ge v4, v11, :cond_55

    .line 143
    iget v11, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    add-int/lit8 v12, v2, 0x1b

    add-int/2addr v12, v4

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v11, v10

    iput v11, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 145
    :cond_55
    iput v8, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    goto :goto_78

    .line 118
    :cond_58
    :goto_58
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 119
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    move v0, v7

    :goto_5d
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_6f

    .line 124
    iget-object v4, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v8, v2, 0x1

    add-int/2addr v8, v0

    aget-byte v4, v4, v8

    if-ne v4, v5, :cond_6c

    move v7, v8

    goto :goto_6f

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6f
    :goto_6f
    if-nez v7, :cond_73

    .line 131
    iget v7, v1, Lcom/jcraft/jogg/SyncState;->fill:I

    .line 133
    :cond_73
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->returned:I

    sub-int/2addr v7, v2

    neg-int v0, v7

    return v0

    .line 148
    :cond_78
    :goto_78
    iget v4, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    iget v8, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    add-int/2addr v4, v8

    if-le v4, v3, :cond_80

    return v7

    .line 152
    :cond_80
    iget-object v4, v1, Lcom/jcraft/jogg/SyncState;->chksum:[B

    monitor-enter v4

    .line 155
    :try_start_83
    iget-object v8, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v9, v2, 0x16

    iget-object v10, v1, Lcom/jcraft/jogg/SyncState;->chksum:[B

    const/4 v11, 0x4

    invoke-static {v8, v9, v10, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v8, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    aput-byte v7, v8, v9

    add-int/lit8 v10, v2, 0x17

    .line 157
    aput-byte v7, v8, v10

    add-int/lit8 v12, v2, 0x18

    .line 158
    aput-byte v7, v8, v12

    add-int/lit8 v13, v2, 0x19

    .line 159
    aput-byte v7, v8, v13

    .line 162
    iget-object v14, v1, Lcom/jcraft/jogg/SyncState;->pageseek:Lcom/jcraft/jogg/Page;

    .line 163
    iput-object v8, v14, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 164
    iput v2, v14, Lcom/jcraft/jogg/Page;->header:I

    .line 165
    iget v8, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    iput v8, v14, Lcom/jcraft/jogg/Page;->header_len:I

    .line 167
    iget-object v8, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v8, v14, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 168
    iget v8, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    add-int/2addr v8, v2

    iput v8, v14, Lcom/jcraft/jogg/Page;->body:I

    .line 169
    iget v8, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    iput v8, v14, Lcom/jcraft/jogg/Page;->body_len:I

    .line 170
    invoke-virtual {v14}, Lcom/jcraft/jogg/Page;->checksum()V

    .line 173
    iget-object v8, v1, Lcom/jcraft/jogg/SyncState;->chksum:[B

    aget-byte v14, v8, v7

    iget-object v15, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    aget-byte v5, v15, v9

    if-ne v14, v5, :cond_101

    aget-byte v5, v8, v6

    aget-byte v10, v15, v10

    if-ne v5, v10, :cond_101

    const/4 v5, 0x2

    aget-byte v5, v8, v5

    aget-byte v10, v15, v12

    if-ne v5, v10, :cond_101

    const/4 v5, 0x3

    aget-byte v5, v8, v5

    aget-byte v10, v15, v13

    if-eq v5, v10, :cond_d6

    goto :goto_101

    .line 196
    :cond_d6
    monitor-exit v4
    :try_end_d7
    .catchall {:try_start_83 .. :try_end_d7} :catchall_127

    .line 200
    iget v2, v1, Lcom/jcraft/jogg/SyncState;->returned:I

    if-eqz v0, :cond_f0

    .line 203
    iput-object v15, v0, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 204
    iput v2, v0, Lcom/jcraft/jogg/Page;->header:I

    .line 205
    iget v3, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    iput v3, v0, Lcom/jcraft/jogg/Page;->header_len:I

    .line 206
    iget-object v3, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v3, v0, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 207
    iget v3, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/jcraft/jogg/Page;->body:I

    .line 208
    iget v2, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    iput v2, v0, Lcom/jcraft/jogg/Page;->body_len:I

    .line 211
    :cond_f0
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->unsynced:I

    .line 212
    iget v0, v1, Lcom/jcraft/jogg/SyncState;->returned:I

    iget v2, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    iget v3, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v1, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 213
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 214
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    return v2

    .line 177
    :cond_101
    :goto_101
    :try_start_101
    invoke-static {v8, v7, v15, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 181
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    move v0, v7

    :goto_109
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_11d

    .line 185
    iget-object v5, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    add-int/lit8 v8, v2, 0x1

    add-int/2addr v8, v0

    aget-byte v5, v5, v8

    const/16 v9, 0x4f

    if-ne v5, v9, :cond_11a

    move v7, v8

    goto :goto_11d

    :cond_11a
    add-int/lit8 v0, v0, 0x1

    goto :goto_109

    :cond_11d
    :goto_11d
    if-nez v7, :cond_121

    .line 192
    iget v7, v1, Lcom/jcraft/jogg/SyncState;->fill:I

    .line 193
    :cond_121
    iput v7, v1, Lcom/jcraft/jogg/SyncState;->returned:I

    sub-int/2addr v7, v2

    neg-int v0, v7

    .line 194
    monitor-exit v4

    return v0

    :catchall_127
    move-exception v0

    .line 196
    monitor-exit v4
    :try_end_129
    .catchall {:try_start_101 .. :try_end_129} :catchall_127

    throw v0
.end method

.method public reset()I
    .registers 2

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    .line 258
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->returned:I

    .line 259
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->unsynced:I

    .line 260
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->headerbytes:I

    .line 261
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->bodybytes:I

    return v0
.end method

.method public wrote(I)I
    .registers 5

    .line 89
    iget v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/jcraft/jogg/SyncState;->storage:I

    if-le v1, v2, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    add-int/2addr v0, p1

    .line 91
    iput v0, p0, Lcom/jcraft/jogg/SyncState;->fill:I

    const/4 p1, 0x0

    return p1
.end method
