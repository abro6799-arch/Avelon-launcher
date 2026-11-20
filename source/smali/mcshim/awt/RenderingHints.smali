###### Class mcshim.awt.RenderingHints (mcshim.awt.RenderingHints)
.class public Lmcshim/awt/RenderingHints;
.super Ljava/lang/Object;
.source "RenderingHints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmcshim/awt/RenderingHints$Key;
    }
.end annotation


# static fields
.field public static final KEY_ANTIALIASING:Lmcshim/awt/RenderingHints$Key;

.field public static final KEY_INTERPOLATION:Lmcshim/awt/RenderingHints$Key;

.field public static final VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

.field public static final VALUE_ANTIALIAS_ON:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 3
    new-instance v0, Lmcshim/awt/RenderingHints$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmcshim/awt/RenderingHints$1;-><init>(I)V

    sput-object v0, Lmcshim/awt/RenderingHints;->KEY_ANTIALIASING:Lmcshim/awt/RenderingHints$Key;

    new-instance v0, Lmcshim/awt/RenderingHints$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmcshim/awt/RenderingHints$2;-><init>(I)V

    sput-object v0, Lmcshim/awt/RenderingHints;->KEY_INTERPOLATION:Lmcshim/awt/RenderingHints$Key;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmcshim/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmcshim/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmcshim/awt/RenderingHints;->VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class mcshim.awt.RenderingHints.AnonymousClass1 (mcshim.awt.RenderingHints$1)
.class Lmcshim/awt/RenderingHints$1;
.super Lmcshim/awt/RenderingHints$Key;
.source "RenderingHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmcshim/awt/RenderingHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lmcshim/awt/RenderingHints$Key;-><init>(I)V

    return-void
.end method

###### Class mcshim.awt.RenderingHints.AnonymousClass2 (mcshim.awt.RenderingHints$2)
.class Lmcshim/awt/RenderingHints$2;
.super Lmcshim/awt/RenderingHints$Key;
.source "RenderingHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmcshim/awt/RenderingHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lmcshim/awt/RenderingHints$Key;-><init>(I)V

    return-void
.end method

###### Class mcshim.awt.RenderingHints.Key (mcshim.awt.RenderingHints$Key)
.class public abstract Lmcshim/awt/RenderingHints$Key;
.super Ljava/lang/Object;
.source "RenderingHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmcshim/awt/RenderingHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Key"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
