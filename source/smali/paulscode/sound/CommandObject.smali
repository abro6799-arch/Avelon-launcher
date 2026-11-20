###### Class paulscode.sound.CommandObject (paulscode.sound.CommandObject)
.class public Lpaulscode/sound/CommandObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVATE:I = 0x1c

.field public static final CHECK_FADE_VOLUMES:I = 0x9

.field public static final CULL:I = 0x1b

.field public static final DEQUEUE_SOUND:I = 0x6

.field public static final FADE_OUT:I = 0x7

.field public static final FADE_OUT_IN:I = 0x8

.field public static final FEED_RAW_AUDIO_DATA:I = 0x16

.field public static final FLUSH:I = 0x1a

.field public static final INITIALIZE:I = 0x1

.field public static final LOAD_SOUND:I = 0x2

.field public static final MOVE_LISTENER:I = 0x1f

.field public static final NEW_LIBRARY:I = 0x25

.field public static final NEW_SOURCE:I = 0xa

.field public static final PAUSE:I = 0x17

.field public static final PLAY:I = 0x15

.field public static final QUEUE_SOUND:I = 0x5

.field public static final QUICK_PLAY:I = 0xc

.field public static final RAW_DATA_STREAM:I = 0xb

.field public static final REMOVE_SOURCE:I = 0x1e

.field public static final REWIND:I = 0x19

.field public static final SET_ATTENUATION:I = 0x12

.field public static final SET_DIST_OR_ROLL:I = 0x13

.field public static final SET_LISTENER_ANGLE:I = 0x22

.field public static final SET_LISTENER_ORIENTATION:I = 0x23

.field public static final SET_LISTENER_POSITION:I = 0x20

.field public static final SET_LOOPING:I = 0x11

.field public static final SET_MASTER_VOLUME:I = 0x24

.field public static final SET_PITCH:I = 0xf

.field public static final SET_POSITION:I = 0xd

.field public static final SET_PRIORITY:I = 0x10

.field public static final SET_TEMPORARY:I = 0x1d

.field public static final SET_VOLUME:I = 0xe

.field public static final STOP:I = 0x18

.field public static final TURN_LISTENER:I = 0x21

.field public static final UNLOAD_SOUND:I = 0x4


# instance fields
.field public Command:I

