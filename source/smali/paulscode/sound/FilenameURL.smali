###### Class paulscode.sound.FilenameURL (paulscode.sound.FilenameURL)
.class public Lpaulscode/sound/FilenameURL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private filename:Ljava/lang/String;

.field private logger:Lpaulscode/sound/SoundSystemLogger;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;

    .line 85
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v1

    iput-object v1, p0, Lpaulscode/sound/FilenameURL;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 87
    iput-object p1, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;

    .line 69
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 71
    iput-object p2, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;

    return-void
.end method

.method private errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 142
    iget-object v0, p0, Lpaulscode/sound/FilenameURL;->logger:Lpaulscode/sound/SoundSystemLogger;

    const-string v1, "MidiChannel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private printStackTrace(Ljava/lang/Exception;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lpaulscode/sound/FilenameURL;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->printStackTrace(Ljava/lang/Exception;I)V

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 4

    .line 108
    iget-object v0, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;

    if-nez v0, :cond_46

    .line 111
    iget-object v0, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    const-string v1, "^[hH][tT][tT][pP]://.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 116
    :try_start_e
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_46

    :catch_18
    move-exception v0

    const-string v1, "Unable to access online URL in method \'getURL\'"

    .line 120
    invoke-direct {p0, v1}, Lpaulscode/sound/FilenameURL;->errorMessage(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v0}, Lpaulscode/sound/FilenameURL;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getSoundFilesPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpaulscode/sound/FilenameURL;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;

    .line 133
    :cond_46
    :goto_46
    iget-object v0, p0, Lpaulscode/sound/FilenameURL;->url:Ljava/net/URL;

    return-object v0
.end method
