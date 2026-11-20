###### Class org.lwjgl.util.glu.GLU (org.lwjgl.util.glu.GLU)
.class public final Lorg/lwjgl/util/glu/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 3
    invoke-static {}, Lmcport/NativeLib;->load()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2a

    packed-switch p0, :pswitch_data_2e

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    const-string p0, "Out of memory"

    return-object p0

    :pswitch_1b
    const-string p0, "Stack underflow"

    return-object p0

    :pswitch_1e
    const-string p0, "Stack overflow"

    return-object p0

    :pswitch_21
    const-string p0, "Invalid operation"

    return-object p0

    :pswitch_24
    const-string p0, "Invalid value"

    return-object p0

    :pswitch_27
    const-string p0, "Invalid enum"

    return-object p0

    :cond_2a
    const-string p0, "No error"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x500
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static native gluPerspective(FFFF)V
.end method
