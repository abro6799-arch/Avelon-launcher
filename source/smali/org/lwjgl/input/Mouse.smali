###### Class org.lwjgl.input.Mouse (org.lwjgl.input.Mouse)
.class public final Lorg/lwjgl/input/Mouse;
.super Ljava/lang/Object;
.source "Mouse.java"


# static fields
.field static final DEBUG:Z

.field private static final buttons:[Z

.field private static carry:[I

.field private static created:Z

.field private static current:[I

.field private static cursor:I

.field private static dwheel:I

.field private static dx:I

.field private static dy:I

.field private static events:[[I

.field private static volatile grabbed:Z

.field private static nEvents:I

.field private static final pending:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[I>;"
        }
    .end annotation
.end field

.field private static volatile x:I

.field private static volatile y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lorg/lwjgl/input/Mouse;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/16 v0, 0x100

    new-array v0, v0, [[I

    .line 6
    sput-object v0, Lorg/lwjgl/input/Mouse;->events:[[I

    const/4 v0, -0x1

    sput v0, Lorg/lwjgl/input/Mouse;->cursor:I

    const/16 v0, 0x8

    new-array v0, v0, [Z

    .line 7
    sput-object v0, Lorg/lwjgl/input/Mouse;->buttons:[Z

    const-string v0, "mcport.debugInput"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    sput-boolean v0, Lorg/lwjgl/input/Mouse;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()V
    .registers 1

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lorg/lwjgl/input/Mouse;->created:Z

    return-void
.end method

.method public static destroy()V
    .registers 1

    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lorg/lwjgl/input/Mouse;->created:Z

    return-void
.end method

.method public static getButtonCount()I
    .registers 1

    const/4 v0, 0x3

    return v0
.end method

.method public static getDWheel()I
    .registers 2

    .line 46
    sget v0, Lorg/lwjgl/input/Mouse;->dwheel:I

    const/4 v1, 0x0

    sput v1, Lorg/lwjgl/input/Mouse;->dwheel:I

    return v0
.end method

.method public static getDX()I
    .registers 2

    .line 45
    sget v0, Lorg/lwjgl/input/Mouse;->dx:I

    const/4 v1, 0x0

    sput v1, Lorg/lwjgl/input/Mouse;->dx:I

    return v0
.end method

.method public static getDY()I
    .registers 2

    .line 45
    sget v0, Lorg/lwjgl/input/Mouse;->dy:I

    const/4 v1, 0x0

    sput v1, Lorg/lwjgl/input/Mouse;->dy:I

    return v0
.end method

.method public static getEventButton()I
    .registers 2

    .line 37
    sget-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_9

    :cond_6
    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_9
    return v0
.end method

.method public static getEventButtonState()Z
    .registers 2

    .line 38
    sget-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static getEventDWheel()I
    .registers 2

    .line 41
    sget-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const/4 v1, 0x4

    aget v0, v0, v1

    :goto_9
    return v0
.end method

.method public static getEventDX()I
    .registers 2

    .line 42
    sget-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const/4 v1, 0x5

    aget v0, v0, v1

    :goto_9
    return v0
.end method

.method public static getEventDY()I
    .registers 2

    .line 43
    sget-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const/4 v1, 0x6

    aget v0, v0, v1

    :goto_9
    return v0
.end method

.method public static getEventX()I
    .registers 2

    .line 39
    sget-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    if-nez v0, :cond_7

    sget v0, Lorg/lwjgl/input/Mouse;->x:I

    goto :goto_a

    :cond_7
    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_a
    return v0
.end method

.method public static getEventY()I
    .registers 2

    .line 40
    sget-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    if-nez v0, :cond_7

    sget v0, Lorg/lwjgl/input/Mouse;->y:I

    goto :goto_a

    :cond_7
    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_a
    return v0
.end method

.method public static getX()I
    .registers 1

    .line 44
    sget v0, Lorg/lwjgl/input/Mouse;->x:I

    return v0
.end method

.method public static getY()I
    .registers 1

    .line 44
    sget v0, Lorg/lwjgl/input/Mouse;->y:I

    return v0
.end method

.method public static hasWheel()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isButtonDown(I)Z
    .registers 3

    if-ltz p0, :cond_d

    .line 47
    sget-object v0, Lorg/lwjgl/input/Mouse;->buttons:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_d

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static isCreated()Z
    .registers 1

    .line 9
    sget-boolean v0, Lorg/lwjgl/input/Mouse;->created:Z

    return v0
.end method

.method public static isGrabbed()Z
    .registers 1

    .line 49
    sget-boolean v0, Lorg/lwjgl/input/Mouse;->grabbed:Z

    return v0
.end method

.method public static isInsideWindow()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static next()Z
    .registers 4

    .line 36
    sget v0, Lorg/lwjgl/input/Mouse;->cursor:I

    add-int/lit8 v1, v0, 0x1

    sget v2, Lorg/lwjgl/input/Mouse;->nEvents:I

    if-lt v1, v2, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    sget-object v1, Lorg/lwjgl/input/Mouse;->events:[[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lorg/lwjgl/input/Mouse;->cursor:I

    aget-object v0, v1, v0

    sput-object v0, Lorg/lwjgl/input/Mouse;->current:[I

    sget-boolean v0, Lorg/lwjgl/input/Mouse;->DEBUG:Z

    if-eqz v0, :cond_44

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mouse.next "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/lwjgl/input/Mouse;->current:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_44
    return v2
.end method

.method public static poll()V
    .registers 9

    .line 17
    sget v0, Lorg/lwjgl/input/Mouse;->nEvents:I

    sget v1, Lorg/lwjgl/input/Mouse;->cursor:I

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_13

    if-ltz v1, :cond_13

    sget-object v4, Lorg/lwjgl/input/Mouse;->events:[[I

    add-int/2addr v1, v3

    invoke-static {v4, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/lwjgl/input/Mouse;->nEvents:I

    const/4 v1, -0x1

    sput v1, Lorg/lwjgl/input/Mouse;->cursor:I

    const/16 v1, 0x1000

    if-le v0, v1, :cond_22

    .line 18
    sput v2, Lorg/lwjgl/input/Mouse;->nEvents:I

    :cond_22
    move v0, v2

    .line 22
    :goto_23
    sget-object v1, Lorg/lwjgl/input/Mouse;->carry:[I

    if-eqz v1, :cond_28

    goto :goto_30

    :cond_28
    sget-object v1, Lorg/lwjgl/input/Mouse;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_30
    if-eqz v1, :cond_b4

    const/4 v4, 0x0

    .line 23
    sput-object v4, Lorg/lwjgl/input/Mouse;->carry:[I

    .line 24
    aget v4, v1, v2

    if-ltz v4, :cond_4e

    sget-object v5, Lorg/lwjgl/input/Mouse;->buttons:[Z

    array-length v5, v5

    if-ge v4, v5, :cond_4e

    .line 25
    aget v5, v1, v3

    if-eqz v5, :cond_46

    shl-int v4, v3, v4

    or-int/2addr v0, v4

    goto :goto_4e

    :cond_46
    shl-int v4, v3, v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_4e

    .line 26
    sput-object v1, Lorg/lwjgl/input/Mouse;->carry:[I

    goto :goto_b4

    :cond_4e
    :goto_4e
    const/4 v4, 0x2

    .line 28
    aget v5, v1, v4

    const/high16 v6, -0x80000000

    const/4 v7, 0x3

    if-ne v5, v6, :cond_5e

    sget v5, Lorg/lwjgl/input/Mouse;->x:I

    aput v5, v1, v4

    sget v5, Lorg/lwjgl/input/Mouse;->y:I

    aput v5, v1, v7

    .line 29
    :cond_5e
    aget v5, v1, v2

    if-ltz v5, :cond_70

    sget-object v6, Lorg/lwjgl/input/Mouse;->buttons:[Z

    array-length v8, v6

    if-ge v5, v8, :cond_70

    aget v8, v1, v3

    if-eqz v8, :cond_6d

    move v8, v3

    goto :goto_6e

    :cond_6d
    move v8, v2

    :goto_6e
    aput-boolean v8, v6, v5

    .line 30
    :cond_70
    sget v5, Lorg/lwjgl/input/Mouse;->dx:I

    const/4 v6, 0x5

    aget v6, v1, v6

    add-int/2addr v5, v6

    sput v5, Lorg/lwjgl/input/Mouse;->dx:I

    sget v5, Lorg/lwjgl/input/Mouse;->dy:I

    const/4 v6, 0x6

    aget v6, v1, v6

    add-int/2addr v5, v6

    sput v5, Lorg/lwjgl/input/Mouse;->dy:I

    sget v5, Lorg/lwjgl/input/Mouse;->dwheel:I

    const/4 v6, 0x4

    aget v6, v1, v6

    add-int/2addr v5, v6

    sput v5, Lorg/lwjgl/input/Mouse;->dwheel:I

    .line 31
    sget-boolean v5, Lorg/lwjgl/input/Mouse;->grabbed:Z

    if-eqz v5, :cond_90

    aget v5, v1, v2

    if-ltz v5, :cond_98

    :cond_90
    aget v5, v1, v4

    sput v5, Lorg/lwjgl/input/Mouse;->x:I

    aget v5, v1, v7

    sput v5, Lorg/lwjgl/input/Mouse;->y:I

    .line 32
    :cond_98
    sget v5, Lorg/lwjgl/input/Mouse;->nEvents:I

    sget-object v6, Lorg/lwjgl/input/Mouse;->events:[[I

    array-length v7, v6

    if-ne v5, v7, :cond_a8

    array-length v7, v6

    mul-int/2addr v7, v4

    new-array v4, v7, [[I

    invoke-static {v6, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v4, Lorg/lwjgl/input/Mouse;->events:[[I

    .line 33
    :cond_a8
    sget-object v4, Lorg/lwjgl/input/Mouse;->events:[[I

    sget v5, Lorg/lwjgl/input/Mouse;->nEvents:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lorg/lwjgl/input/Mouse;->nEvents:I

    aput-object v1, v4, v5

    goto/16 :goto_23

    :cond_b4
    :goto_b4
    return-void
.end method

.method public static postButton(IZII)V
    .registers 7

    .line 12
    sget-object v0, Lorg/lwjgl/input/Mouse;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p0, 0x4

    aput v2, v1, p0

    const/4 p0, 0x5

    aput v2, v1, p0

    const/4 p0, 0x6

    aput v2, v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static postMove(IIII)V
    .registers 8

    .line 11
    sget-object v0, Lorg/lwjgl/input/Mouse;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput p0, v1, v2

    const/4 p0, 0x3

    aput p1, v1, p0

    const/4 p0, 0x4

    aput v3, v1, p0

    const/4 p0, 0x5

    aput p2, v1, p0

    const/4 p0, 0x6

    aput p3, v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static postWheel(I)V
    .registers 6

    .line 13
    sget-object v0, Lorg/lwjgl/input/Mouse;->pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    const/high16 v4, -0x80000000

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p0, v1, v2

    const/4 p0, 0x5

    aput v3, v1, p0

    const/4 p0, 0x6

    aput v3, v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static releaseAll()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 55
    :goto_2
    sget-object v2, Lorg/lwjgl/input/Mouse;->buttons:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_15

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_12

    sget v2, Lorg/lwjgl/input/Mouse;->x:I

    sget v3, Lorg/lwjgl/input/Mouse;->y:I

    invoke-static {v1, v0, v2, v3}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-void
.end method

.method public static setCursorPosition(II)V
    .registers 2

    .line 50
    sput p0, Lorg/lwjgl/input/Mouse;->x:I

    sput p1, Lorg/lwjgl/input/Mouse;->y:I

    return-void
.end method

.method public static setGrabbed(Z)V
    .registers 1

    .line 48
    sput-boolean p0, Lorg/lwjgl/input/Mouse;->grabbed:Z

    const/4 p0, 0x0

    sput p0, Lorg/lwjgl/input/Mouse;->dy:I

    sput p0, Lorg/lwjgl/input/Mouse;->dx:I

    return-void
.end method

.method public static setNativeCursor(Lorg/lwjgl/input/Cursor;)Lorg/lwjgl/input/Cursor;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
