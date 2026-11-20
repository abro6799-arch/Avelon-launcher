###### Class defpackage.ij (ij)
.class public abstract Lij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lij;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(B)Lij;
    .registers 1

    packed-switch p0, :pswitch_data_48

    const/4 p0, 0x0

    return-object p0

    .line 103
    :pswitch_5
    new-instance p0, Lnu;

    invoke-direct {p0}, Lnu;-><init>()V

    return-object p0

    .line 101
    :pswitch_b
    new-instance p0, Lsp;

    invoke-direct {p0}, Lsp;-><init>()V

    return-object p0

    .line 99
    :pswitch_11
    new-instance p0, Lxb;

    invoke-direct {p0}, Lxb;-><init>()V

    return-object p0

    .line 97
    :pswitch_17
    new-instance p0, Lhn;

    invoke-direct {p0}, Lhn;-><init>()V

    return-object p0

    .line 95
    :pswitch_1d
    new-instance p0, Lsz;

    invoke-direct {p0}, Lsz;-><init>()V

    return-object p0

    .line 93
    :pswitch_23
    new-instance p0, Lp;

    invoke-direct {p0}, Lp;-><init>()V

    return-object p0

    .line 91
    :pswitch_29
    new-instance p0, Lmi;

    invoke-direct {p0}, Lmi;-><init>()V

    return-object p0

    .line 89
    :pswitch_2f
    new-instance p0, Lpp;

    invoke-direct {p0}, Lpp;-><init>()V

    return-object p0

    .line 87
    :pswitch_35
    new-instance p0, Lul;

    invoke-direct {p0}, Lul;-><init>()V

    return-object p0

    .line 85
    :pswitch_3b
    new-instance p0, Lqp;

    invoke-direct {p0}, Lqp;-><init>()V

    return-object p0

    .line 83
    :pswitch_41
    new-instance p0, Llh;

    invoke-direct {p0}, Llh;-><init>()V

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lij;Ljava/io/DataOutput;)V
    .registers 3

    .line 69
    invoke-virtual {p0}, Lij;->a()B

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 70
    invoke-virtual {p0}, Lij;->a()B

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 75
    :cond_e
    invoke-virtual {p0}, Lij;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lij;->a(Ljava/io/DataOutput;)V

    return-void
.end method

.method public static b(Ljava/io/DataInput;)Lij;
    .registers 3

    .line 55
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-nez v0, :cond_c

    .line 56
    new-instance p0, Llh;

    invoke-direct {p0}, Llh;-><init>()V

    return-object p0

    .line 58
    :cond_c
    invoke-static {v0}, Lij;->a(B)Lij;

    move-result-object v0

    .line 63
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lij;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, p0}, Lij;->a(Ljava/io/DataInput;)V

    return-object v0
.end method

.method public static b(B)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_28

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_6
    const-string p0, "TAG_Compound"

    return-object p0

    :pswitch_9
    const-string p0, "TAG_List"

    return-object p0

    :pswitch_c
    const-string p0, "TAG_String"

    return-object p0

    :pswitch_f
    const-string p0, "TAG_Byte_Array"

    return-object p0

    :pswitch_12
    const-string p0, "TAG_Double"

    return-object p0

    :pswitch_15
    const-string p0, "TAG_Float"

    return-object p0

    :pswitch_18
    const-string p0, "TAG_Long"

    return-object p0

    :pswitch_1b
    const-string p0, "TAG_Int"

    return-object p0

    :pswitch_1e
    const-string p0, "TAG_Short"

    return-object p0

    :pswitch_21
    const-string p0, "TAG_Byte"

    return-object p0

    :pswitch_24
    const-string p0, "TAG_End"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public abstract a()B
.end method

.method public a(Ljava/lang/String;)Lij;
    .registers 2

    .line 50
    iput-object p1, p0, Lij;->a:Ljava/lang/String;

    return-object p0
.end method

.method abstract a(Ljava/io/DataInput;)V
.end method

.method abstract a(Ljava/io/DataOutput;)V
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lij;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method
