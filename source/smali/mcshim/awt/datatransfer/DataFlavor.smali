###### Class mcshim.awt.datatransfer.DataFlavor (mcshim.awt.datatransfer.DataFlavor)
.class public Lmcshim/awt/datatransfer/DataFlavor;
.super Ljava/lang/Object;
.source "DataFlavor.java"


# static fields
.field public static final stringFlavor:Lmcshim/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2
    new-instance v0, Lmcshim/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmcshim/awt/datatransfer/DataFlavor;-><init>()V

    sput-object v0, Lmcshim/awt/datatransfer/DataFlavor;->stringFlavor:Lmcshim/awt/datatransfer/DataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
