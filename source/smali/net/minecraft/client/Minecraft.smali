###### Class net.minecraft.client.Minecraft (net.minecraft.client.Minecraft)
.class public abstract Lnet/minecraft/client/Minecraft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static E:[J

.field public static F:[J

.field public static G:I

.field public static H:J

.field private static a:Lnet/minecraft/client/Minecraft;

.field private static af:Ljava/io/File;

.field public static b:[B


# instance fields
.field protected A:Lnet/minecraft/client/MinecraftApplet;

.field public B:Lyo;

.field public C:Lvy;

.field public D:Lik;

.field public I:Lxi;

.field public volatile J:Z

.field public K:Ljava/lang/String;

.field L:Z

.field M:J

.field public N:Z

.field public O:Z

.field P:J

.field private Q:Z

.field private R:Z

.field private S:Lcx;

.field private T:Lpy;

.field private U:Lcz;

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Ljava/io/File;

.field private aa:Lnl;

.field private ab:Ljava/lang/String;

.field private ac:I

.field private ad:Lvs;

.field private ae:Lcg;

.field private ag:I

.field private ah:I

.field public c:Lob;

.field public d:I

.field public e:I

.field public f:Lfd;

.field public g:Ln;

.field public h:Ldc;

.field public i:Lls;

.field public j:Ldn;

.field public k:Lgr;

.field public l:Ljava/lang/String;

.field public m:Lmcshim/awt/Canvas;

.field public n:Z

.field public volatile o:Z

.field public p:Lji;

.field public q:Lsj;

.field public r:Lda;

.field public s:Lmk;

.field public t:Lpx;

.field public u:Lvu;

.field public v:Luq;

.field public w:Z

.field public x:Lfh;

.field public y:Lvf;

.field public z:Lkv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v0, 0xa00000

    new-array v0, v0, [B

    .line 114
    sput-object v0, Lnet/minecraft/client/Minecraft;->b:[B

    const/16 v0, 0x200

    new-array v1, v0, [J

    .line 172
    sput-object v1, Lnet/minecraft/client/Minecraft;->E:[J

    new-array v0, v0, [J

    .line 173
    sput-object v0, Lnet/minecraft/client/Minecraft;->F:[J

    return-void
.end method

.method public constructor <init>(Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZ)V
    .registers 11

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    .line 128
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->R:Z

    .line 132
    new-instance v0, Lpy;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {v0, v1}, Lpy;-><init>(F)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lnet/minecraft/client/Minecraft;->n:Z

    .line 145
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->o:Z

    .line 148
    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    .line 149
    new-instance v2, Lmk;

    invoke-direct {v2, p0}, Lmk;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v2, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    .line 152
    iput p1, p0, Lnet/minecraft/client/Minecraft;->V:I

    .line 153
    iput p1, p0, Lnet/minecraft/client/Minecraft;->W:I

    .line 155
    new-instance v2, Lvu;

    invoke-direct {v2, p0}, Lvu;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v2, p0, Lnet/minecraft/client/Minecraft;->u:Lvu;

    .line 159
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->w:Z

    .line 160
    new-instance v2, Lfh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfh;-><init>(F)V

    iput-object v2, p0, Lnet/minecraft/client/Minecraft;->x:Lfh;

    .line 161
    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    .line 164
    new-instance v0, Lyo;

    invoke-direct {v0}, Lyo;-><init>()V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    .line 233
    new-instance v0, Lvs;

    invoke-direct {v0}, Lvs;-><init>()V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->ad:Lvs;

    .line 234
    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->ae:Lcg;

    .line 595
    iput-boolean v1, p0, Lnet/minecraft/client/Minecraft;->J:Z

    const-string v0, ""

    .line 596
    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->K:Ljava/lang/String;

    .line 872
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->L:Z

    const-wide/16 v0, -0x1

    .line 944
    iput-wide v0, p0, Lnet/minecraft/client/Minecraft;->M:J

    .line 1034
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->N:Z

    .line 1222
    iput p1, p0, Lnet/minecraft/client/Minecraft;->ag:I

    .line 1223
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->O:Z

    .line 1225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/minecraft/client/Minecraft;->P:J

    .line 1226
    iput p1, p0, Lnet/minecraft/client/Minecraft;->ah:I

    .line 182
    invoke-static {}, Ljl;->a()V

    .line 184
    iput p5, p0, Lnet/minecraft/client/Minecraft;->Y:I

    .line 185
    iput-boolean p6, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    .line 186
    iput-object p3, p0, Lnet/minecraft/client/Minecraft;->A:Lnet/minecraft/client/MinecraftApplet;

    .line 190
    new-instance v0, Lkg;

    const-string v1, "Timer hack thread"

    invoke-direct {v0, p0, v1}, Lkg;-><init>(Lnet/minecraft/client/Minecraft;Ljava/lang/String;)V

    .line 206
    iput-object p2, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    .line 207
    iput p4, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 208
    iput p5, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 209
    iput-boolean p6, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    if-eqz p3, :cond_90

    const-string p2, "stand-alone"

    .line 211
    invoke-virtual {p3, p2}, Lnet/minecraft/client/MinecraftApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "true"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 213
    :cond_90
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->n:Z

    .line 215
    :cond_92
    sput-object p0, Lnet/minecraft/client/Minecraft;->a:Lnet/minecraft/client/Minecraft;

    return-void
.end method

.method private A()V
    .registers 5

    .line 1209
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    if-eqz v0, :cond_3d

    .line 1210
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v0, v0, Lvf;->b:I

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v2, v2, Lvf;->c:I

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v3, v3, Lvf;->d:I

    invoke-virtual {v1, v0, v2, v3}, Lfd;->a(III)I

    move-result v0

    .line 1211
    sget-object v1, Luu;->v:Lwp;

    iget v1, v1, Lwp;->bn:I

    if-ne v0, v1, :cond_1e

    .line 1212
    sget-object v0, Luu;->w:Luu;

    iget v0, v0, Luu;->bn:I

    .line 1213
    :cond_1e
    sget-object v1, Luu;->ak:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_28

    .line 1214
    sget-object v0, Luu;->al:Luu;

    iget v0, v0, Luu;->bn:I

    .line 1215
    :cond_28
    sget-object v1, Luu;->A:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_32

    .line 1216
    sget-object v0, Luu;->u:Luu;

    iget v0, v0, Luu;->bn:I

    .line 1218
    :cond_32
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, v1, Ldc;->c:Lix;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    instance-of v2, v2, Lpj;

    invoke-virtual {v1, v0, v2}, Lix;->a(IZ)V

    :cond_3d
    return-void
.end method

.method private B()V
    .registers 2

    .line 1229
    new-instance v0, Lkp;

    invoke-direct {v0, p0}, Lkp;-><init>(Lnet/minecraft/client/Minecraft;)V

    invoke-virtual {v0}, Lkp;->start()V

    return-void
.end method

.method private C()V
    .registers 3

    .line 1517
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "FORCING RELOAD!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v0, Lyo;

    invoke-direct {v0}, Lyo;-><init>()V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    .line 1519
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {v0, v1}, Lyo;->a(Lkv;)V

    .line 1520
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->U:Lcz;

    invoke-virtual {v0}, Lcz;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const-string v0, "user.home"

    const-string v1, "."

    .line 458
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    sget-object v2, Lkn;->a:[I

    invoke-static {}, Lnet/minecraft/client/Minecraft;->y()Lpd;

    move-result-object v3

    invoke-virtual {v3}, Lpd;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x2f

    if-eq v2, v3, :cond_7e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4b

    const/4 v1, 0x4

    if-eq v2, v1, :cond_37

    .line 479
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 475
    :cond_37
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Library/Application Support/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    :cond_4b
    const-string v2, "APPDATA"

    .line 466
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 468
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_93

    .line 471
    :cond_69
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 463
    :cond_7e
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_92
    move-object v1, v2

    .line 481
    :goto_93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_b4

    .line 482
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_a0

    goto :goto_b4

    .line 483
    :cond_a0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The working directory could not be created: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b4
    :goto_b4
    return-object v1
.end method

.method private a(I)V
    .registers 14

    if-nez p1, :cond_7

    .line 1085
    iget v0, p0, Lnet/minecraft/client/Minecraft;->W:I

    if-lez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_e

    .line 1088
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->J()V

    .line 1098
    :cond_e
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    const/4 v1, 0x1

    if-nez v0, :cond_21

    if-nez p1, :cond_ae

    .line 1099
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    instance-of v0, v0, Lpj;

    if-nez v0, :cond_ae

    const/16 v0, 0xa

    .line 1100
    iput v0, p0, Lnet/minecraft/client/Minecraft;->W:I

    goto/16 :goto_ae

    .line 1101
    :cond_21
    iget-object v0, v0, Lvf;->a:Ljg;

    sget-object v2, Ljg;->b:Ljg;

    if-ne v0, v2, :cond_43

    if-nez p1, :cond_34

    .line 1103
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget-object v3, v3, Lvf;->g:Lsn;

    invoke-virtual {v0, v2, v3}, Lob;->b(Lgs;Lsn;)V

    :cond_34
    if-ne p1, v1, :cond_ae

    .line 1106
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget-object v3, v3, Lvf;->g:Lsn;

    invoke-virtual {v0, v2, v3}, Lob;->a(Lgs;Lsn;)V

    goto/16 :goto_ae

    .line 1108
    :cond_43
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget-object v0, v0, Lvf;->a:Ljg;

    sget-object v2, Ljg;->a:Ljg;

    if-ne v0, v2, :cond_ae

    .line 1109
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v6, v0, Lvf;->b:I

    .line 1110
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v7, v0, Lvf;->c:I

    .line 1111
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v8, v0, Lvf;->d:I

    .line 1112
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v9, v0, Lvf;->e:I

    if-nez p1, :cond_67

    .line 1126
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v2, v2, Lvf;->e:I

    invoke-virtual {v0, v6, v7, v8, v2}, Lob;->a(IIII)V

    goto :goto_ae

    .line 1128
    :cond_67
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_76

    .line 1129
    iget v2, v0, Liz;->a:I

    move v11, v2

    goto :goto_77

    :cond_76
    move v11, v10

    .line 1130
    :goto_77
    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    move-object v5, v0

    invoke-virtual/range {v2 .. v9}, Lob;->a(Lgs;Lfd;Liz;IIII)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1132
    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v2}, Ldc;->J()V

    goto :goto_8b

    :cond_8a
    move v10, v1

    :goto_8b
    if-nez v0, :cond_8e

    return-void

    .line 1138
    :cond_8e
    iget v2, v0, Liz;->a:I

    if-nez v2, :cond_a2

    .line 1139
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->c:Lix;

    iget-object v0, v0, Lix;->a:[Liz;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v2, v2, Ldc;->c:Lix;

    iget v2, v2, Lix;->c:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_af

    .line 1140
    :cond_a2
    iget v0, v0, Liz;->a:I

    if-eq v0, v11, :cond_af

    .line 1141
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->t:Lpx;

    iget-object v0, v0, Lpx;->c:Lra;

    invoke-virtual {v0}, Lra;->b()V

    goto :goto_af

    :cond_ae
    :goto_ae
    move v10, v1

    :cond_af
    :goto_af
    if-eqz v10, :cond_d0

    if-ne p1, v1, :cond_d0

    .line 1147
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object p1, p1, Ldc;->c:Lix;

    invoke-virtual {p1}, Lix;->b()Liz;

    move-result-object p1

    if-eqz p1, :cond_d0

    .line 1149
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0, v1, v2, p1}, Lob;->a(Lgs;Lfd;Liz;)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1150
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->t:Lpx;

    iget-object p1, p1, Lpx;->c:Lra;

    invoke-virtual {p1}, Lra;->c()V

    :cond_d0
    return-void
.end method

.method private a(II)V
    .registers 5

    const/4 v0, 0x1

    if-gtz p1, :cond_4

    move p1, v0

    :cond_4
    if-gtz p2, :cond_7

    move p2, v0

    .line 1196
    :cond_7
    iput p1, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 1197
    iput p2, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 1199
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_23

    .line 1200
    new-instance v0, Lqq;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-direct {v0, v1, p1, p2}, Lqq;-><init>(Lkv;II)V

    .line 1202
    invoke-virtual {v0}, Lqq;->a()I

    move-result p1

    .line 1203
    invoke-virtual {v0}, Lqq;->b()I

    move-result p2

    .line 1204
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    invoke-virtual {v0, p0, p1, p2}, Lda;->a(Lnet/minecraft/client/Minecraft;II)V

    :cond_23
    return-void
.end method

.method private a(IZ)V
    .registers 6

    .line 1065
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-boolean v0, v0, Lob;->b:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p2, :cond_c

    const/4 v0, 0x0

    .line 1068
    iput v0, p0, Lnet/minecraft/client/Minecraft;->W:I

    :cond_c
    if-nez p1, :cond_13

    .line 1069
    iget v0, p0, Lnet/minecraft/client/Minecraft;->W:I

    if-lez v0, :cond_13

    return-void

    :cond_13
    if-eqz p2, :cond_40

    .line 1072
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    if-eqz p2, :cond_40

    iget-object p2, p2, Lvf;->a:Ljg;

    sget-object v0, Ljg;->a:Ljg;

    if-ne p2, v0, :cond_40

    if-nez p1, :cond_40

    .line 1074
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget p1, p1, Lvf;->b:I

    .line 1075
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget p2, p2, Lvf;->c:I

    .line 1076
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v0, v0, Lvf;->d:I

    .line 1077
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v2, v2, Lvf;->e:I

    invoke-virtual {v1, p1, p2, v0, v2}, Lob;->c(IIII)V

    .line 1078
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->j:Ldn;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->y:Lvf;

    iget v2, v2, Lvf;->e:I

    invoke-virtual {v1, p1, p2, v0, v2}, Ldn;->a(IIII)V

    goto :goto_45

    .line 1080
    :cond_40
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    invoke-virtual {p1}, Lob;->a()V

    :goto_45
    return-void
.end method

.method private a(J)V
    .registers 30

    move-object/from16 v0, p0

    .line 948
    iget-wide v1, v0, Lnet/minecraft/client/Minecraft;->M:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .line 949
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lnet/minecraft/client/Minecraft;->M:J

    .line 951
    :cond_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 952
    sget-object v3, Lnet/minecraft/client/Minecraft;->F:[J

    sget v4, Lnet/minecraft/client/Minecraft;->G:I

    sget-object v5, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int/2addr v6, v4

    aput-wide p1, v3, v6

    add-int/lit8 v3, v4, 0x1

    .line 954
    sput v3, Lnet/minecraft/client/Minecraft;->G:I

    array-length v3, v5

    sub-int/2addr v3, v7

    and-int/2addr v3, v4

    iget-wide v8, v0, Lnet/minecraft/client/Minecraft;->M:J

    sub-long v8, v1, v8

    aput-wide v8, v5, v3

    .line 956
    iput-wide v1, v0, Lnet/minecraft/client/Minecraft;->M:J

    const/16 v1, 0x100

    .line 958
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    const/16 v1, 0x1701

    .line 959
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 960
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const-wide/16 v8, 0x0

    .line 961
    iget v1, v0, Lnet/minecraft/client/Minecraft;->d:I

    int-to-double v10, v1

    iget v1, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-double v12, v1

    const-wide/16 v14, 0x0

    const-wide v16, 0x408f400000000000L    # 1000.0

    const-wide v18, 0x40a7700000000000L    # 3000.0

    invoke-static/range {v8 .. v19}, Lorg/lwjgl/opengl/GL11;->glOrtho(DDDDDD)V

    const/16 v1, 0x1700

    .line 962
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 963
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/high16 v1, -0x3b060000    # -2000.0f

    const/4 v2, 0x0

    .line 964
    invoke-static {v2, v2, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 966
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glLineWidth(F)V

    const/16 v1, 0xde1

    .line 967
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 968
    sget-object v2, Lnw;->a:Lnw;

    const/4 v3, 0x7

    .line 969
    invoke-virtual {v2, v3}, Lnw;->a(I)V

    const-wide/16 v4, 0x53

    long-to-int v4, v4

    const/high16 v5, 0x20000000

    .line 971
    invoke-virtual {v2, v5}, Lnw;->b(I)V

    const-wide/16 v9, 0x0

    .line 972
    iget v5, v0, Lnet/minecraft/client/Minecraft;->e:I

    sub-int/2addr v5, v4

    int-to-double v11, v5

    const-wide/16 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 973
    iget v5, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-double v11, v5

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 974
    sget-object v5, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v5, v5

    int-to-double v9, v5

    iget v5, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-double v11, v5

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 975
    sget-object v5, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v5, v5

    int-to-double v9, v5

    iget v5, v0, Lnet/minecraft/client/Minecraft;->e:I

    sub-int/2addr v5, v4

    int-to-double v11, v5

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    const/high16 v5, 0x20200000

    .line 977
    invoke-virtual {v2, v5}, Lnw;->b(I)V

    const-wide/16 v9, 0x0

    .line 978
    iget v5, v0, Lnet/minecraft/client/Minecraft;->e:I

    mul-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    int-to-double v11, v5

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 979
    iget v5, v0, Lnet/minecraft/client/Minecraft;->e:I

    sub-int/2addr v5, v4

    int-to-double v11, v5

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 980
    sget-object v5, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v5, v5

    int-to-double v9, v5

    iget v5, v0, Lnet/minecraft/client/Minecraft;->e:I

    sub-int/2addr v5, v4

    int-to-double v11, v5

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 981
    sget-object v4, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v4, v4

    int-to-double v9, v4

    iget v4, v0, Lnet/minecraft/client/Minecraft;->e:I

    sub-int/2addr v4, v6

    int-to-double v11, v4

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 983
    invoke-virtual {v2}, Lnw;->a()V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v8, v4

    .line 985
    :goto_d4
    sget-object v9, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v10, v9

    if-ge v8, v10, :cond_df

    .line 986
    aget-wide v10, v9, v8

    add-long/2addr v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_d4

    :cond_df
    const-wide/32 v15, 0x30d40

    .line 988
    div-long/2addr v5, v15

    array-length v8, v9

    int-to-long v8, v8

    div-long/2addr v5, v8

    long-to-int v5, v5

    .line 989
    invoke-virtual {v2, v3}, Lnw;->a(I)V

    const/high16 v3, 0x20400000

    .line 990
    invoke-virtual {v2, v3}, Lnw;->b(I)V

    const-wide/16 v9, 0x0

    .line 991
    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    sub-int/2addr v3, v5

    int-to-double v11, v3

    const-wide/16 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 992
    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-double v11, v3

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 993
    sget-object v3, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v3, v3

    int-to-double v9, v3

    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-double v11, v3

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 994
    sget-object v3, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v3, v3

    int-to-double v9, v3

    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    sub-int/2addr v3, v5

    int-to-double v11, v3

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 995
    invoke-virtual {v2}, Lnw;->a()V

    .line 996
    invoke-virtual {v2, v7}, Lnw;->a(I)V

    .line 997
    :goto_11c
    sget-object v3, Lnet/minecraft/client/Minecraft;->E:[J

    array-length v5, v3

    if-ge v4, v5, :cond_1b2

    .line 998
    sget v5, Lnet/minecraft/client/Minecraft;->G:I

    sub-int v5, v4, v5

    array-length v6, v3

    sub-int/2addr v6, v7

    and-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0xff

    array-length v6, v3

    div-int/2addr v5, v6

    mul-int/2addr v5, v5

    .line 1000
    div-int/lit16 v5, v5, 0xff

    mul-int/2addr v5, v5

    .line 1001
    div-int/lit16 v5, v5, 0xff

    mul-int v6, v5, v5

    .line 1002
    div-int/lit16 v6, v6, 0xff

    mul-int/2addr v6, v6

    .line 1003
    div-int/lit16 v6, v6, 0xff

    .line 1004
    aget-wide v8, v3, v4

    const-wide/32 v10, 0xfe502a

    cmp-long v3, v8, v10

    const/high16 v6, 0x10000

    const/high16 v17, -0x1000000

    if-lez v3, :cond_14e

    mul-int v3, v5, v6

    add-int v3, v3, v17

    .line 1005
    invoke-virtual {v2, v3}, Lnw;->b(I)V

    goto :goto_155

    :cond_14e
    mul-int/lit16 v3, v5, 0x100

    add-int v3, v3, v17

    .line 1007
    invoke-virtual {v2, v3}, Lnw;->b(I)V

    .line 1010
    :goto_155
    sget-object v3, Lnet/minecraft/client/Minecraft;->E:[J

    aget-wide v8, v3, v4

    div-long v18, v8, v15

    .line 1011
    sget-object v3, Lnet/minecraft/client/Minecraft;->F:[J

    aget-wide v8, v3, v4

    div-long v20, v8, v15

    int-to-float v3, v4

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v3, v3, v22

    float-to-double v13, v3

    .line 1013
    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-long v8, v3

    sub-long v8, v8, v18

    long-to-float v3, v8

    add-float v3, v3, v22

    float-to-double v11, v3

    const-wide/16 v23, 0x0

    move-object v8, v2

    move-wide v9, v13

    move-wide/from16 v25, v13

    move-wide/from16 v13, v23

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 1014
    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-float v3, v3

    add-float v3, v3, v22

    float-to-double v11, v3

    const-wide/16 v13, 0x0

    move-wide/from16 v9, v25

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    mul-int/2addr v6, v5

    add-int v6, v6, v17

    mul-int/lit16 v3, v5, 0x100

    add-int/2addr v6, v3

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v5

    .line 1017
    invoke-virtual {v2, v6}, Lnw;->b(I)V

    .line 1021
    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-long v5, v3

    sub-long v5, v5, v18

    long-to-float v3, v5

    add-float v3, v3, v22

    float-to-double v11, v3

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    .line 1022
    iget v3, v0, Lnet/minecraft/client/Minecraft;->e:I

    int-to-long v5, v3

    sub-long v18, v18, v20

    sub-long v5, v5, v18

    long-to-float v3, v5

    add-float v3, v3, v22

    float-to-double v11, v3

    invoke-virtual/range {v8 .. v14}, Lnw;->a(DDD)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11c

    .line 1024
    :cond_1b2
    invoke-virtual {v2}, Lnw;->a()V

    .line 1026
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1908
    invoke-static {p0, p1, v0}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v6, 0x0

    .line 1915
    new-instance v8, Lmcshim/awt/Frame;

    const-string v0, "Minecraft"

    invoke-direct {v8, v0}, Lmcshim/awt/Frame;-><init>(Ljava/lang/String;)V

    .line 1916
    new-instance v2, Lmcshim/awt/Canvas;

    invoke-direct {v2}, Lmcshim/awt/Canvas;-><init>()V

    .line 1917
    new-instance v0, Lmcshim/awt/BorderLayout;

    invoke-direct {v0}, Lmcshim/awt/BorderLayout;-><init>()V

    invoke-virtual {v8, v0}, Lmcshim/awt/Frame;->setLayout(Lmcshim/awt/LayoutManager;)V

    const-string v0, "Center"

    .line 1919
    invoke-virtual {v8, v2, v0}, Lmcshim/awt/Frame;->add(Lmcshim/awt/Component;Ljava/lang/Object;)V

    .line 1925
    new-instance v0, Lmcshim/awt/Dimension;

    const/16 v1, 0x356

    const/16 v3, 0x1e0

    invoke-direct {v0, v1, v3}, Lmcshim/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v0}, Lmcshim/awt/Canvas;->setPreferredSize(Lmcshim/awt/Dimension;)V

    .line 1926
    invoke-virtual {v8}, Lmcshim/awt/Frame;->pack()V

    const/4 v0, 0x0

    .line 1927
    invoke-virtual {v8, v0}, Lmcshim/awt/Frame;->setLocationRelativeTo(Lmcshim/awt/Component;)V

    .line 1929
    new-instance v9, Lkq;

    const/4 v3, 0x0

    const/16 v4, 0x356

    const/16 v5, 0x1e0

    move-object v0, v9

    move-object v1, v8

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lkq;-><init>(Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZLmcshim/awt/Frame;)V

    .line 1938
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Minecraft main thread"

    invoke-direct {v0, v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 1939
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const-string v1, "www.minecraft.net"

    .line 1940
    iput-object v1, v9, Lnet/minecraft/client/Minecraft;->l:Ljava/lang/String;

    if-eqz p0, :cond_56

    if-eqz p1, :cond_56

    .line 1944
    new-instance v1, Lgr;

    invoke-direct {v1, p0, p1}, Lgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v9, Lnet/minecraft/client/Minecraft;->k:Lgr;

    goto :goto_74

    .line 1946
    :cond_56
    new-instance p0, Lgr;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Player"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v9, Lnet/minecraft/client/Minecraft;->k:Lgr;

    :goto_74
    const/4 p0, 0x1

    if-eqz p2, :cond_89

    const-string p1, ":"

    .line 1954
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1955
    aget-object p2, p1, p2

    aget-object p1, p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v9, p2, p1}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;I)V

    .line 1958
    :cond_89
    invoke-virtual {v8, p0}, Lmcshim/awt/Frame;->setVisible(Z)V

    .line 1959
    new-instance p0, Lkj;

    invoke-direct {p0, v9, v0}, Lkj;-><init>(Lnet/minecraft/client/Minecraft;Ljava/lang/Thread;)V

    invoke-virtual {v8, p0}, Lmcshim/awt/Frame;->addWindowListener(Lmcshim/awt/event/WindowListener;)V

    .line 1971
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b()Ljava/io/File;
    .registers 1

    invoke-static {}, LMCPortHooks;->dataDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 452
    :cond_7
    sget-object v0, Lnet/minecraft/client/Minecraft;->af:Ljava/io/File;

    if-nez v0, :cond_13

    const-string v0, "minecraft"

    .line 453
    invoke-static {v0}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lnet/minecraft/client/Minecraft;->af:Ljava/io/File;

    .line 454
    :cond_13
    sget-object v0, Lnet/minecraft/client/Minecraft;->af:Ljava/io/File;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1722
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Converting World to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->aa:Lnl;

    invoke-interface {v2}, Lnl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmk;->a(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    const-string v1, "This may take a while :)"

    invoke-virtual {v0, v1}, Lmk;->d(Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->aa:Lnl;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    invoke-interface {v0, p1, v1}, Lnl;->a(Ljava/lang/String;Lyb;)Z

    const-wide/16 v0, 0x0

    .line 1728
    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 7

    .line 548
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glGetError()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 550
    invoke-static {v0}, Lorg/lwjgl/util/glu/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "########## GL ERROR ##########"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 553
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 11

    .line 1748
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    invoke-virtual {v0, p1}, Lmk;->a(Ljava/lang/String;)V

    .line 1749
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    const-string v0, "Building terrain"

    invoke-virtual {p1, v0}, Lmk;->d(Ljava/lang/String;)V

    .line 1754
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {p1}, Lfd;->w()Lcl;

    move-result-object p1

    .line 1756
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->u()Lbr;

    move-result-object v0

    .line 1757
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v1, :cond_28

    .line 1758
    iget-wide v1, v1, Ldc;->aM:D

    double-to-int v1, v1

    iput v1, v0, Lbr;->a:I

    .line 1759
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v1, v1, Ldc;->aO:D

    double-to-int v1, v1

    iput v1, v0, Lbr;->c:I

    .line 1762
    :cond_28
    instance-of v1, p1, Lkx;

    if-eqz v1, :cond_39

    .line 1763
    check-cast p1, Lkx;

    .line 1765
    iget v1, v0, Lbr;->a:I

    shr-int/lit8 v1, v1, 0x4

    iget v2, v0, Lbr;->c:I

    shr-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v1, v2}, Lkx;->d(II)V

    :cond_39
    const/4 p1, 0x0

    const/16 v1, -0x80

    move v2, v1

    :goto_3d
    const/16 v3, 0x80

    if-gt v2, v3, :cond_6c

    move v4, v1

    :goto_42
    if-gt v4, v3, :cond_69

    .line 1770
    iget-object v5, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    add-int/lit8 v6, p1, 0x1

    mul-int/lit8 p1, p1, 0x64

    div-int/lit16 p1, p1, 0x121

    invoke-virtual {v5, p1}, Lmk;->a(I)V

    .line 1772
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v5, v0, Lbr;->a:I

    add-int/2addr v5, v2

    iget v7, v0, Lbr;->c:I

    add-int/2addr v7, v4

    const/16 v8, 0x40

    invoke-virtual {p1, v5, v8, v7}, Lfd;->a(III)I

    .line 1773
    :goto_5c
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {p1}, Lfd;->j()Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_5c

    :cond_65
    add-int/lit8 v4, v4, 0x10

    move p1, v6

    goto :goto_42

    :cond_69
    add-int/lit8 v2, v2, 0x10

    goto :goto_3d

    .line 1777
    :cond_6c
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    const-string v0, "Simulating world for a bit"

    invoke-virtual {p1, v0}, Lmk;->d(Ljava/lang/String;)V

    .line 1779
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {p1}, Lfd;->p()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1988
    array-length v1, p0

    if-lez v1, :cond_1b

    const/4 v0, 0x0

    .line 1989
    aget-object v0, p0, v0

    .line 1991
    :cond_1b
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_22

    .line 1992
    aget-object p0, p0, v2

    goto :goto_24

    :cond_22
    const-string p0, "-"

    .line 1995
    :goto_24
    invoke-static {v0, p0}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t()Z
    .registers 1

    .line 1999
    sget-object v0, Lnet/minecraft/client/Minecraft;->a:Lnet/minecraft/client/Minecraft;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->z:Z

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public static u()Z
    .registers 1

    .line 2006
    sget-object v0, Lnet/minecraft/client/Minecraft;->a:Lnet/minecraft/client/Minecraft;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->j:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static v()Z
    .registers 1

    .line 2010
    sget-object v0, Lnet/minecraft/client/Minecraft;->a:Lnet/minecraft/client/Minecraft;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->k:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static w()Z
    .registers 1

    .line 2014
    sget-object v0, Lnet/minecraft/client/Minecraft;->a:Lnet/minecraft/client/Minecraft;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->B:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private x()V
    .registers 22

    move-object/from16 v7, p0

    .line 394
    new-instance v0, Lqq;

    iget-object v1, v7, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v2, v7, Lnet/minecraft/client/Minecraft;->d:I

    iget v3, v7, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v0, v1, v2, v3}, Lqq;-><init>(Lkv;II)V

    const/16 v1, 0x4100

    .line 397
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glClear(I)V

    const/16 v1, 0x1701

    .line 398
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 399
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const-wide/16 v8, 0x0

    .line 400
    iget-wide v10, v0, Lqq;->a:D

    iget-wide v12, v0, Lqq;->b:D

    const-wide/16 v14, 0x0

    const-wide v16, 0x408f400000000000L    # 1000.0

    const-wide v18, 0x40a7700000000000L    # 3000.0

    invoke-static/range {v8 .. v19}, Lorg/lwjgl/opengl/GL11;->glOrtho(DDDDDD)V

    const/16 v1, 0x1700

    .line 401
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 402
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/high16 v1, -0x3b060000    # -2000.0f

    const/4 v2, 0x0

    .line 403
    invoke-static {v2, v2, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 404
    iget v1, v7, Lnet/minecraft/client/Minecraft;->d:I

    iget v3, v7, Lnet/minecraft/client/Minecraft;->e:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v3}, Lorg/lwjgl/opengl/GL11;->glViewport(IIII)V

    .line 405
    invoke-static {v2, v2, v2, v2}, Lorg/lwjgl/opengl/GL11;->glClearColor(FFFF)V

    .line 408
    sget-object v1, Lnw;->a:Lnw;

    const/16 v19, 0xb50

    .line 410
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v2, 0xde1

    .line 411
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v20, 0xb60

    .line 412
    invoke-static/range {v20 .. v20}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 413
    iget-object v3, v7, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v4, "/title/mojang.png"

    invoke-virtual {v3, v4}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 414
    invoke-virtual {v1}, Lnw;->b()V

    const v2, 0xffffff

    .line 415
    invoke-virtual {v1, v2}, Lnw;->b(I)V

    const-wide/16 v9, 0x0

    .line 416
    iget v3, v7, Lnet/minecraft/client/Minecraft;->e:I

    int-to-double v11, v3

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v8, v1

    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    .line 417
    iget v3, v7, Lnet/minecraft/client/Minecraft;->d:I

    int-to-double v9, v3

    iget v3, v7, Lnet/minecraft/client/Minecraft;->e:I

    int-to-double v11, v3

    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    .line 418
    iget v3, v7, Lnet/minecraft/client/Minecraft;->d:I

    int-to-double v9, v3

    const-wide/16 v11, 0x0

    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    const-wide/16 v9, 0x0

    .line 419
    invoke-virtual/range {v8 .. v18}, Lnw;->a(DDDDD)V

    .line 420
    invoke-virtual {v1}, Lnw;->a()V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 424
    invoke-static {v3, v3, v3, v3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 425
    invoke-virtual {v1, v2}, Lnw;->b(I)V

    .line 426
    invoke-virtual {v0}, Lqq;->a()I

    move-result v1

    add-int/lit16 v1, v1, -0x100

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lqq;->b()I

    move-result v0

    add-int/lit16 v0, v0, -0x100

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    const/16 v6, 0x100

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/minecraft/client/Minecraft;->a(IIIIII)V

    .line 428
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 429
    invoke-static/range {v20 .. v20}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0xbc0

    .line 431
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x204

    const v1, 0x3dcccccd    # 0.1f

    .line 432
    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glAlphaFunc(IF)V

    .line 434
    invoke-static {}, Lorg/lwjgl/opengl/Display;->swapBuffers()V

    return-void
.end method

.method private static y()Lpd;
    .registers 2

    const-string v0, "os.name"

    .line 490
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 492
    sget-object v0, Lpd;->c:Lpd;

    return-object v0

    :cond_15
    const-string v1, "mac"

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 494
    sget-object v0, Lpd;->d:Lpd;

    return-object v0

    :cond_20
    const-string v1, "solaris"

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 496
    sget-object v0, Lpd;->b:Lpd;

    return-object v0

    :cond_2b
    const-string v1, "sunos"

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 498
    sget-object v0, Lpd;->b:Lpd;

    return-object v0

    :cond_36
    const-string v1, "linux"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 500
    sget-object v0, Lpd;->a:Lpd;

    return-object v0

    :cond_41
    const-string v1, "unix"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 502
    sget-object v0, Lpd;->a:Lpd;

    return-object v0

    .line 503
    :cond_4c
    sget-object v0, Lpd;->e:Lpd;

    return-object v0
.end method

.method private z()V
    .registers 5

    const/16 v0, 0x3c

    .line 875
    invoke-static {v0}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 876
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->L:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 877
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->L:Z

    .line 878
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->v:Luq;

    sget-object v1, Lnet/minecraft/client/Minecraft;->af:Ljava/io/File;

    iget v2, p0, Lnet/minecraft/client/Minecraft;->d:I

    iget v3, p0, Lnet/minecraft/client/Minecraft;->e:I

    invoke-static {v1, v2, v3}, Lhj;->a(Ljava/io/File;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Luq;->a(Ljava/lang/String;)V

    goto :goto_22

    :cond_1f
    const/4 v0, 0x0

    .line 881
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->L:Z

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 237
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 238
    invoke-virtual {v0}, Lmcshim/awt/Canvas;->getGraphics()Lmcshim/awt/Graphics;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 240
    sget-object v3, Lmcshim/awt/Color;->BLACK:Lmcshim/awt/Color;

    invoke-virtual {v0, v3}, Lmcshim/awt/Graphics;->setColor(Lmcshim/awt/Color;)V

    .line 241
    iget v3, p0, Lnet/minecraft/client/Minecraft;->d:I

    iget v4, p0, Lnet/minecraft/client/Minecraft;->e:I

    invoke-virtual {v0, v2, v2, v3, v4}, Lmcshim/awt/Graphics;->fillRect(IIII)V

    .line 242
    invoke-virtual {v0}, Lmcshim/awt/Graphics;->dispose()V

    .line 244
    :cond_1b
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    invoke-static {v0}, Lorg/lwjgl/opengl/Display;->setParent(Lmcshim/awt/Canvas;)V

    goto :goto_53

    .line 246
    :cond_21
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    if-eqz v0, :cond_47

    .line 247
    invoke-static {v1}, Lorg/lwjgl/opengl/Display;->setFullscreen(Z)V

    .line 248
    invoke-static {}, Lorg/lwjgl/opengl/Display;->getDisplayMode()Lorg/lwjgl/opengl/DisplayMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lwjgl/opengl/DisplayMode;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 249
    invoke-static {}, Lorg/lwjgl/opengl/Display;->getDisplayMode()Lorg/lwjgl/opengl/DisplayMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lwjgl/opengl/DisplayMode;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 250
    iget v3, p0, Lnet/minecraft/client/Minecraft;->d:I

    if-gtz v3, :cond_42

    .line 251
    iput v1, p0, Lnet/minecraft/client/Minecraft;->d:I

    :cond_42
    if-gtz v0, :cond_53

    .line 253
    iput v1, p0, Lnet/minecraft/client/Minecraft;->e:I

    goto :goto_53

    .line 255
    :cond_47
    new-instance v0, Lorg/lwjgl/opengl/DisplayMode;

    iget v3, p0, Lnet/minecraft/client/Minecraft;->d:I

    iget v4, p0, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v0, v3, v4}, Lorg/lwjgl/opengl/DisplayMode;-><init>(II)V

    invoke-static {v0}, Lorg/lwjgl/opengl/Display;->setDisplayMode(Lorg/lwjgl/opengl/DisplayMode;)V

    :cond_53
    :goto_53
    const-string v0, "Minecraft Minecraft Beta 1.7.3"

    .line 259
    invoke-static {v0}, Lorg/lwjgl/opengl/Display;->setTitle(Ljava/lang/String;)V

    .line 262
    :try_start_58
    invoke-static {}, Lorg/lwjgl/opengl/Display;->create()V
    :try_end_5b
    .catch Lorg/lwjgl/LWJGLException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_68

    :catch_5c
    move-exception v0

    .line 289
    invoke-virtual {v0}, Lorg/lwjgl/LWJGLException;->printStackTrace()V

    const-wide/16 v3, 0x3e8

    .line 291
    :try_start_62
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_65

    .line 294
    :catch_65
    invoke-static {}, Lorg/lwjgl/opengl/Display;->create()V

    .line 304
    :goto_68
    invoke-static {}, Lnet/minecraft/client/Minecraft;->b()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->Z:Ljava/io/File;

    .line 305
    new-instance v0, Lhi;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->Z:Ljava/io/File;

    const-string v5, "saves"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lhi;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->aa:Lnl;

    .line 308
    new-instance v0, Lkv;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->Z:Ljava/io/File;

    invoke-direct {v0, p0, v3}, Lkv;-><init>(Lnet/minecraft/client/Minecraft;Ljava/io/File;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    .line 309
    new-instance v0, Lik;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->Z:Ljava/io/File;

    invoke-direct {v0, p0, v3}, Lik;-><init>(Lnet/minecraft/client/Minecraft;Ljava/io/File;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->D:Lik;

    .line 310
    new-instance v0, Lji;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->D:Lik;

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-direct {v0, v3, v4}, Lji;-><init>(Lik;Lkv;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    .line 311
    new-instance v3, Lsj;

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    const-string v5, "/font/default.png"

    invoke-direct {v3, v4, v5, v0}, Lsj;-><init>(Lkv;Ljava/lang/String;Lji;)V

    iput-object v3, p0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    .line 313
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v3, "/misc/watercolor.png"

    invoke-virtual {v0, v3}, Lji;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lhw;->a([I)V

    .line 314
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v3, "/misc/grasscolor.png"

    invoke-virtual {v0, v3}, Lji;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lia;->a([I)V

    .line 315
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v3, "/misc/foliagecolor.png"

    invoke-virtual {v0, v3}, Lji;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Ljh;->a([I)V

    .line 317
    new-instance v0, Lpx;

    invoke-direct {v0, p0}, Lpx;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->t:Lpx;

    .line 318
    sget-object v0, Lth;->a:Lth;

    new-instance v3, Lra;

    invoke-direct {v3, p0}, Lra;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v3, v0, Lth;->f:Lra;

    .line 320
    new-instance v0, Lxi;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->Z:Ljava/io/File;

    invoke-direct {v0, v3, v4}, Lxi;-><init>(Lgr;Ljava/io/File;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    .line 322
    sget-object v0, Lep;->f:Lny;

    new-instance v3, Lkh;

    invoke-direct {v3, p0}, Lkh;-><init>(Lnet/minecraft/client/Minecraft;)V

    invoke-virtual {v0, v3}, Lny;->a(Lgt;)Lny;

    .line 329
    invoke-direct {p0}, Lnet/minecraft/client/Minecraft;->x()V

    .line 331
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->create()V

    .line 332
    invoke-static {}, Lorg/lwjgl/input/Mouse;->create()V

    .line 333
    new-instance v0, Lvy;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    invoke-direct {v0, v3}, Lvy;-><init>(Lmcshim/awt/Component;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->C:Lvy;

    .line 335
    :try_start_fe
    invoke-static {}, Lorg/lwjgl/input/Controllers;->create()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_102

    goto :goto_106

    :catch_102
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_106
    const-string v0, "Pre startup"

    .line 340
    invoke-direct {p0, v0}, Lnet/minecraft/client/Minecraft;->c(Ljava/lang/String;)V

    const/16 v0, 0xde1

    .line 345
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x1d01

    .line 346
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 347
    invoke-static {v3, v4}, Lorg/lwjgl/opengl/GL11;->glClearDepth(D)V

    const/16 v0, 0xb71

    .line 348
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x203

    .line 349
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDepthFunc(I)V

    const/16 v0, 0xbc0

    .line 350
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x204

    const v3, 0x3dcccccd    # 0.1f

    .line 351
    invoke-static {v0, v3}, Lorg/lwjgl/opengl/GL11;->glAlphaFunc(IF)V

    const/16 v0, 0x405

    .line 352
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glCullFace(I)V

    const/16 v0, 0x1701

    .line 354
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    .line 355
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glLoadIdentity()V

    const/16 v0, 0x1700

    .line 356
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glMatrixMode(I)V

    const-string v0, "Startup"

    .line 357
    invoke-direct {p0, v0}, Lnet/minecraft/client/Minecraft;->c(Ljava/lang/String;)V

    .line 359
    new-instance v0, Lcx;

    invoke-direct {v0}, Lcx;-><init>()V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->S:Lcx;

    .line 360
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {v0, v3}, Lyo;->a(Lkv;)V

    .line 362
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->ae:Lcg;

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 363
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->ad:Lvs;

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 364
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    new-instance v3, Lhs;

    invoke-direct {v3}, Lhs;-><init>()V

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 365
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    new-instance v3, Lav;

    invoke-direct {v3, p0}, Lav;-><init>(Lnet/minecraft/client/Minecraft;)V

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 366
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    new-instance v3, Lku;

    invoke-direct {v3, p0}, Lku;-><init>(Lnet/minecraft/client/Minecraft;)V

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 367
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    new-instance v3, Loh;

    invoke-direct {v3}, Loh;-><init>()V

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 368
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    new-instance v3, Lif;

    invoke-direct {v3}, Lif;-><init>()V

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 369
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    new-instance v3, Lsd;

    invoke-direct {v3, v2}, Lsd;-><init>(I)V

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 370
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    new-instance v3, Lsd;

    invoke-direct {v3, v1}, Lsd;-><init>(I)V

    invoke-virtual {v0, v3}, Lji;->a(Law;)V

    .line 372
    new-instance v0, Ln;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-direct {v0, p0, v1}, Ln;-><init>(Lnet/minecraft/client/Minecraft;Lji;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->g:Ln;

    .line 374
    iget v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    iget v1, p0, Lnet/minecraft/client/Minecraft;->e:I

    invoke-static {v2, v2, v0, v1}, Lorg/lwjgl/opengl/GL11;->glViewport(IIII)V

    .line 376
    new-instance v0, Ldn;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-direct {v0, v1, v2}, Ldn;-><init>(Lfd;Lji;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->j:Ldn;

    .line 378
    :try_start_1c5
    new-instance v0, Lcz;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->Z:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcz;-><init>(Ljava/io/File;Lnet/minecraft/client/Minecraft;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->U:Lcz;

    .line 379
    invoke-virtual {v0}, Lcz;->start()V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1d1} :catch_1d1

    :catch_1d1
    const-string v0, "Post startup"

    .line 383
    invoke-direct {p0, v0}, Lnet/minecraft/client/Minecraft;->c(Ljava/lang/String;)V

    .line 384
    new-instance v0, Luq;

    invoke-direct {v0, p0}, Luq;-><init>(Lnet/minecraft/client/Minecraft;)V

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->v:Luq;

    .line 386
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->ab:Ljava/lang/String;

    if-eqz v0, :cond_1ec

    .line 387
    new-instance v1, Lvx;

    iget v2, p0, Lnet/minecraft/client/Minecraft;->ac:I

    invoke-direct {v1, p0, v0, v2}, Lvx;-><init>(Lnet/minecraft/client/Minecraft;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_1f4

    .line 389
    :cond_1ec
    new-instance v0, Lfu;

    invoke-direct {v0}, Lfu;-><init>()V

    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :goto_1f4
    return-void
.end method

.method public a(IIIIII)V
    .registers 30

    .line 440
    sget-object v11, Lnw;->a:Lnw;

    .line 441
    invoke-virtual {v11}, Lnw;->b()V

    add-int/lit8 v0, p1, 0x0

    int-to-double v12, v0

    add-int v0, p2, p6

    int-to-double v14, v0

    const-wide/16 v5, 0x0

    add-int/lit8 v0, p3, 0x0

    int-to-float v0, v0

    const/high16 v16, 0x3b800000    # 0.00390625f

    mul-float v0, v0, v16

    float-to-double v9, v0

    add-int v0, p4, p6

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-double v7, v0

    move-object v0, v11

    move-wide v1, v12

    move-wide v3, v14

    move-wide/from16 v17, v7

    move-wide v7, v9

    move-wide/from16 v19, v9

    move-wide/from16 v9, v17

    .line 442
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-int v0, p1, p5

    int-to-double v9, v0

    add-int v0, p3, p5

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-double v7, v0

    move-object v0, v11

    move-wide v1, v9

    move-wide v14, v7

    move-wide/from16 v21, v9

    move-wide/from16 v9, v17

    .line 443
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-int/lit8 v0, p2, 0x0

    int-to-double v9, v0

    add-int/lit8 v0, p4, 0x0

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-double v7, v0

    move-object v0, v11

    move-wide/from16 v1, v21

    move-wide v3, v9

    move-wide/from16 v16, v7

    move-wide v7, v14

    move-wide v14, v9

    move-wide/from16 v9, v16

    .line 444
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v1, v12

    move-wide v3, v14

    move-wide/from16 v7, v19

    .line 445
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    .line 446
    invoke-virtual {v11}, Lnw;->a()V

    return-void
.end method

.method public a(Lda;)V
    .registers 6

    .line 511
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    instance-of v1, v0, Lce;

    if-eqz v1, :cond_7

    return-void

    :cond_7
    if-eqz v0, :cond_c

    .line 515
    invoke-virtual {v0}, Lda;->h()V

    .line 518
    :cond_c
    instance-of v0, p1, Lfu;

    if-eqz v0, :cond_15

    .line 519
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v0}, Lxi;->b()V

    .line 521
    :cond_15
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v0}, Lxi;->c()V

    if-nez p1, :cond_26

    .line 523
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-nez v0, :cond_26

    .line 524
    new-instance p1, Lfu;

    invoke-direct {p1}, Lfu;-><init>()V

    goto :goto_33

    :cond_26
    if-nez p1, :cond_33

    .line 525
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->Y:I

    if-gtz v0, :cond_33

    .line 526
    new-instance p1, Lch;

    invoke-direct {p1}, Lch;-><init>()V

    .line 529
    :cond_33
    :goto_33
    instance-of v0, p1, Lfu;

    if-eqz v0, :cond_3c

    .line 530
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->v:Luq;

    invoke-virtual {v0}, Luq;->b()V

    .line 533
    :cond_3c
    iput-object p1, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz p1, :cond_5d

    .line 535
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->h()V

    .line 536
    new-instance v0, Lqq;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v2, p0, Lnet/minecraft/client/Minecraft;->d:I

    iget v3, p0, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v0, v1, v2, v3}, Lqq;-><init>(Lkv;II)V

    .line 538
    invoke-virtual {v0}, Lqq;->a()I

    move-result v1

    .line 539
    invoke-virtual {v0}, Lqq;->b()I

    move-result v0

    .line 540
    invoke-virtual {p1, p0, v1, v0}, Lda;->a(Lnet/minecraft/client/Minecraft;II)V

    const/4 p1, 0x0

    .line 541
    iput-boolean p1, p0, Lnet/minecraft/client/Minecraft;->w:Z

    goto :goto_60

    .line 543
    :cond_5d
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->g()V

    :goto_60
    return-void
.end method

.method public a(Lfd;)V
    .registers 3

    const-string v0, ""

    .line 1639
    invoke-virtual {p0, p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lfd;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lfd;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1643
    invoke-virtual {p0, p1, p2, v0}, Lnet/minecraft/client/Minecraft;->a(Lfd;Ljava/lang/String;Lgs;)V

    return-void
.end method

.method public a(Lfd;Ljava/lang/String;Lgs;)V
    .registers 14

    .line 1647
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v0}, Lxi;->b()V

    .line 1648
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v0}, Lxi;->c()V

    const/4 v0, 0x0

    .line 1650
    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 1652
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    invoke-virtual {v1, p2}, Lmk;->a(Ljava/lang/String;)V

    .line 1653
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lmk;->d(Ljava/lang/String;)V

    .line 1655
    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lyo;->a(Ljava/lang/String;FFFFF)V

    .line 1657
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v1, :cond_2d

    .line 1658
    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    invoke-virtual {v1, v2}, Lfd;->a(Lyb;)V

    .line 1659
    :cond_2d
    iput-object p1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz p1, :cond_d3

    .line 1662
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    invoke-virtual {v0, p1}, Lob;->a(Lfd;)V

    .line 1664
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->l()Z

    move-result v0

    if-nez v0, :cond_49

    if-nez p3, :cond_57

    .line 1666
    const-class v0, Ldc;

    invoke-virtual {p1, v0}, Lfd;->a(Ljava/lang/Class;)Lsn;

    move-result-object v0

    check-cast v0, Ldc;

    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    goto :goto_57

    .line 1670
    :cond_49
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v0, :cond_57

    .line 1671
    invoke-virtual {v0}, Ldc;->t_()V

    if-eqz p1, :cond_57

    .line 1674
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1, v0}, Lfd;->b(Lsn;)Z

    .line 1679
    :cond_57
    :goto_57
    iget-boolean v0, p1, Lfd;->B:Z

    if-nez v0, :cond_5e

    .line 1680
    invoke-direct {p0, p2}, Lnet/minecraft/client/Minecraft;->d(Ljava/lang/String;)V

    .line 1682
    :cond_5e
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-nez p2, :cond_76

    .line 1683
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    invoke-virtual {p2, p1}, Lob;->b(Lfd;)Lgs;

    move-result-object p2

    check-cast p2, Ldc;

    iput-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    .line 1684
    invoke-virtual {p2}, Ldc;->t_()V

    .line 1685
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p2, v0}, Lob;->a(Lgs;)V

    .line 1688
    :cond_76
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    new-instance v0, Llr;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-direct {v0, v1}, Llr;-><init>(Lkv;)V

    iput-object v0, p2, Ldc;->a:Luo;

    .line 1689
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->g:Ln;

    if-eqz p2, :cond_88

    .line 1690
    invoke-virtual {p2, p1}, Ln;->a(Lfd;)V

    .line 1691
    :cond_88
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->j:Ldn;

    if-eqz p2, :cond_8f

    .line 1692
    invoke-virtual {p2, p1}, Ldn;->a(Lfd;)V

    .line 1693
    :cond_8f
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p2, v0}, Lob;->b(Lgs;)V

    if-eqz p3, :cond_9b

    .line 1696
    invoke-virtual {p1}, Lfd;->e()V

    .line 1698
    :cond_9b
    invoke-virtual {p1}, Lfd;->w()Lcl;

    move-result-object p2

    .line 1699
    instance-of p3, p2, Lkx;

    if-eqz p3, :cond_c0

    .line 1700
    check-cast p2, Lkx;

    .line 1702
    iget-object p3, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v0, p3, Ldc;->aM:D

    double-to-int p3, v0

    int-to-float p3, p3

    invoke-static {p3}, Lin;->d(F)I

    move-result p3

    shr-int/lit8 p3, p3, 0x4

    .line 1703
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v0, v0, Ldc;->aO:D

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Lin;->d(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    .line 1705
    invoke-virtual {p2, p3, v0}, Lkx;->d(II)V

    .line 1707
    :cond_c0
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1, p2}, Lfd;->a(Lgs;)V

    .line 1709
    iget-boolean p2, p1, Lfd;->s:Z

    if-eqz p2, :cond_ce

    .line 1710
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->s:Lmk;

    invoke-virtual {p1, p2}, Lfd;->a(Lyb;)V

    .line 1712
    :cond_ce
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput-object p1, p0, Lnet/minecraft/client/Minecraft;->i:Lls;

    goto :goto_d5

    .line 1714
    :cond_d3
    iput-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    .line 1717
    :goto_d5
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 p1, 0x0

    .line 1718
    iput-wide p1, p0, Lnet/minecraft/client/Minecraft;->P:J

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 3

    .line 229
    iput-object p1, p0, Lnet/minecraft/client/Minecraft;->ab:Ljava/lang/String;

    .line 230
    iput p2, p0, Lnet/minecraft/client/Minecraft;->ac:I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    const-string v0, "/"

    .line 1804
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 1805
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 1806
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sound"

    .line 1807
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1808
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0, p1, p2}, Lyo;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_56

    :cond_1f
    const-string v0, "newsound"

    .line 1809
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1810
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0, p1, p2}, Lyo;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_56

    :cond_2d
    const-string v0, "streaming"

    .line 1811
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1812
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0, p1, p2}, Lyo;->b(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_56

    :cond_3b
    const-string v0, "music"

    .line 1813
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1814
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0, p1, p2}, Lyo;->c(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_56

    :cond_49
    const-string v0, "newmusic"

    .line 1815
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1816
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0, p1, p2}, Lyo;->c(Ljava/lang/String;Ljava/io/File;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    const/4 v0, 0x0

    .line 1535
    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 1536
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1538
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->aa:Lnl;

    invoke-interface {v0, p1}, Lnl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1539
    invoke-direct {p0, p1, p2}, Lnet/minecraft/client/Minecraft;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 1541
    :cond_13
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->aa:Lnl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnl;->a(Ljava/lang/String;Z)Lwt;

    move-result-object p1

    .line 1544
    new-instance v0, Lfd;

    invoke-direct {v0, p1, p2, p3, p4}, Lfd;-><init>(Lwt;Ljava/lang/String;J)V

    .line 1548
    iget-boolean p1, v0, Lfd;->s:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_38

    .line 1549
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    sget-object p3, Ljl;->g:Lvr;

    invoke-virtual {p1, p3, p2}, Lxi;->a(Lvr;I)V

    .line 1550
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    sget-object p3, Ljl;->f:Lvr;

    invoke-virtual {p1, p3, p2}, Lxi;->a(Lvr;I)V

    const-string p1, "Generating level"

    .line 1551
    invoke-virtual {p0, v0, p1}, Lnet/minecraft/client/Minecraft;->a(Lfd;Ljava/lang/String;)V

    goto :goto_4b

    .line 1553
    :cond_38
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    sget-object p3, Ljl;->h:Lvr;

    invoke-virtual {p1, p3, p2}, Lxi;->a(Lvr;I)V

    .line 1554
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    sget-object p3, Ljl;->f:Lvr;

    invoke-virtual {p1, p3, p2}, Lxi;->a(Lvr;I)V

    const-string p1, "Loading level"

    .line 1555
    invoke-virtual {p0, v0, p1}, Lnet/minecraft/client/Minecraft;->a(Lfd;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method public abstract a(Lmh;)V
.end method

.method public a(ZI)V
    .registers 15

    .line 1842
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_13

    .line 1843
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v0, v0, Lfd;->t:Lxa;

    invoke-virtual {v0}, Lxa;->f()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1844
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->m()V

    .line 1854
    :cond_13
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    if-nez p1, :cond_32

    .line 1855
    invoke-virtual {v0}, Ldc;->Q()Lbr;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 1857
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-static {v0, p1}, Lgs;->a(Lfd;Lbr;)Lbr;

    move-result-object v0

    if-nez v0, :cond_34

    .line 1860
    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    const-string v3, "tile.bed.notValid"

    invoke-virtual {v2, v3}, Ldc;->b(Ljava/lang/String;)V

    goto :goto_34

    :cond_30
    move-object v0, v1

    goto :goto_34

    :cond_32
    move-object p1, v1

    move-object v0, p1

    :cond_34
    :goto_34
    const/4 v2, 0x0

    if-nez v0, :cond_3f

    .line 1865
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->u()Lbr;

    move-result-object v0

    move v3, v2

    goto :goto_40

    :cond_3f
    const/4 v3, 0x1

    .line 1869
    :goto_40
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v4}, Lfd;->w()Lcl;

    move-result-object v4

    .line 1870
    instance-of v5, v4, Lkx;

    if-eqz v5, :cond_57

    .line 1871
    check-cast v4, Lkx;

    .line 1872
    iget v5, v0, Lbr;->a:I

    shr-int/lit8 v5, v5, 0x4

    iget v6, v0, Lbr;->c:I

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v4, v5, v6}, Lkx;->d(II)V

    .line 1875
    :cond_57
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v4}, Lfd;->d()V

    .line 1876
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v4}, Lfd;->v()V

    .line 1879
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v4, :cond_6e

    .line 1880
    iget v2, v4, Ldc;->aD:I

    .line 1881
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v5, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v4, v5}, Lfd;->e(Lsn;)V

    .line 1884
    :cond_6e
    iput-object v1, p0, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 1885
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object v5, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v4, v5}, Lob;->b(Lfd;)Lgs;

    move-result-object v4

    check-cast v4, Ldc;

    iput-object v4, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    .line 1886
    iput p2, v4, Ldc;->m:I

    .line 1887
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput-object p2, p0, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 1888
    invoke-virtual {p2}, Ldc;->t_()V

    if-eqz v3, :cond_a7

    .line 1890
    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p2, p1}, Ldc;->a(Lbr;)V

    .line 1891
    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget p1, v0, Lbr;->a:I

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-double v4, p1

    iget p1, v0, Lbr;->b:I

    int-to-float p1, p1

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v6

    float-to-double v6, p1

    iget p1, v0, Lbr;->c:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-double v8, p1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Ldc;->c(DDDFF)V

    .line 1894
    :cond_a7
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1, p2}, Lob;->a(Lgs;)V

    .line 1895
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1, p2}, Lfd;->a(Lgs;)V

    .line 1897
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    new-instance p2, Llr;

    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-direct {p2, v0}, Llr;-><init>(Lkv;)V

    iput-object p2, p1, Ldc;->a:Luo;

    .line 1898
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v2, p1, Ldc;->aD:I

    .line 1899
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1}, Ldc;->v()V

    .line 1900
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    iget-object p2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1, p2}, Lob;->b(Lgs;)V

    const-string p1, "Respawning"

    .line 1901
    invoke-direct {p0, p1}, Lnet/minecraft/client/Minecraft;->d(Ljava/lang/String;)V

    .line 1903
    iget-object p1, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    instance-of p1, p1, Lch;

    if-eqz p1, :cond_de

    .line 1904
    invoke-virtual {p0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_de
    return-void
.end method

.method public b(Lmh;)V
    .registers 3

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->R:Z

    .line 220
    invoke-virtual {p0, p1}, Lnet/minecraft/client/Minecraft;->a(Lmh;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "/"

    .line 2019
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public c()Lnl;
    .registers 2

    .line 507
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->aa:Lnl;

    return-object v0
.end method

.method public d()V
    .registers 4

    const/4 v0, 0x0

    .line 560
    :try_start_1
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v1}, Lxi;->b()V

    .line 561
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v1}, Lxi;->c()V

    .line 563
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->A:Lnet/minecraft/client/MinecraftApplet;

    if-eqz v1, :cond_12

    .line 564
    invoke-virtual {v1}, Lnet/minecraft/client/MinecraftApplet;->c()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_44

    .line 567
    :cond_12
    :try_start_12
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->U:Lcz;

    if-eqz v1, :cond_19

    .line 568
    invoke-virtual {v1}, Lcz;->b()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_44

    .line 573
    :catch_19
    :cond_19
    :try_start_19
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Stopping!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_44

    const/4 v1, 0x0

    .line 575
    :try_start_21
    invoke-virtual {p0, v1}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_24

    .line 580
    :catchall_24
    :try_start_24
    invoke-static {}, Lge;->a()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_27

    .line 584
    :catchall_27
    :try_start_27
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v1}, Lyo;->b()V

    .line 585
    invoke-static {}, Lorg/lwjgl/input/Mouse;->destroy()V

    .line 586
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->destroy()V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_44

    .line 588
    invoke-static {}, Lorg/lwjgl/opengl/Display;->destroy()V

    .line 589
    iget-boolean v1, p0, Lnet/minecraft/client/Minecraft;->R:Z

    if-nez v1, :cond_40

    .line 590
    invoke-static {v0}, LMCPortHooks;->beforeExit(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 592
    :cond_40
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catchall_44
    move-exception v1

    .line 588
    invoke-static {}, Lorg/lwjgl/opengl/Display;->destroy()V

    .line 589
    iget-boolean v2, p0, Lnet/minecraft/client/Minecraft;->R:Z

    if-nez v2, :cond_4f

    .line 590
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_4f
    throw v1
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [B

    .line 854
    sput-object v0, Lnet/minecraft/client/Minecraft;->b:[B

    .line 855
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {v0}, Ln;->f()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_a

    .line 859
    :catchall_a
    :try_start_a
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 860
    invoke-static {}, Leq;->a()V

    .line 861
    invoke-static {}, Lbt;->a()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_13

    .line 865
    :catchall_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    .line 866
    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 869
    :catchall_1a
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    .line 1030
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->J:Z

    return-void
.end method

.method public g()V
    .registers 3

    .line 1037
    invoke-static {}, Lorg/lwjgl/opengl/Display;->isActive()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1039
    :cond_7
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 1041
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    .line 1042
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->C:Lvy;

    invoke-virtual {v0}, Lvy;->a()V

    const/4 v0, 0x0

    .line 1043
    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    const/16 v0, 0x2710

    .line 1044
    iput v0, p0, Lnet/minecraft/client/Minecraft;->W:I

    .line 1045
    iget v1, p0, Lnet/minecraft/client/Minecraft;->V:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/minecraft/client/Minecraft;->ag:I

    return-void
.end method

.method public h()V
    .registers 2

    .line 1049
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    if-nez v0, :cond_5

    return-void

    .line 1051
    :cond_5
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v0, :cond_c

    .line 1052
    invoke-virtual {v0}, Ldc;->o_()V

    :cond_c
    const/4 v0, 0x0

    .line 1053
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    .line 1054
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->C:Lvy;

    invoke-virtual {v0}, Lvy;->b()V

    return-void
.end method

.method public i()V
    .registers 2

    .line 1058
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_5

    return-void

    .line 1061
    :cond_5
    new-instance v0, Loz;

    invoke-direct {v0}, Loz;-><init>()V

    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public j()V
    .registers 4

    .line 1159
    :try_start_0
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    if-eqz v0, :cond_32

    .line 1161
    invoke-static {}, Lorg/lwjgl/opengl/Display;->getDesktopDisplayMode()Lorg/lwjgl/opengl/DisplayMode;

    move-result-object v0

    invoke-static {v0}, Lorg/lwjgl/opengl/Display;->setDisplayMode(Lorg/lwjgl/opengl/DisplayMode;)V

    .line 1162
    invoke-static {}, Lorg/lwjgl/opengl/Display;->getDisplayMode()Lorg/lwjgl/opengl/DisplayMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lwjgl/opengl/DisplayMode;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 1163
    invoke-static {}, Lorg/lwjgl/opengl/Display;->getDisplayMode()Lorg/lwjgl/opengl/DisplayMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lwjgl/opengl/DisplayMode;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 1164
    iget v2, p0, Lnet/minecraft/client/Minecraft;->d:I

    if-gtz v2, :cond_2d

    .line 1165
    iput v1, p0, Lnet/minecraft/client/Minecraft;->d:I

    :cond_2d
    if-gtz v0, :cond_59

    .line 1167
    iput v1, p0, Lnet/minecraft/client/Minecraft;->e:I

    goto :goto_59

    .line 1169
    :cond_32
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    if-eqz v0, :cond_45

    .line 1170
    invoke-virtual {v0}, Lmcshim/awt/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 1171
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    invoke-virtual {v0}, Lmcshim/awt/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/minecraft/client/Minecraft;->e:I

    goto :goto_4d

    .line 1173
    :cond_45
    iget v0, p0, Lnet/minecraft/client/Minecraft;->X:I

    iput v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 1174
    iget v0, p0, Lnet/minecraft/client/Minecraft;->Y:I

    iput v0, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 1176
    :goto_4d
    iget v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    if-gtz v0, :cond_53

    .line 1177
    iput v1, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 1178
    :cond_53
    iget v0, p0, Lnet/minecraft/client/Minecraft;->e:I

    if-gtz v0, :cond_59

    .line 1179
    iput v1, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 1181
    :cond_59
    :goto_59
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_64

    .line 1182
    iget v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    iget v1, p0, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {p0, v0, v1}, Lnet/minecraft/client/Minecraft;->a(II)V

    .line 1184
    :cond_64
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    invoke-static {v0}, Lorg/lwjgl/opengl/Display;->setFullscreen(Z)V

    .line 1185
    invoke-static {}, Lorg/lwjgl/opengl/Display;->update()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_71
    return-void
.end method

.method public k()V
    .registers 9

    .line 1249
    iget v0, p0, Lnet/minecraft/client/Minecraft;->V:I

    const/16 v1, 0x1770

    if-ne v0, v1, :cond_9

    .line 1250
    invoke-direct {p0}, Lnet/minecraft/client/Minecraft;->B()V

    .line 1253
    :cond_9
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v0}, Lxi;->d()V

    .line 1254
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->v:Luq;

    invoke-virtual {v0}, Luq;->a()V

    .line 1255
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->t:Lpx;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lpx;->a(F)V

    .line 1256
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v0, :cond_45

    .line 1257
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->w()Lcl;

    move-result-object v0

    .line 1258
    instance-of v1, v0, Lkx;

    if-eqz v1, :cond_45

    .line 1259
    check-cast v0, Lkx;

    .line 1261
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v1, v1, Ldc;->aM:D

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lin;->d(F)I

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    .line 1262
    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v2, v2, Ldc;->aO:D

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lin;->d(F)I

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    .line 1263
    invoke-virtual {v0, v1, v2}, Lkx;->d(II)V

    .line 1269
    :cond_45
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-nez v0, :cond_52

    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v0, :cond_52

    .line 1270
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    invoke-virtual {v0}, Lob;->c()V

    .line 1271
    :cond_52
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/terrain.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 1272
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-nez v0, :cond_68

    .line 1273
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v0}, Lji;->a()V

    .line 1282
    :cond_68
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    const/4 v1, 0x0

    if-nez v0, :cond_92

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v2, :cond_92

    .line 1283
    iget v0, v2, Ldc;->Y:I

    if-gtz v0, :cond_79

    .line 1284
    invoke-virtual {p0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_a3

    .line 1285
    :cond_79
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->N()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v0, :cond_a3

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_a3

    .line 1286
    new-instance v0, Lgh;

    invoke-direct {v0}, Lgh;-><init>()V

    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_a3

    :cond_92
    if-eqz v0, :cond_a3

    .line 1288
    instance-of v0, v0, Lgh;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->N()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 1290
    invoke-virtual {p0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 1293
    :cond_a3
    :goto_a3
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_b0

    const/16 v1, 0x2710

    .line 1294
    iput v1, p0, Lnet/minecraft/client/Minecraft;->W:I

    .line 1295
    iget v2, p0, Lnet/minecraft/client/Minecraft;->V:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/minecraft/client/Minecraft;->ag:I

    :cond_b0
    if-eqz v0, :cond_c3

    .line 1299
    invoke-virtual {v0}, Lda;->e()V

    .line 1300
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_c3

    .line 1301
    iget-object v0, v0, Lda;->h:Ldu;

    invoke-virtual {v0}, Ldu;->a()V

    .line 1302
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    invoke-virtual {v0}, Lda;->a()V

    .line 1306
    :cond_c3
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_cd

    iget-boolean v0, v0, Lda;->f:Z

    if-eqz v0, :cond_2bd

    .line 1307
    :cond_cd
    :goto_cd
    invoke-static {}, Lorg/lwjgl/input/Mouse;->next()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_158

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/minecraft/client/Minecraft;->P:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v0, v4, v6

    if-lez v0, :cond_e2

    goto :goto_cd

    .line 1312
    :cond_e2
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventDWheel()I

    move-result v0

    if-eqz v0, :cond_107

    .line 1314
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v4, v4, Ldc;->c:Lix;

    invoke-virtual {v4, v0}, Lix;->b(I)V

    .line 1316
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v4, Lkv;->D:Z

    if-eqz v4, :cond_107

    if-lez v0, :cond_f8

    move v0, v2

    :cond_f8
    if-gez v0, :cond_fb

    goto :goto_fc

    :cond_fb
    move v3, v0

    .line 1322
    :goto_fc
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v4, v0, Lkv;->G:F

    int-to-float v3, v3

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Lkv;->G:F

    .line 1326
    :cond_107
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-nez v0, :cond_151

    .line 1327
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    if-nez v0, :cond_119

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButtonState()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1328
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->g()V

    goto :goto_cd

    .line 1330
    :cond_119
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButton()I

    move-result v0

    if-nez v0, :cond_12c

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButtonState()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1332
    invoke-direct {p0, v1}, Lnet/minecraft/client/Minecraft;->a(I)V

    .line 1333
    iget v0, p0, Lnet/minecraft/client/Minecraft;->V:I

    iput v0, p0, Lnet/minecraft/client/Minecraft;->ag:I

    .line 1335
    :cond_12c
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButton()I

    move-result v0

    if-ne v0, v2, :cond_13f

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButtonState()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 1337
    invoke-direct {p0, v2}, Lnet/minecraft/client/Minecraft;->a(I)V

    .line 1338
    iget v0, p0, Lnet/minecraft/client/Minecraft;->V:I

    iput v0, p0, Lnet/minecraft/client/Minecraft;->ag:I

    .line 1340
    :cond_13f
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButton()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_cd

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getEventButtonState()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1342
    invoke-direct {p0}, Lnet/minecraft/client/Minecraft;->A()V

    goto/16 :goto_cd

    :cond_151
    if-eqz v0, :cond_cd

    .line 1346
    invoke-virtual {v0}, Lda;->f()V

    goto/16 :goto_cd

    .line 1350
    :cond_158
    iget v0, p0, Lnet/minecraft/client/Minecraft;->W:I

    if-lez v0, :cond_15f

    sub-int/2addr v0, v2

    .line 1351
    iput v0, p0, Lnet/minecraft/client/Minecraft;->W:I

    .line 1353
    :cond_15f
    :goto_15f
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->next()Z

    move-result v0

    if-eqz v0, :cond_263

    .line 1354
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v4

    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKeyState()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Ldc;->a(IZ)V

    .line 1356
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKeyState()Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 1357
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    const/16 v4, 0x57

    if-ne v0, v4, :cond_184

    .line 1358
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->j()V

    goto :goto_15f

    .line 1371
    :cond_184
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_18d

    .line 1372
    invoke-virtual {v0}, Lda;->g()V

    goto/16 :goto_224

    .line 1374
    :cond_18d
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    if-ne v0, v2, :cond_196

    .line 1375
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->i()V

    .line 1378
    :cond_196
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    const/16 v4, 0x1f

    const/16 v5, 0x3d

    if-ne v0, v4, :cond_1a9

    invoke-static {v5}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 1380
    invoke-direct {p0}, Lnet/minecraft/client/Minecraft;->C()V

    .line 1391
    :cond_1a9
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_1b8

    .line 1392
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v0, Lkv;->z:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v0, Lkv;->z:Z

    .line 1394
    :cond_1b8
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    if-ne v0, v5, :cond_1c5

    .line 1395
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v0, Lkv;->B:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v0, Lkv;->B:Z

    .line 1397
    :cond_1c5
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_1d4

    .line 1398
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v0, Lkv;->A:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v0, Lkv;->A:Z

    .line 1400
    :cond_1d4
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    const/16 v4, 0x42

    if-ne v0, v4, :cond_1e3

    .line 1401
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v4, v0, Lkv;->E:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v0, Lkv;->E:Z

    .line 1421
    :cond_1e3
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v4, v4, Lkv;->r:Lqb;

    iget v4, v4, Lqb;->b:I

    if-ne v0, v4, :cond_1f9

    .line 1422
    new-instance v0, Lue;

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-direct {v0, v4}, Lue;-><init>(Lgs;)V

    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 1425
    :cond_1f9
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v4, v4, Lkv;->s:Lqb;

    iget v4, v4, Lqb;->b:I

    if-ne v0, v4, :cond_20a

    .line 1426
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->D()V

    .line 1429
    :cond_20a
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->l()Z

    move-result v0

    if-eqz v0, :cond_224

    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v4, v4, Lkv;->t:Lqb;

    iget v4, v4, Lqb;->b:I

    if-ne v0, v4, :cond_224

    .line 1431
    new-instance v0, Lgc;

    invoke-direct {v0}, Lgc;-><init>()V

    invoke-virtual {p0, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_224
    :goto_224
    move v0, v1

    :goto_225
    const/16 v4, 0x9

    if-ge v0, v4, :cond_23a

    .line 1436
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v4

    add-int/lit8 v5, v0, 0x2

    if-ne v4, v5, :cond_237

    .line 1437
    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v4, v4, Ldc;->c:Lix;

    iput v0, v4, Lix;->c:I

    :cond_237
    add-int/lit8 v0, v0, 0x1

    goto :goto_225

    .line 1439
    :cond_23a
    invoke-static {}, Lorg/lwjgl/input/Keyboard;->getEventKey()I

    move-result v0

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v4, v4, Lkv;->u:Lqb;

    iget v4, v4, Lqb;->b:I

    if-ne v0, v4, :cond_15f

    .line 1440
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    sget-object v4, Lht;->e:Lht;

    const/16 v5, 0x2a

    invoke-static {v5}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result v5

    if-nez v5, :cond_25d

    const/16 v5, 0x36

    invoke-static {v5}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result v5

    if-eqz v5, :cond_25b

    goto :goto_25d

    :cond_25b
    move v5, v2

    goto :goto_25e

    :cond_25d
    :goto_25d
    move v5, v3

    :goto_25e
    invoke-virtual {v0, v4, v5}, Lkv;->a(Lht;I)V

    goto/16 :goto_15f

    .line 1450
    :cond_263
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-nez v0, :cond_2a9

    .line 1451
    invoke-static {v1}, Lorg/lwjgl/input/Mouse;->isButtonDown(I)Z

    move-result v0

    const/high16 v3, 0x40800000    # 4.0f

    if-eqz v0, :cond_289

    iget v0, p0, Lnet/minecraft/client/Minecraft;->V:I

    iget v4, p0, Lnet/minecraft/client/Minecraft;->ag:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iget v4, v4, Lpy;->a:F

    div-float/2addr v4, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_289

    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    if-eqz v0, :cond_289

    .line 1454
    invoke-direct {p0, v1}, Lnet/minecraft/client/Minecraft;->a(I)V

    .line 1455
    iget v0, p0, Lnet/minecraft/client/Minecraft;->V:I

    iput v0, p0, Lnet/minecraft/client/Minecraft;->ag:I

    .line 1457
    :cond_289
    invoke-static {v2}, Lorg/lwjgl/input/Mouse;->isButtonDown(I)Z

    move-result v0

    if-eqz v0, :cond_2a9

    iget v0, p0, Lnet/minecraft/client/Minecraft;->V:I

    iget v4, p0, Lnet/minecraft/client/Minecraft;->ag:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iget v4, v4, Lpy;->a:F

    div-float/2addr v4, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2a9

    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    if-eqz v0, :cond_2a9

    .line 1460
    invoke-direct {p0, v2}, Lnet/minecraft/client/Minecraft;->a(I)V

    .line 1461
    iget v0, p0, Lnet/minecraft/client/Minecraft;->V:I

    iput v0, p0, Lnet/minecraft/client/Minecraft;->ag:I

    .line 1465
    :cond_2a9
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-nez v0, :cond_2b9

    invoke-static {v1}, Lorg/lwjgl/input/Mouse;->isButtonDown(I)Z

    move-result v0

    if-eqz v0, :cond_2b9

    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->N:Z

    if-eqz v0, :cond_2b9

    move v0, v2

    goto :goto_2ba

    :cond_2b9
    move v0, v1

    :goto_2ba
    invoke-direct {p0, v1, v0}, Lnet/minecraft/client/Minecraft;->a(IZ)V

    .line 1469
    :cond_2bd
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v0, :cond_355

    .line 1471
    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v3, :cond_2d3

    .line 1472
    iget v4, p0, Lnet/minecraft/client/Minecraft;->ah:I

    add-int/2addr v4, v2

    iput v4, p0, Lnet/minecraft/client/Minecraft;->ah:I

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_2d3

    .line 1474
    iput v1, p0, Lnet/minecraft/client/Minecraft;->ah:I

    .line 1475
    invoke-virtual {v0, v3}, Lfd;->g(Lsn;)V

    .line 1478
    :cond_2d3
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v3, v3, Lkv;->y:I

    iput v3, v0, Lfd;->q:I

    .line 1479
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_2e6

    .line 1480
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const/4 v3, 0x3

    iput v3, v0, Lfd;->q:I

    .line 1482
    :cond_2e6
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-nez v0, :cond_2ef

    .line 1483
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->t:Lpx;

    invoke-virtual {v0}, Lpx;->a()V

    .line 1484
    :cond_2ef
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-nez v0, :cond_2f8

    .line 1485
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {v0}, Ln;->d()V

    .line 1491
    :cond_2f8
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-nez v0, :cond_30e

    .line 1492
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v0, v0, Lfd;->n:I

    if-lez v0, :cond_309

    .line 1493
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v3, v0, Lfd;->n:I

    sub-int/2addr v3, v2

    iput v3, v0, Lfd;->n:I

    .line 1494
    :cond_309
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->g()V

    .line 1496
    :cond_30e
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-eqz v0, :cond_318

    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->l()Z

    move-result v0

    if-eqz v0, :cond_329

    .line 1497
    :cond_318
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v3, v3, Lkv;->y:I

    if-lez v3, :cond_321

    move v1, v2

    :cond_321
    invoke-virtual {v0, v1, v2}, Lfd;->a(ZZ)V

    .line 1498
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->l()V

    .line 1500
    :cond_329
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-nez v0, :cond_34c

    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v0, :cond_34c

    .line 1501
    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v1, v1, Ldc;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-object v2, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v2, v2, Ldc;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-object v3, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v3, v3, Ldc;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfd;->q(III)V

    .line 1503
    :cond_34c
    iget-boolean v0, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-nez v0, :cond_355

    .line 1504
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->j:Ldn;

    invoke-virtual {v0}, Ldn;->a()V

    .line 1513
    :cond_355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/minecraft/client/Minecraft;->P:J

    return-void
.end method

.method public l()Z
    .registers 2

    .line 1524
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public m()V
    .registers 20

    move-object/from16 v0, p0

    .line 1561
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Toggling dimension!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1562
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->m:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    .line 1563
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v2, v1, Ldc;->m:I

    goto :goto_1a

    .line 1565
    :cond_16
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput v3, v1, Ldc;->m:I

    .line 1566
    :goto_1a
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v4, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v4}, Lfd;->e(Lsn;)V

    .line 1567
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iput-boolean v2, v1, Ldc;->be:Z

    .line 1569
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v4, v1, Ldc;->aM:D

    .line 1570
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v6, v1, Ldc;->aO:D

    .line 1572
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->m:I

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    if-ne v1, v3, :cond_6e

    div-double/2addr v4, v8

    div-double/2addr v6, v8

    .line 1575
    iget-object v10, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v13, v10, Ldc;->aN:D

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->aS:F

    iget-object v8, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v8, v8, Ldc;->aT:F

    move-wide v11, v4

    move-wide v15, v6

    move/from16 v17, v1

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Ldc;->c(DDDFF)V

    .line 1576
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1}, Ldc;->W()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1577
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v8, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v8, v2}, Lfd;->a(Lsn;Z)V

    .line 1582
    :cond_5b
    new-instance v1, Lfd;

    iget-object v8, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-static {v3}, Lxa;->a(I)Lxa;

    move-result-object v3

    invoke-direct {v1, v8, v3}, Lfd;-><init>(Lfd;Lxa;)V

    const-string v3, "Entering the Nether"

    .line 1590
    iget-object v8, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v1, v3, v8}, Lnet/minecraft/client/Minecraft;->a(Lfd;Ljava/lang/String;Lgs;)V

    goto :goto_a6

    :cond_6e
    mul-double/2addr v4, v8

    mul-double/2addr v6, v8

    .line 1594
    iget-object v9, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v12, v9, Ldc;->aN:D

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->aS:F

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v3, v3, Ldc;->aT:F

    move-wide v10, v4

    move-wide v14, v6

    move/from16 v16, v1

    move/from16 v17, v3

    invoke-virtual/range {v9 .. v17}, Ldc;->c(DDDFF)V

    .line 1595
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1}, Ldc;->W()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1596
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v3, v2}, Lfd;->a(Lsn;Z)V

    .line 1601
    :cond_94
    new-instance v1, Lfd;

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-static {v2}, Lxa;->a(I)Lxa;

    move-result-object v8

    invoke-direct {v1, v3, v8}, Lfd;-><init>(Lfd;Lxa;)V

    const-string v3, "Leaving the Nether"

    .line 1607
    iget-object v8, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v1, v3, v8}, Lnet/minecraft/client/Minecraft;->a(Lfd;Ljava/lang/String;Lgs;)V

    :goto_a6
    move-wide v10, v4

    move-wide v14, v6

    .line 1610
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iput-object v3, v1, Ldc;->aI:Lfd;

    .line 1611
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1}, Ldc;->W()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 1612
    iget-object v9, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v12, v9, Ldc;->aN:D

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->aS:F

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v3, v3, Ldc;->aT:F

    move/from16 v16, v1

    move/from16 v17, v3

    invoke-virtual/range {v9 .. v17}, Ldc;->c(DDDFF)V

    .line 1613
    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v3, v2}, Lfd;->a(Lsn;Z)V

    .line 1614
    new-instance v1, Lur;

    invoke-direct {v1}, Lur;-><init>()V

    iget-object v2, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v3, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v2, v3}, Lur;->a(Lfd;Lsn;)V

    :cond_dc
    return-void
