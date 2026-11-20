###### Class defpackage.xl (xl)
.class Lxl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lpf;


# direct methods
.method constructor <init>(Lpf;Ljava/lang/String;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lxl;->a:Lpf;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 102
    sget-object v0, Lpf;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    sget v1, Lpf;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lpf;->c:I

    .line 104
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_61

    .line 106
    :cond_a
    :goto_a
    :try_start_a
    iget-object v0, p0, Lxl;->a:Lpf;

    invoke-static {v0}, Lpf;->a(Lpf;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 107
    :goto_12
    iget-object v0, p0, Lxl;->a:Lpf;

    invoke-static {v0}, Lpf;->d(Lpf;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_52

    if-eqz v0, :cond_1b

    goto :goto_12

    :cond_1b
    const-wide/16 v0, 0x64

    .line 111
    :try_start_1d
    invoke-static {v0, v1}, Lxl;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_52

    .line 116
    :catch_20
    :try_start_20
    iget-object v0, p0, Lxl;->a:Lpf;

    invoke-static {v0}, Lpf;->e(Lpf;)Ljava/io/DataOutputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lxl;->a:Lpf;

    invoke-static {v0}, Lpf;->e(Lpf;)Ljava/io/DataOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_31} :catch_32
    .catchall {:try_start_20 .. :try_end_31} :catchall_52

    goto :goto_a

    :catch_32
    move-exception v0

    .line 118
    :try_start_33
    iget-object v1, p0, Lxl;->a:Lpf;

    invoke-static {v1}, Lpf;->f(Lpf;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lxl;->a:Lpf;

    invoke-static {v1, v0}, Lpf;->a(Lpf;Ljava/lang/Exception;)V

    .line 119
    :cond_40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_52

    goto :goto_a

    .line 123
    :cond_44
    sget-object v0, Lpf;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_47
    sget v1, Lpf;->c:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lpf;->c:I

    .line 125
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_4f

    throw v1

    :catchall_52
    move-exception v0

    .line 123
    sget-object v1, Lpf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_56
    sget v2, Lpf;->c:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lpf;->c:I

    .line 125
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5e

    throw v0

    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    :catchall_61
    move-exception v1

    .line 104
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1
.end method
