###### Class net.minecraft.isom.IsomPreviewApplet (net.minecraft.isom.IsomPreviewApplet)
.class public Lnet/minecraft/isom/IsomPreviewApplet;
.super Lmcshim/applet/Applet;
.source "SourceFile"


# instance fields
.field private a:Lbd;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Lmcshim/applet/Applet;-><init>()V

    .line 9
    new-instance v0, Lbd;

    invoke-direct {v0}, Lbd;-><init>()V

    iput-object v0, p0, Lnet/minecraft/isom/IsomPreviewApplet;->a:Lbd;

    .line 12
    new-instance v0, Lmcshim/awt/BorderLayout;

    invoke-direct {v0}, Lmcshim/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lnet/minecraft/isom/IsomPreviewApplet;->setLayout(Lmcshim/awt/LayoutManager;)V

    .line 13
    iget-object v0, p0, Lnet/minecraft/isom/IsomPreviewApplet;->a:Lbd;

    const-string v1, "Center"

    invoke-virtual {p0, v0, v1}, Lnet/minecraft/isom/IsomPreviewApplet;->add(Lmcshim/awt/Component;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public start()V
    .registers 2

    .line 17
    iget-object v0, p0, Lnet/minecraft/isom/IsomPreviewApplet;->a:Lbd;

    invoke-virtual {v0}, Lbd;->b()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 21
    iget-object v0, p0, Lnet/minecraft/isom/IsomPreviewApplet;->a:Lbd;

    invoke-virtual {v0}, Lbd;->c()V

    return-void
.end method
