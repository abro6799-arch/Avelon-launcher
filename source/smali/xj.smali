###### Class defpackage.xj (xj)
.class Lxj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lpf;


# direct methods
.method constructor <init>(Lpf;Ljava/lang/String;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lxj;->a:Lpf;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 79
    sget-object v0, Lpf;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    sget v1, Lpf;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lpf;->b:I

    .line 81
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_46

    .line 83
    :catch_a
    :goto_a
    :try_start_a
    iget-object v0, p0, Lxj;->a:Lpf;

    invoke-static {v0}, Lpf;->a(Lpf;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lxj;->a:Lpf;

    invoke-static {v0}, Lpf;->b(Lpf;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 84
    :goto_1a
    iget-object v0, p0, Lxj;->a:Lpf;

    invoke-static {v0}, Lpf;->c(Lpf;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_37

    if-eqz v0, :cond_23

    goto :goto_1a

    :cond_23
    const-wide/16 v0, 0x64

    .line 88
    :try_start_25
    invoke-static {v0, v1}, Lxj;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_a
    .catchall {:try_start_25 .. :try_end_28} :catchall_37

    goto :goto_a

    .line 93
    :cond_29
    sget-object v0, Lpf;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_2c
    sget v1, Lpf;->b:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lpf;->b:I

    .line 95
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v1

    :catchall_37
    move-exception v0

    .line 93
    sget-object v1, Lpf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_3b
    sget v2, Lpf;->b:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lpf;->b:I

    .line 95
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_43

    throw v0

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :catchall_46
    move-exception v1

    .line 81
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method
