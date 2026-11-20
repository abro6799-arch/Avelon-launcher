###### Class paulscode.sound.SimpleThread (paulscode.sound.SimpleThread)
.class public Lpaulscode/sound/SimpleThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final GET:Z = false

.field private static final SET:Z = true

.field private static final XXX:Z


# instance fields
.field private alive:Z

.field private kill:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lpaulscode/sound/SimpleThread;->alive:Z

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lpaulscode/sound/SimpleThread;->kill:Z

    return-void
.end method

.method static synthetic access$000(Lpaulscode/sound/SimpleThread;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lpaulscode/sound/SimpleThread;->rerun()V

    return-void
.end method

.method private declared-synchronized alive(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 172
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/SimpleThread;->alive:Z

    .line 173
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/SimpleThread;->alive:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized kill(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 185
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/SimpleThread;->kill:Z

    .line 186
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/SimpleThread;->kill:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private rerun()V
    .registers 4

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/SimpleThread;->kill(ZZ)Z

    :goto_4
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v1, v1}, Lpaulscode/sound/SimpleThread;->alive(ZZ)Z

    move-result v2

    if-eqz v2, :cond_11

    const-wide/16 v1, 0x64

    .line 128
    invoke-virtual {p0, v1, v2}, Lpaulscode/sound/SimpleThread;->snooze(J)V

    goto :goto_4

    .line 130
    :cond_11
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/SimpleThread;->alive(ZZ)Z

    .line 131
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/SimpleThread;->kill(ZZ)Z

    .line 132
    invoke-virtual {p0}, Lpaulscode/sound/SimpleThread;->run()V

    return-void
.end method


# virtual methods
.method public alive()Z
    .registers 2

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/SimpleThread;->alive(ZZ)Z

    move-result v0

    return v0
.end method

.method protected cleanup()V
    .registers 3

    const/4 v0, 0x1

    .line 81
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/SimpleThread;->kill(ZZ)Z

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/SimpleThread;->alive(ZZ)Z

    return-void
.end method

.method protected dying()Z
    .registers 2

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/SimpleThread;->kill(ZZ)Z

    move-result v0

    return v0
.end method

.method public kill()V
    .registers 2

    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/SimpleThread;->kill(ZZ)Z

    return-void
.end method

.method public restart()V
    .registers 2

    .line 110
    new-instance v0, Lpaulscode/sound/SimpleThread$1;

    invoke-direct {v0, p0}, Lpaulscode/sound/SimpleThread$1;-><init>(Lpaulscode/sound/SimpleThread;)V

    invoke-virtual {v0}, Lpaulscode/sound/SimpleThread$1;->start()V

    return-void
.end method

.method public run()V
    .registers 1

    .line 101
    invoke-virtual {p0}, Lpaulscode/sound/SimpleThread;->cleanup()V

    return-void
.end method

.method protected snooze(J)V
    .registers 3

    .line 196
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

###### Class paulscode.sound.SimpleThread.AnonymousClass1 (paulscode.sound.SimpleThread$1)
.class Lpaulscode/sound/SimpleThread$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lpaulscode/sound/SimpleThread;


# direct methods
.method constructor <init>(Lpaulscode/sound/SimpleThread;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lpaulscode/sound/SimpleThread$1;->this$0:Lpaulscode/sound/SimpleThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 115
    iget-object v0, p0, Lpaulscode/sound/SimpleThread$1;->this$0:Lpaulscode/sound/SimpleThread;

    invoke-static {v0}, Lpaulscode/sound/SimpleThread;->access$000(Lpaulscode/sound/SimpleThread;)V

    return-void
.end method
