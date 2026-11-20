###### Class defpackage.ki (ki)
.class public abstract Lki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;

.field private static c:Ljava/util/Set;

.field private static d:Ljava/util/Set;

.field private static e:Ljava/util/HashMap;

.field private static f:I


# instance fields
.field public final j:J

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lki;->a:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lki;->b:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lki;->c:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lki;->d:Ljava/util/Set;

    .line 34
    const-class v0, Llz;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v2, v0}, Lki;->a(IZZLjava/lang/Class;)V

    .line 35
    const-class v0, Lnz;

    invoke-static {v2, v2, v2, v0}, Lki;->a(IZZLjava/lang/Class;)V

    const/4 v0, 0x2

    .line 36
    const-class v3, Lmp;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/4 v0, 0x3

    .line 37
    const-class v3, Lpe;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/4 v0, 0x4

    .line 38
    const-class v3, Lhg;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/4 v0, 0x5

    .line 39
    const-class v3, Ls;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/4 v0, 0x6

    .line 40
    const-class v3, Lrc;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/4 v0, 0x7

    .line 41
    const-class v3, La;

    invoke-static {v0, v1, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x8

    .line 42
    const-class v3, Leu;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x9

    .line 43
    const-class v3, Lox;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xa

    .line 45
    const-class v3, Lig;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xb

    .line 46
    const-class v3, Laf;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xc

    .line 47
    const-class v3, Lvh;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xd

    .line 48
    const-class v3, Lev;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xe

    .line 49
    const-class v3, Ljv;

    invoke-static {v0, v1, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xf

    .line 50
    const-class v3, Lgx;

    invoke-static {v0, v1, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x10

    .line 51
    const-class v3, Lho;

    invoke-static {v0, v1, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x11

    .line 52
    const-class v3, Ljz;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x12

    .line 53
    const-class v3, Lnm;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x13

    .line 54
    const-class v3, Lts;

    invoke-static {v0, v1, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x14

    .line 56
    const-class v3, Lmf;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x15

    .line 57
    const-class v3, Lnd;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x16

    .line 58
    const-class v3, Ldi;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x17

    .line 59
    const-class v3, Lso;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x18

    .line 60
    const-class v3, Ljm;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x19

    .line 61
    const-class v3, Lvt;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x1b

    .line 62
    const-class v3, Lql;

    invoke-static {v0, v1, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x1c

    .line 63
    const-class v3, Lgj;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x1d

    .line 64
    const-class v3, Lrv;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x1e

    .line 66
    const-class v3, Luh;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x1f

    .line 67
    const-class v3, Lsv;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x20

    .line 68
    const-class v3, Lsb;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x21

    .line 69
    const-class v3, Lpz;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x22

    .line 70
    const-class v3, Lrg;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x26

    .line 72
    const-class v3, Ljf;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x27

    .line 73
    const-class v3, Lns;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x28

    .line 74
    const-class v3, Lux;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x32

    .line 76
    const-class v3, Lse;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x33

    .line 77
    const-class v3, Lef;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x34

    .line 78
    const-class v3, Lwu;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x35

    .line 79
    const-class v3, Ltv;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x36

    .line 80
    const-class v3, Lvw;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x3c

    .line 82
    const-class v3, Lrm;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x3d

    .line 83
    const-class v3, Lfn;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x46

    .line 85
    const-class v3, Lca;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x47

    .line 86
    const-class v3, Lfa;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x64

    .line 88
    const-class v3, Liw;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x65

    .line 89
    const-class v3, Lmn;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x66

    .line 90
    const-class v3, Lqs;

    invoke-static {v0, v1, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x67

    .line 91
    const-class v3, Lhq;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x68

    .line 92
    const-class v3, Lkb;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x69

    .line 93
    const-class v3, Lmv;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x6a

    .line 94
    const-class v3, Loj;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x82

    .line 96
    const-class v3, Lui;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0x83

    .line 97
    const-class v3, Lai;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xc8

    .line 99
    const-class v3, Lof;

    invoke-static {v0, v2, v1, v3}, Lki;->a(IZZLjava/lang/Class;)V

    const/16 v0, 0xff

    .line 100
    const-class v3, Lyr;

    invoke-static {v0, v2, v2, v3}, Lki;->a(IZZLjava/lang/Class;)V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lki;->e:Ljava/util/HashMap;

    .line 124
    sput v1, Lki;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lki;->j:J

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lki;->k:Z

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;I)Ljava/lang/String;
    .registers 5

    .line 185
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    if-gt v0, p1, :cond_27

    if-ltz v0, :cond_1f

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1a

    .line 195
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 198
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Received string length is less than zero! Weird string!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_27
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received string length longer than maximum allowed ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(I)Lki;
    .registers 5

    const/4 v0, 0x0

    .line 107
    :try_start_1
    sget-object v1, Lki;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_10

    return-object v0

    .line 109
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lki;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping packet with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInputStream;Z)Lki;
    .registers 7

    const/4 v0, 0x0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_5} :catch_81

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    return-object v0

    :cond_9
    const-string v2, "Bad packet id "

    if-eqz p1, :cond_19

    .line 134
    :try_start_d
    sget-object v3, Lki;->d:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_19
    if-nez p1, :cond_3a

    sget-object p1, Lki;->c:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_3a

    .line 135
    :cond_28
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_3a
    :goto_3a
    invoke-static {v1}, Lki;->a(I)Lki;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 141
    invoke-virtual {p1, p0}, Lki;->a(Ljava/io/DataInputStream;)V
    :try_end_43
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_43} :catch_81

    .line 148
    sget-object p0, Lki;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnv;

    if-nez p0, :cond_5f

    .line 150
    new-instance p0, Lnv;

    invoke-direct {p0, v0}, Lnv;-><init>(Lgw;)V

    .line 151
    sget-object v0, Lki;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_5f
    invoke-virtual {p1}, Lki;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lnv;->a(I)V

    .line 155
    sget p0, Lki;->f:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lki;->f:I

    .line 156
    rem-int/lit16 p0, p0, 0x3e8

    return-object p1

    .line 139
    :cond_6f
    :try_start_6f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_81
    .catch Ljava/io/EOFException; {:try_start_6f .. :try_end_81} :catch_81

    .line 144
    :catch_81
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Reached end of stream"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method static a(IZZLjava/lang/Class;)V
    .registers 6

    .line 20
    sget-object v0, Lki;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 21
    sget-object v0, Lki;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 22
    sget-object v0, Lki;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lki;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_31

    .line 26
    sget-object p1, Lki;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_31
    if-eqz p2, :cond_3c

    .line 29
    sget-object p1, Lki;->d:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3c
    return-void

    .line 21
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Duplicate packet class:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Duplicate packet id:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/io/DataOutputStream;)V
    .registers 4

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_13

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    return-void

    .line 176
    :cond_13
    new-instance p0, Ljava/io/IOException;

    const-string p1, "String too big"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lki;Ljava/io/DataOutputStream;)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lki;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 170
    invoke-virtual {p0, p1}, Lki;->a(Ljava/io/DataOutputStream;)V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/io/DataInputStream;)V
.end method

.method public abstract a(Ljava/io/DataOutputStream;)V
.end method

.method public abstract a(Lti;)V
.end method

.method public final c()I
    .registers 3

    .line 118
    sget-object v0, Lki;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
