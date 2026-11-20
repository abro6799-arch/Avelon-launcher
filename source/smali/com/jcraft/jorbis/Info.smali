###### Class com.jcraft.jorbis.Info (com.jcraft.jorbis.Info)
.class public Lcom/jcraft/jorbis/Info;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OV_EBADPACKET:I = -0x88

.field private static final OV_ENOTAUDIO:I = -0x87

.field private static final VI_FLOORB:I = 0x2

.field private static final VI_MAPB:I = 0x1

.field private static final VI_RESB:I = 0x3

.field private static final VI_TIMEB:I = 0x1

.field private static final VI_WINDOWB:I = 0x1

.field private static _vorbis:[B


# instance fields
.field bitrate_lower:I

.field bitrate_nominal:I

.field bitrate_upper:I

.field blocksizes:[I

.field book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

.field books:I

.field public channels:I

.field envelopesa:I

.field floor_param:[Ljava/lang/Object;

.field floor_type:[I

.field floors:I

.field map_param:[Ljava/lang/Object;

.field map_type:[I

.field maps:I

.field mode_param:[Lcom/jcraft/jorbis/InfoMode;

.field modes:I

.field preecho_clamp:F

.field preecho_thresh:F

.field psy_param:[Lcom/jcraft/jorbis/PsyInfo;

.field psys:I

.field public rate:I

.field residue_param:[Ljava/lang/Object;

.field residue_type:[I

.field residues:I

.field time_param:[Ljava/lang/Object;

.field time_type:[I

.field times:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vorbis"

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Info;->_vorbis:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 69
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    .line 86
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    .line 87
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    .line 89
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    .line 90
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    .line 92
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    .line 93
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    .line 96
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    const/16 v0, 0x40

    new-array v0, v0, [Lcom/jcraft/jorbis/PsyInfo;

    .line 100
    iput-object v0, p0, Lcom/jcraft/jorbis/Info;->psy_param:[Lcom/jcraft/jorbis/PsyInfo;

    return-void
.end method


# virtual methods
.method public blocksize(Lcom/jcraft/jogg/Packet;)I
    .registers 5

    .line 437
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    .line 441
    iget-object v1, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v2, p1, Lcom/jcraft/jogg/Packet;->packet:I

    iget p1, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    const/4 p1, 0x1

    .line 444
    invoke-virtual {v0, p1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    if-eqz v1, :cond_18

    const/16 p1, -0x87

    return p1

    .line 450
    :cond_18
    iget v1, p0, Lcom/jcraft/jorbis/Info;->modes:I

    const/4 v2, 0x0

    :goto_1b
    if-le v1, p1, :cond_22

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 457
    :cond_22
    invoke-virtual {v0, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2c

    const/16 p1, -0x88

    return p1

    .line 461
    :cond_2c
    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object p1, v1, p1

    iget p1, p1, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    aget p1, v0, p1

    return p1
.end method

.method public clear()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 113
    :goto_2
    iget v2, p0, Lcom/jcraft/jorbis/Info;->modes:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_e

    .line 114
    iget-object v2, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_e
    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    move v1, v0

    .line 118
    :goto_11
    iget v2, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-ge v1, v2, :cond_27

    .line 119
    sget-object v2, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/jcraft/jorbis/FuncMapping;->free_info(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 121
    :cond_27
    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    move v1, v0

    .line 123
    :goto_2a
    iget v2, p0, Lcom/jcraft/jorbis/Info;->times:I

    if-ge v1, v2, :cond_40

    .line 124
    sget-object v2, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/jcraft/jorbis/FuncTime;->free_info(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 126
    :cond_40
    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    move v1, v0

    .line 128
    :goto_43
    iget v2, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-ge v1, v2, :cond_59

    .line 129
    sget-object v2, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/jcraft/jorbis/FuncFloor;->free_info(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 131
    :cond_59
    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    move v1, v0

    .line 133
    :goto_5c
    iget v2, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-ge v1, v2, :cond_72

    .line 134
    sget-object v2, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/jcraft/jorbis/FuncResidue;->free_info(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 136
    :cond_72
    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    move v1, v0

    .line 142
    :goto_75
    iget v2, p0, Lcom/jcraft/jorbis/Info;->books:I

    if-ge v1, v2, :cond_89

    .line 144
    iget-object v2, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v2, v2, v1

    if-eqz v2, :cond_86

    .line 145
    invoke-virtual {v2}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    .line 146
    iget-object v2, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aput-object v3, v2, v1

    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 150
    :cond_89
    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    .line 152
    :goto_8b
    iget v1, p0, Lcom/jcraft/jorbis/Info;->psys:I

    if-ge v0, v1, :cond_99

    .line 153
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->psy_param:[Lcom/jcraft/jorbis/PsyInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jcraft/jorbis/PsyInfo;->free()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_99
    return-void
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/jcraft/jorbis/Info;->rate:I

    return-void
.end method

.method pack_books(Lcom/jcraft/jogg/Buffer;)I
    .registers 10

    const/4 v0, 0x5

    const/16 v1, 0x8

    .line 383
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 384
    sget-object v0, Lcom/jcraft/jorbis/Info;->_vorbis:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->write([B)V

    .line 387
    iget v0, p0, Lcom/jcraft/jorbis/Info;->books:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    const/4 v0, 0x0

    move v3, v0

    .line 388
    :goto_14
    iget v4, p0, Lcom/jcraft/jorbis/Info;->books:I

    if-ge v3, v4, :cond_27

    .line 389
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/jcraft/jorbis/StaticCodeBook;->pack(Lcom/jcraft/jogg/Buffer;)I

    move-result v4

    if-eqz v4, :cond_24

    const/4 p1, -0x1

    return p1

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 396
    :cond_27
    iget v3, p0, Lcom/jcraft/jorbis/Info;->times:I

    sub-int/2addr v3, v2

    const/4 v4, 0x6

    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v3, v0

    .line 397
    :goto_2f
    iget v5, p0, Lcom/jcraft/jorbis/Info;->times:I

    const/16 v6, 0x10

    if-ge v3, v5, :cond_4e

    .line 398
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 399
    sget-object v5, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6, p1}, Lcom/jcraft/jorbis/FuncTime;->pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 403
    :cond_4e
    iget v3, p0, Lcom/jcraft/jorbis/Info;->floors:I

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v3, v0

    .line 404
    :goto_55
    iget v5, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-ge v3, v5, :cond_72

    .line 405
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 406
    sget-object v5, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v7, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v7, v7, v3

    aget-object v5, v5, v7

    iget-object v7, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v7, v7, v3

    invoke-virtual {v5, v7, p1}, Lcom/jcraft/jorbis/FuncFloor;->pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 410
    :cond_72
    iget v3, p0, Lcom/jcraft/jorbis/Info;->residues:I

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v3, v0

    .line 411
    :goto_79
    iget v5, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-ge v3, v5, :cond_96

    .line 412
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 413
    sget-object v5, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v7, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v7, v7, v3

    aget-object v5, v5, v7

    iget-object v7, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v7, v7, v3

    invoke-virtual {v5, v7, p1}, Lcom/jcraft/jorbis/FuncResidue;->pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 417
    :cond_96
    iget v3, p0, Lcom/jcraft/jorbis/Info;->maps:I

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v3, v0

    .line 418
    :goto_9d
    iget v5, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-ge v3, v5, :cond_ba

    .line 419
    iget-object v5, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 420
    sget-object v5, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    iget-object v7, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v7, v7, v3

    aget-object v5, v5, v7

    iget-object v7, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v7, v7, v3

    invoke-virtual {v5, p0, v7, p1}, Lcom/jcraft/jorbis/FuncMapping;->pack(Lcom/jcraft/jorbis/Info;Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 424
    :cond_ba
    iget v3, p0, Lcom/jcraft/jorbis/Info;->modes:I

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v3, v0

    .line 425
    :goto_c1
    iget v4, p0, Lcom/jcraft/jorbis/Info;->modes:I

    if-ge v3, v4, :cond_ec

    .line 426
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    invoke-virtual {p1, v4, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 427
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    invoke-virtual {p1, v4, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 428
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->transformtype:I

    invoke-virtual {p1, v4, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 429
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    invoke-virtual {p1, v4, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 431
    :cond_ec
    invoke-virtual {p1, v2, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    return v0
.end method

.method pack_info(Lcom/jcraft/jogg/Buffer;)I
    .registers 7

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 364
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 365
    sget-object v2, Lcom/jcraft/jorbis/Info;->_vorbis:[B

    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->write([B)V

    const/4 v2, 0x0

    const/16 v3, 0x20

    .line 368
    invoke-virtual {p1, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 369
    iget v4, p0, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-virtual {p1, v4, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 370
    iget v1, p0, Lcom/jcraft/jorbis/Info;->rate:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 372
    iget v1, p0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 373
    iget v1, p0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 374
    iget v1, p0, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 376
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 377
    iget-object v1, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 378
    invoke-virtual {p1, v0, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    return v2
.end method

.method public synthesis_headerin(Lcom/jcraft/jorbis/Comment;Lcom/jcraft/jogg/Packet;)I
    .registers 11

    .line 312
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    const/4 v1, -0x1

    if-eqz p2, :cond_77

    .line 315
    iget-object v2, p2, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v3, p2, Lcom/jcraft/jogg/Packet;->packet:I

    iget v4, p2, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    const/4 v2, 0x6

    new-array v3, v2, [B

    const/16 v4, 0x8

    .line 321
    invoke-virtual {v0, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    .line 322
    invoke-virtual {v0, v3, v2}, Lcom/jcraft/jogg/Buffer;->read([BI)V

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    const/16 v5, 0x76

    if-ne v2, v5, :cond_77

    const/4 v2, 0x1

    aget-byte v5, v3, v2

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_77

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    const/16 v6, 0x72

    if-ne v5, v6, :cond_77

    const/4 v5, 0x3

    aget-byte v6, v3, v5

    const/16 v7, 0x62

    if-ne v6, v7, :cond_77

    const/4 v6, 0x4

    aget-byte v6, v3, v6

    const/16 v7, 0x69

    if-ne v6, v7, :cond_77

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    const/16 v7, 0x73

    if-eq v3, v7, :cond_48

    goto :goto_77

    :cond_48
    if-eq v4, v2, :cond_68

    if-eq v4, v5, :cond_5e

    if-eq v4, v6, :cond_4f

    goto :goto_77

    .line 346
    :cond_4f
    iget p2, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-eqz p2, :cond_5d

    iget-object p1, p1, Lcom/jcraft/jorbis/Comment;->vendor:[B

    if-nez p1, :cond_58

    goto :goto_5d

    .line 350
    :cond_58
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Info;->unpack_books(Lcom/jcraft/jogg/Buffer;)I

    move-result p1

    return p1

    :cond_5d
    :goto_5d
    return v1

    .line 340
    :cond_5e
    iget p2, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-nez p2, :cond_63

    return v1

    .line 344
    :cond_63
    invoke-virtual {p1, v0}, Lcom/jcraft/jorbis/Comment;->unpack(Lcom/jcraft/jogg/Buffer;)I

    move-result p1

    return p1

    .line 330
    :cond_68
    iget p1, p2, Lcom/jcraft/jogg/Packet;->b_o_s:I

    if-nez p1, :cond_6d

    return v1

    .line 334
    :cond_6d
    iget p1, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-eqz p1, :cond_72

    return v1

    .line 338
    :cond_72
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Info;->unpack_info(Lcom/jcraft/jogg/Buffer;)I

    move-result p1

    return p1

    :cond_77
    :goto_77
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->version:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->channels:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->rate:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpack_books(Lcom/jcraft/jogg/Buffer;)I
    .registers 12

    const/16 v0, 0x8

    .line 186
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jorbis/Info;->books:I

    .line 188
    iget-object v3, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    if-eqz v3, :cond_11

    array-length v3, v3

    if-eq v3, v1, :cond_15

    .line 189
    :cond_11
    new-array v1, v1, [Lcom/jcraft/jorbis/StaticCodeBook;

    iput-object v1, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    :cond_15
    const/4 v1, 0x0

    move v3, v1

    .line 190
    :goto_17
    iget v4, p0, Lcom/jcraft/jorbis/Info;->books:I

    const/4 v5, -0x1

    if-ge v3, v4, :cond_36

    .line 191
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    new-instance v6, Lcom/jcraft/jorbis/StaticCodeBook;

    invoke-direct {v6}, Lcom/jcraft/jorbis/StaticCodeBook;-><init>()V

    aput-object v6, v4, v3

    .line 192
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->book_param:[Lcom/jcraft/jorbis/StaticCodeBook;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/jcraft/jorbis/StaticCodeBook;->unpack(Lcom/jcraft/jogg/Buffer;)I

    move-result v4

    if-eqz v4, :cond_33

    .line 193
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_36
    const/4 v3, 0x6

    .line 199
    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/jcraft/jorbis/Info;->times:I

    .line 200
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    if-eqz v6, :cond_45

    array-length v6, v6

    if-eq v6, v4, :cond_49

    .line 201
    :cond_45
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    .line 202
    :cond_49
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    if-eqz v6, :cond_50

    array-length v6, v6

    if-eq v6, v4, :cond_54

    .line 203
    :cond_50
    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    :cond_54
    move v4, v1

    .line 204
    :goto_55
    iget v6, p0, Lcom/jcraft/jorbis/Info;->times:I

    const/16 v7, 0x10

    if-ge v4, v6, :cond_8d

    .line 205
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    invoke-virtual {p1, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v7

    aput v7, v6, v4

    .line 206
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v6, v6, v4

    if-ltz v6, :cond_89

    if-lt v6, v2, :cond_6c

    goto :goto_89

    .line 210
    :cond_6c
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    sget-object v7, Lcom/jcraft/jorbis/FuncTime;->time_P:[Lcom/jcraft/jorbis/FuncTime;

    iget-object v8, p0, Lcom/jcraft/jorbis/Info;->time_type:[I

    aget v8, v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v7, p0, p1}, Lcom/jcraft/jorbis/FuncTime;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    .line 211
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->time_param:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-nez v6, :cond_86

    .line 212
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 207
    :cond_89
    :goto_89
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    .line 218
    :cond_8d
    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/jcraft/jorbis/Info;->floors:I

    .line 219
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    if-eqz v6, :cond_9b

    array-length v6, v6

    if-eq v6, v4, :cond_9f

    .line 220
    :cond_9b
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    .line 221
    :cond_9f
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    if-eqz v6, :cond_a6

    array-length v6, v6

    if-eq v6, v4, :cond_aa

    .line 222
    :cond_a6
    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    :cond_aa
    move v4, v1

    .line 224
    :goto_ab
    iget v6, p0, Lcom/jcraft/jorbis/Info;->floors:I

    if-ge v4, v6, :cond_e2

    .line 225
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    invoke-virtual {p1, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v6, v4

    .line 226
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v6, v6, v4

    if-ltz v6, :cond_de

    const/4 v8, 0x2

    if-lt v6, v8, :cond_c1

    goto :goto_de

    .line 231
    :cond_c1
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    sget-object v8, Lcom/jcraft/jorbis/FuncFloor;->floor_P:[Lcom/jcraft/jorbis/FuncFloor;

    iget-object v9, p0, Lcom/jcraft/jorbis/Info;->floor_type:[I

    aget v9, v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v8, p0, p1}, Lcom/jcraft/jorbis/FuncFloor;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v4

    .line 232
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->floor_param:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-nez v6, :cond_db

    .line 233
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    :cond_db
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 227
    :cond_de
    :goto_de
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    .line 239
    :cond_e2
    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/jcraft/jorbis/Info;->residues:I

    .line 241
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    if-eqz v6, :cond_f0

    array-length v6, v6

    if-eq v6, v4, :cond_f4

    .line 242
    :cond_f0
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    .line 244
    :cond_f4
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    if-eqz v6, :cond_fb

    array-length v6, v6

    if-eq v6, v4, :cond_ff

    .line 245
    :cond_fb
    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    :cond_ff
    move v4, v1

    .line 247
    :goto_100
    iget v6, p0, Lcom/jcraft/jorbis/Info;->residues:I

    if-ge v4, v6, :cond_137

    .line 248
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    invoke-virtual {p1, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v6, v4

    .line 249
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v6, v6, v4

    if-ltz v6, :cond_133

    const/4 v8, 0x3

    if-lt v6, v8, :cond_116

    goto :goto_133

    .line 253
    :cond_116
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    sget-object v8, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    iget-object v9, p0, Lcom/jcraft/jorbis/Info;->residue_type:[I

    aget v9, v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v8, p0, p1}, Lcom/jcraft/jorbis/FuncResidue;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v4

    .line 254
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->residue_param:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-nez v6, :cond_130

    .line 255
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    :cond_130
    add-int/lit8 v4, v4, 0x1

    goto :goto_100

    .line 250
    :cond_133
    :goto_133
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    .line 261
    :cond_137
    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/jcraft/jorbis/Info;->maps:I

    .line 262
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    if-eqz v6, :cond_145

    array-length v6, v6

    if-eq v6, v4, :cond_149

    .line 263
    :cond_145
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    .line 264
    :cond_149
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    if-eqz v6, :cond_150

    array-length v6, v6

    if-eq v6, v4, :cond_154

    .line 265
    :cond_150
    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    :cond_154
    move v4, v1

    .line 266
    :goto_155
    iget v6, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-ge v4, v6, :cond_18b

    .line 267
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    invoke-virtual {p1, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v6, v4

    .line 268
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v6, v6, v4

    if-ltz v6, :cond_187

    if-lt v6, v2, :cond_16a

    goto :goto_187

    .line 272
    :cond_16a
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    sget-object v8, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    iget-object v9, p0, Lcom/jcraft/jorbis/Info;->map_type:[I

    aget v9, v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v8, p0, p1}, Lcom/jcraft/jorbis/FuncMapping;->unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v4

    .line 273
    iget-object v6, p0, Lcom/jcraft/jorbis/Info;->map_param:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-nez v6, :cond_184

    .line 274
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    :cond_184
    add-int/lit8 v4, v4, 0x1

    goto :goto_155

    .line 269
    :cond_187
    :goto_187
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    .line 280
    :cond_18b
    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jcraft/jorbis/Info;->modes:I

    .line 281
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    if-eqz v4, :cond_199

    array-length v4, v4

    if-eq v4, v3, :cond_19d

    .line 282
    :cond_199
    new-array v3, v3, [Lcom/jcraft/jorbis/InfoMode;

    iput-object v3, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    :cond_19d
    move v3, v1

    .line 283
    :goto_19e
    iget v4, p0, Lcom/jcraft/jorbis/Info;->modes:I

    if-ge v3, v4, :cond_1f5

    .line 284
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    new-instance v6, Lcom/jcraft/jorbis/InfoMode;

    invoke-direct {v6}, Lcom/jcraft/jorbis/InfoMode;-><init>()V

    aput-object v6, v4, v3

    .line 285
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    iput v6, v4, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    .line 286
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    invoke-virtual {p1, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    iput v6, v4, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    .line 287
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    invoke-virtual {p1, v7}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    iput v6, v4, Lcom/jcraft/jorbis/InfoMode;->transformtype:I

    .line 288
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    iput v6, v4, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    .line 290
    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->windowtype:I

    if-ge v4, v2, :cond_1f1

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->transformtype:I

    if-ge v4, v2, :cond_1f1

    iget-object v4, p0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    iget v6, p0, Lcom/jcraft/jorbis/Info;->maps:I

    if-lt v4, v6, :cond_1ee

    goto :goto_1f1

    :cond_1ee
    add-int/lit8 v3, v3, 0x1

    goto :goto_19e

    .line 293
    :cond_1f1
    :goto_1f1
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    .line 298
    :cond_1f5
    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result p1

    if-eq p1, v2, :cond_1ff

    .line 299
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v5

    :cond_1ff
    return v1
.end method

.method unpack_info(Lcom/jcraft/jogg/Buffer;)I
    .registers 9

    const/16 v0, 0x20

    .line 160
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/Info;->version:I

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    const/16 v1, 0x8

    .line 164
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->channels:I

    .line 165
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->rate:I

    .line 167
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->bitrate_upper:I

    .line 168
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    iput v3, p0, Lcom/jcraft/jorbis/Info;->bitrate_nominal:I

    .line 169
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jorbis/Info;->bitrate_lower:I

    .line 171
    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    const/4 v6, 0x0

    aput v4, v0, v6

    .line 172
    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v3

    shl-int v3, v5, v3

    aput v3, v0, v5

    .line 174
    iget v0, p0, Lcom/jcraft/jorbis/Info;->rate:I

    if-lt v0, v5, :cond_5d

    iget v0, p0, Lcom/jcraft/jorbis/Info;->channels:I

    if-lt v0, v5, :cond_5d

    iget-object v0, p0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    aget v3, v0, v6

    if-lt v3, v1, :cond_5d

    aget v0, v0, v5

    if-lt v0, v3, :cond_5d

    invoke-virtual {p1, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result p1

    if-eq p1, v5, :cond_5c

    goto :goto_5d

    :cond_5c
    return v6

    .line 176
    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Info;->clear()V

    return v2
.end method
