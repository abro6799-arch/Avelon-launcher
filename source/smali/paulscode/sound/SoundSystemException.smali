###### Class paulscode.sound.SoundSystemException (paulscode.sound.SoundSystemException)
.class public Lpaulscode/sound/SoundSystemException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final CLASS_TYPE_MISMATCH:I = 0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final JAVASOUND_MIXER_NOT_FOUND:I = 0xe

.field public static final JAVASOUND_MIXER_NO_GAIN_CONTROL:I = 0xf

.field public static final JAVASOUND_MIXER_NO_PAN_CONTROL:I = 0x10

.field public static final JAVASOUND_MIXER_NO_SAMPLE_RATE_CONTROL:I = 0x11

.field public static final LIBRARY_NULL:I = 0x4

.field public static final LIBRARY_TYPE:I = 0x5

.field public static final NULL_PARAMETER:I = 0x2

.field public static final OPENAL_CREATE:I = 0x6

.field public static final OPENAL_INVALID_ENUM:I = 0x8

.field public static final OPENAL_INVALID_NAME:I = 0x7

.field public static final OPENAL_INVALID_OPERATION:I = 0xa

.field public static final OPENAL_INVALID_VALUE:I = 0x9

.field public static final OPENAL_LISTENER:I = 0xc

.field public static final OPENAL_NO_AL_PITCH:I = 0xd

.field public static final OPENAL_OUT_OF_MEMORY:I = 0xb

.field public static final UNKNOWN_ERROR:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private myType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 122
    iput p1, p0, Lpaulscode/sound/SoundSystemException;->myType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 140
    iput p2, p0, Lpaulscode/sound/SoundSystemException;->myType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 145
    iget v0, p0, Lpaulscode/sound/SoundSystemException;->myType:I

    return v0
.end method
