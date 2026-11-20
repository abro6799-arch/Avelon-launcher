###### Class com.mcport.b173.LayoutEditorActivity (com.mcport.b173.LayoutEditorActivity)
.class public Lcom/mcport/b173/LayoutEditorActivity;
.super Landroid/app/Activity;
.source "LayoutEditorActivity.java"

# interfaces
.implements Lcom/mcport/b173/TouchOverlay$Host;


# instance fields
.field private prefs:Lcom/mcport/b173/Prefs;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge()Lmcport/GameBridge;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/mcport/b173/Prefs;

    invoke-direct {p1, p0}, Lcom/mcport/b173/Prefs;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mcport/b173/LayoutEditorActivity;->prefs:Lcom/mcport/b173/Prefs;

    .line 14
    invoke-virtual {p0}, Lcom/mcport/b173/LayoutEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 15
    new-instance p1, Lcom/mcport/b173/TouchOverlay;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Lcom/mcport/b173/TouchOverlay;-><init>(Landroid/content/Context;Lcom/mcport/b173/TouchOverlay$Host;Z)V

    invoke-virtual {p0, p1}, Lcom/mcport/b173/LayoutEditorActivity;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/mcport/b173/LayoutEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1006

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public openProfile()V
    .registers 1

    return-void
.end method

.method public padActive()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public prefs()Lcom/mcport/b173/Prefs;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/mcport/b173/LayoutEditorActivity;->prefs:Lcom/mcport/b173/Prefs;

    return-object v0
.end method

.method public surfaceH()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public surfaceW()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
