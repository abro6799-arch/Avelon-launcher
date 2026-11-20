###### Class mcshim.awt.Toolkit (mcshim.awt.Toolkit)
.class public Lmcshim/awt/Toolkit;
.super Ljava/lang/Object;
.source "Toolkit.java"


# static fields
.field private static final T:Lmcshim/awt/Toolkit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2
    new-instance v0, Lmcshim/awt/Toolkit;

    invoke-direct {v0}, Lmcshim/awt/Toolkit;-><init>()V

    sput-object v0, Lmcshim/awt/Toolkit;->T:Lmcshim/awt/Toolkit;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultToolkit()Lmcshim/awt/Toolkit;
    .registers 1

    .line 2
    sget-object v0, Lmcshim/awt/Toolkit;->T:Lmcshim/awt/Toolkit;

    return-object v0
.end method


# virtual methods
.method public getSystemClipboard()Lmcshim/awt/datatransfer/Clipboard;
    .registers 2

    .line 3
    sget-object v0, Lmcshim/awt/datatransfer/Clipboard;->SYSTEM:Lmcshim/awt/datatransfer/Clipboard;

    return-object v0
.end method