.end method

.method public n()Lcx;
    .registers 2

    .line 1821
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->S:Lcx;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1825
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {v0}, Ln;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .line 1829
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->g:Ln;

    invoke-virtual {v0}, Ln;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .line 1833
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->j:Ldn;

    invoke-virtual {v1}, Ldn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". T: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v1}, Lfd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 13

    const/4 v0, 0x1

    .line 714
    iput-boolean v0, p0, Lnet/minecraft/client/Minecraft;->J:Z

    .line 716
    :try_start_3
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_1bb

    .line 728
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    .line 731
    :cond_c
    :goto_c
    iget-boolean v5, p0, Lnet/minecraft/client/Minecraft;->J:Z
    :try_end_e
    .catch Lxx; {:try_start_6 .. :try_end_e} :catch_1b7
    .catchall {:try_start_6 .. :try_end_e} :catchall_1a0

    if-eqz v5, :cond_1b7

    const/4 v5, 0x0

    .line 733
    :try_start_11
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->A:Lnet/minecraft/client/MinecraftApplet;

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Lnet/minecraft/client/MinecraftApplet;->isActive()Z

    move-result v6

    if-nez v6, :cond_1d

    goto/16 :goto_1b7

    .line 735
    :cond_1d
    invoke-static {}, Leq;->b()V

    .line 736
    invoke-static {}, Lbt;->b()V

    .line 738
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    if-nez v6, :cond_30

    invoke-static {}, Lorg/lwjgl/opengl/Display;->isCloseRequested()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 739
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->f()V

    .line 742
    :cond_30
    iget-boolean v6, p0, Lnet/minecraft/client/Minecraft;->o:Z

    if-eqz v6, :cond_46

    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v6, :cond_46

    .line 743
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iget v6, v6, Lpy;->c:F

    .line 744
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    invoke-virtual {v7}, Lpy;->a()V

    .line 745
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iput v6, v7, Lpy;->c:F

    goto :goto_4b

    .line 747
    :cond_46
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    invoke-virtual {v6}, Lpy;->a()V

    .line 750
    :goto_4b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move v8, v3

    .line 751
    :goto_50
    iget-object v9, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iget v9, v9, Lpy;->b:I

    if-ge v8, v9, :cond_6f

    .line 752
    iget v9, p0, Lnet/minecraft/client/Minecraft;->V:I

    add-int/2addr v9, v0

    iput v9, p0, Lnet/minecraft/client/Minecraft;->V:I
    :try_end_5b
    .catch Lus; {:try_start_11 .. :try_end_5b} :catch_191
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_5b} :catch_181
    .catch Lxx; {:try_start_11 .. :try_end_5b} :catch_1b7
    .catchall {:try_start_11 .. :try_end_5b} :catchall_1a0

    .line 754
    :try_start_5b
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->k()V
    :try_end_5e
    .catch Lus; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5b .. :try_end_5e} :catch_181
    .catch Lxx; {:try_start_5b .. :try_end_5e} :catch_1b7
    .catchall {:try_start_5b .. :try_end_5e} :catchall_1a0

    goto :goto_6c

    .line 756
    :catch_5f
    :try_start_5f
    iput-object v5, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    .line 757
    invoke-virtual {p0, v5}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 758
    new-instance v9, Lqh;

    invoke-direct {v9}, Lqh;-><init>()V

    invoke-virtual {p0, v9}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :goto_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 761
    :cond_6f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string v6, "Pre render"

    .line 762
    invoke-direct {p0, v6}, Lnet/minecraft/client/Minecraft;->c(Ljava/lang/String;)V

    .line 764
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v6, v6, Lkv;->j:Z

    sput-boolean v6, Lcv;->a:Z

    .line 768
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v10, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iget v10, v10, Lpy;->c:F

    invoke-virtual {v6, v7, v10}, Lyo;->a(Lls;F)V

    const/16 v6, 0xde1

    .line 770
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 771
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v6, :cond_96

    .line 772
    invoke-virtual {v6}, Lfd;->j()Z

    :cond_96
    const/16 v6, 0x41

    .line 774
    invoke-static {v6}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result v7

    if-nez v7, :cond_a1

    .line 775
    invoke-static {}, Lorg/lwjgl/opengl/Display;->update()V

    .line 776
    :cond_a1
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v7, :cond_af

    invoke-virtual {v7}, Ldc;->L()Z

    move-result v7

    if-eqz v7, :cond_af

    .line 777
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iput-boolean v3, v7, Lkv;->A:Z

    .line 778
    :cond_af
    iget-boolean v7, p0, Lnet/minecraft/client/Minecraft;->w:Z

    if-nez v7, :cond_c7

    .line 779
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->c:Lob;

    if-eqz v7, :cond_be

    .line 780
    iget-object v10, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iget v10, v10, Lpy;->c:F

    invoke-virtual {v7, v10}, Lob;->a(F)V

    .line 781
    :cond_be
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->t:Lpx;

    iget-object v10, p0, Lnet/minecraft/client/Minecraft;->T:Lpy;

    iget v10, v10, Lpy;->c:F

    invoke-virtual {v7, v10}, Lpx;->b(F)V

    .line 784
    :cond_c7
    invoke-static {}, Lorg/lwjgl/opengl/Display;->isActive()Z

    move-result v7

    if-nez v7, :cond_d9

    .line 785
    iget-boolean v7, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    if-eqz v7, :cond_d4

    .line 786
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->j()V

    :cond_d4
    const-wide/16 v10, 0xa

    .line 788
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 791
    :cond_d9
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v7, v7, Lkv;->B:Z

    if-eqz v7, :cond_e3

    .line 792
    invoke-direct {p0, v8, v9}, Lnet/minecraft/client/Minecraft;->a(J)V

    goto :goto_e9

    .line 794
    :cond_e3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iput-wide v7, p0, Lnet/minecraft/client/Minecraft;->M:J

    .line 797
    :goto_e9
    iget-object v7, p0, Lnet/minecraft/client/Minecraft;->u:Lvu;

    invoke-virtual {v7}, Lvu;->a()V

    .line 799
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 801
    invoke-static {v6}, Lorg/lwjgl/input/Keyboard;->isKeyDown(I)Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 802
    invoke-static {}, Lorg/lwjgl/opengl/Display;->update()V

    .line 804
    :cond_fa
    invoke-direct {p0}, Lnet/minecraft/client/Minecraft;->z()V

    .line 806
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    if-eqz v6, :cond_138

    iget-boolean v7, p0, Lnet/minecraft/client/Minecraft;->Q:Z

    if-nez v7, :cond_138

    .line 807
    invoke-virtual {v6}, Lmcshim/awt/Canvas;->getWidth()I

    move-result v6

    iget v7, p0, Lnet/minecraft/client/Minecraft;->d:I

    if-ne v6, v7, :cond_117

    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    invoke-virtual {v6}, Lmcshim/awt/Canvas;->getHeight()I

    move-result v6

    iget v7, p0, Lnet/minecraft/client/Minecraft;->e:I

    if-eq v6, v7, :cond_138

    .line 809
    :cond_117
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    invoke-virtual {v6}, Lmcshim/awt/Canvas;->getWidth()I

    move-result v6

    iput v6, p0, Lnet/minecraft/client/Minecraft;->d:I

    .line 810
    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->m:Lmcshim/awt/Canvas;

    invoke-virtual {v6}, Lmcshim/awt/Canvas;->getHeight()I

    move-result v6

    iput v6, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 811
    iget v7, p0, Lnet/minecraft/client/Minecraft;->d:I

    if-gtz v7, :cond_12d

    .line 812
    iput v0, p0, Lnet/minecraft/client/Minecraft;->d:I

    :cond_12d
    if-gtz v6, :cond_131

    .line 814
    iput v0, p0, Lnet/minecraft/client/Minecraft;->e:I

    .line 816
    :cond_131
    iget v6, p0, Lnet/minecraft/client/Minecraft;->d:I

    iget v7, p0, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {p0, v6, v7}, Lnet/minecraft/client/Minecraft;->a(II)V

    :cond_138
    const-string v6, "Post render"

    .line 819
    invoke-direct {p0, v6}, Lnet/minecraft/client/Minecraft;->c(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    .line 821
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->l()Z

    move-result v6

    if-nez v6, :cond_151

    iget-object v6, p0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v6, :cond_151

    invoke-virtual {v6}, Lda;->c()Z

    move-result v6

    if-eqz v6, :cond_151

    move v6, v0

    goto :goto_152

    :cond_151
    move v6, v3

    :goto_152
    iput-boolean v6, p0, Lnet/minecraft/client/Minecraft;->o:Z

    .line 824
    :goto_154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_c

    .line 825
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " fps, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Ldk;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " chunk updates"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/minecraft/client/Minecraft;->K:Ljava/lang/String;

    .line 827
    sput v3, Ldk;->b:I
    :try_end_17e
    .catch Lus; {:try_start_5f .. :try_end_17e} :catch_191
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5f .. :try_end_17e} :catch_181
    .catch Lxx; {:try_start_5f .. :try_end_17e} :catch_1b7
    .catchall {:try_start_5f .. :try_end_17e} :catchall_1a0

    move v4, v3

    move-wide v1, v8

    goto :goto_154

    .line 837
    :catch_181
    :try_start_181
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->e()V

    .line 838
    new-instance v5, Lx;

    invoke-direct {v5}, Lx;-><init>()V

    invoke-virtual {p0, v5}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 839
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_c

    .line 833
    :catch_191
    iput-object v5, p0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    .line 834
    invoke-virtual {p0, v5}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 835
    new-instance v5, Lqh;

    invoke-direct {v5}, Lqh;-><init>()V

    invoke-virtual {p0, v5}, Lnet/minecraft/client/Minecraft;->a(Lda;)V
    :try_end_19e
    .catch Lxx; {:try_start_181 .. :try_end_19e} :catch_1b7
    .catchall {:try_start_181 .. :try_end_19e} :catchall_1a0

    goto/16 :goto_c

    :catchall_1a0
    move-exception v0

    .line 844
    :try_start_1a1
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->e()V

    .line 845
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 846
    new-instance v1, Lmh;

    const-string v2, "Unexpected error"

    invoke-direct {v1, v2, v0}, Lmh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lnet/minecraft/client/Minecraft;->b(Lmh;)V
    :try_end_1b1
    .catchall {:try_start_1a1 .. :try_end_1b1} :catchall_1b2

    goto :goto_1b7

    :catchall_1b2
    move-exception v0

    .line 848
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->d()V

    throw v0

    :catch_1b7
    :cond_1b7
    :goto_1b7
    invoke-virtual {p0}, Lnet/minecraft/client/Minecraft;->d()V

    return-void

    :catch_1bb
    move-exception v0

    .line 718
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    new-instance v1, Lmh;

    const-string v2, "Failed to start game"

    invoke-direct {v1, v2, v0}, Lmh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lnet/minecraft/client/Minecraft;->b(Lmh;)V

    return-void
.end method

.method public s()Lnb;
    .registers 3

    .line 1975
    iget-object v0, p0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    instance-of v1, v0, Ltk;

    if-eqz v1, :cond_b

    .line 1976
    check-cast v0, Ltk;

    iget-object v0, v0, Ltk;->bN:Lnb;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
