###### Class mcshim.awt.datatransfer.Clipboard (mcshim.awt.datatransfer.Clipboard)
.class public Lmcshim/awt/datatransfer/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# static fields
.field public static final SYSTEM:Lmcshim/awt/datatransfer/Clipboard;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3
    new-instance v0, Lmcshim/awt/datatransfer/Clipboard;

    invoke-direct {v0}, Lmcshim/awt/datatransfer/Clipboard;-><init>()V

    sput-object v0, Lmcshim/awt/datatransfer/Clipboard;->SYSTEM:Lmcshim/awt/datatransfer/Clipboard;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents(Ljava/lang/Object;)Lmcshim/awt/datatransfer/Transferable;
    .registers 3

    .line 4
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object p1

    invoke-virtual {p1}, Lmcport/Platform;->getClipboard()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_c
    new-instance v0, Lmcshim/awt/datatransfer/Clipboard$1;

    invoke-direct {v0, p0, p1}, Lmcshim/awt/datatransfer/Clipboard$1;-><init>(Lmcshim/awt/datatransfer/Clipboard;Ljava/lang/String;)V

    return-object v0
.end method

###### Class mcshim.awt.datatransfer.Clipboard.AnonymousClass1 (mcshim.awt.datatransfer.Clipboard$1)
.class Lmcshim/awt/datatransfer/Clipboard$1;
.super Ljava/lang/Object;
.source "Clipboard.java"

# interfaces
.implements Lmcshim/awt/datatransfer/Transferable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmcshim/awt/datatransfer/Clipboard;->getContents(Ljava/lang/Object;)Lmcshim/awt/datatransfer/Transferable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmcshim/awt/datatransfer/Clipboard;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmcshim/awt/datatransfer/Clipboard;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lmcshim/awt/datatransfer/Clipboard$1;->this$0:Lmcshim/awt/datatransfer/Clipboard;

    iput-object p2, p0, Lmcshim/awt/datatransfer/Clipboard$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransferData(Lmcshim/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .registers 2

    .line 5
    iget-object p1, p0, Lmcshim/awt/datatransfer/Clipboard$1;->val$s:Ljava/lang/String;

    return-object p1
.end method

.method public isDataFlavorSupported(Lmcshim/awt/datatransfer/DataFlavor;)Z
    .registers 3

    .line 5
    sget-object v0, Lmcshim/awt/datatransfer/DataFlavor;->stringFlavor:Lmcshim/awt/datatransfer/DataFlavor;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
