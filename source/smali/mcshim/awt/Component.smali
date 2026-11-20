###### Class mcshim.awt.Component (mcshim.awt.Component)
.class public Lmcshim/awt/Component;
.super Ljava/lang/Object;
.source "Component.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lmcshim/awt/Component;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public addKeyListener(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public addMouseListener(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public addMouseMotionListener(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public getGraphics()Lmcshim/awt/Graphics;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 4
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lmcport/Platform;->surfaceHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 4
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lmcport/Platform;->surfaceWidth()I

    move-result v0

    return v0
.end method

.method public isDisplayable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public removeAll()V
    .registers 1

    return-void
.end method

.method public requestFocus()V
    .registers 1

    return-void
.end method

.method public setBackground(Lmcshim/awt/Color;)V
    .registers 2

    return-void
.end method

.method public setFocusable(Z)V
    .registers 2

    return-void
.end method

.method public setLayout(Lmcshim/awt/LayoutManager;)V
    .registers 2

    return-void
.end method

.method public setPreferredSize(Lmcshim/awt/Dimension;)V
    .registers 2

    return-void
.end method

.method public setSize(II)V
    .registers 3

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    return-void
.end method

.method public validate()V
    .registers 1

    return-void
.end method