.field public boolArgs:[Z

.field public buffer:[B

.field public classArgs:[Ljava/lang/Class;

.field public floatArgs:[F

.field public intArgs:[I

.field public longArgs:[J

.field public objectArgs:[Ljava/lang/Object;

.field public stringArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array p1, p1, [F

    .line 266
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v0, 0x0

    aput p2, p1, v0

    return-void
.end method

.method public constructor <init>(IFFF)V
    .registers 6

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 426
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    return-void
.end method

.method public constructor <init>(IFFFFFF)V
    .registers 9

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x6

    new-array p1, p1, [F

    .line 464
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    const/4 p2, 0x4

    aput p6, p1, p2

    const/4 p2, 0x5

    aput p7, p1, p2

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 243
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->intArgs:[I

    const/4 v0, 0x0

    aput p2, p1, v0

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .registers 4

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    .line 255
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->classArgs:[Ljava/lang/Class;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 288
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;ZLjava/lang/String;FFFIF)V
    .registers 16

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array v0, p1, [I

    .line 570
    iput-object v0, p0, Lpaulscode/sound/CommandObject;->intArgs:[I

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 571
    iput-object v1, p0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    new-array v2, p1, [Z

    .line 572
    iput-object v2, p0, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    new-array v3, p1, [Ljava/lang/String;

    .line 573
    iput-object v3, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    new-array v4, p1, [Ljava/lang/Object;

    .line 574
    iput-object v4, p0, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput p8, v0, v5

    aput p5, v1, v5

    aput p6, v1, p1

    const/4 p1, 0x2

    aput p7, v1, p1

    const/4 p1, 0x3

    aput p9, v1, p1

    aput-boolean p3, v2, v5

    aput-object p4, v3, v5

    aput-object p2, v4, v5

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;F)V
    .registers 6

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array v0, p1, [F

    .line 396
    iput-object v0, p0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    new-array p1, p1, [Ljava/lang/String;

    .line 397
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput p3, v0, v1

    aput-object p2, p1, v1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FFF)V
    .registers 9

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 443
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 444
    iput-object v1, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v2, 0x0

    aput p3, p1, v2

    aput p4, p1, v0

    const/4 p3, 0x2

    aput p5, p1, p3

    aput-object p2, v1, v2

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 6

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array v0, p1, [I

    .line 381
    iput-object v0, p0, Lpaulscode/sound/CommandObject;->intArgs:[I

    new-array p1, p1, [Ljava/lang/String;

    .line 382
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput p3, v0, v1

    aput-object p2, p1, v1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-array p1, p1, [Ljava/lang/Object;

    .line 303
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aput-object p3, p1, v1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;J)V
    .registers 8

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 331
    iput-object v0, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-array p2, p1, [Ljava/lang/Object;

    .line 333
    iput-object p2, p0, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aput-object p3, p2, v1

    new-array p1, p1, [J

    .line 335
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->longArgs:[J

    aput-wide p4, p1, v1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;JJ)V
    .registers 10

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 350
    iput-object v0, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-array p2, p1, [Ljava/lang/Object;

    .line 352
    iput-object p2, p0, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aput-object p3, p2, v1

    const/4 p2, 0x2

    new-array p2, p2, [J

    .line 354
    iput-object p2, p0, Lpaulscode/sound/CommandObject;->longArgs:[J

    aput-wide p4, p2, v1

    aput-wide p6, p2, p1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 367
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 6

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array v0, p1, [Z

    .line 411
    iput-object v0, p0, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    new-array p1, p1, [Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-boolean p3, v0, v1

    aput-object p2, p1, v1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 5

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 316
    iput-object p1, p0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 318
    iput-object p3, p0, Lpaulscode/sound/CommandObject;->buffer:[B

    return-void
.end method

.method public constructor <init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIF)V
    .registers 21

    move-object v0, p0

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 492
    iput v1, v0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 493
    iput-object v2, v0, Lpaulscode/sound/CommandObject;->intArgs:[I

    const/4 v3, 0x4

    new-array v3, v3, [F

    .line 494
    iput-object v3, v0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v4, 0x3

    new-array v5, v4, [Z

    .line 495
    iput-object v5, v0, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    new-array v6, v1, [Ljava/lang/String;

    .line 496
    iput-object v6, v0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    .line 497
    iput-object v7, v0, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    aput p10, v2, v8

    aput p7, v3, v8

    aput p8, v3, v1

    const/4 v2, 0x2

    aput p9, v3, v2

    aput p11, v3, v4

    aput-boolean p2, v5, v8

    aput-boolean p3, v5, v1

    aput-boolean p4, v5, v2

    aput-object p5, v6, v8

    aput-object p6, v7, v8

    return-void
.end method

.method public constructor <init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIFZ)V
    .registers 22

    move-object v0, p0

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 531
    iput v1, v0, Lpaulscode/sound/CommandObject;->Command:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 532
    iput-object v2, v0, Lpaulscode/sound/CommandObject;->intArgs:[I

    const/4 v3, 0x4

    new-array v4, v3, [F

    .line 533
    iput-object v4, v0, Lpaulscode/sound/CommandObject;->floatArgs:[F

    new-array v3, v3, [Z

    .line 534
    iput-object v3, v0, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    new-array v5, v1, [Ljava/lang/String;

    .line 535
    iput-object v5, v0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    .line 536
    iput-object v6, v0, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    const/4 v7, 0x0

    aput p10, v2, v7

    aput p7, v4, v7

    aput p8, v4, v1

    const/4 v2, 0x2

    aput p9, v4, v2

    const/4 v8, 0x3

    aput p11, v4, v8

    aput-boolean p2, v3, v7

    aput-boolean p3, v3, v1

    aput-boolean p4, v3, v2

    aput-boolean p12, v3, v8

    aput-object p5, v5, v7

    aput-object p6, v6, v7

    return-void
.end method
