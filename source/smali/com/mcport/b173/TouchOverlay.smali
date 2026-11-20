###### Class com.mcport.b173.TouchOverlay (com.mcport.b173.TouchOverlay)
.class public Lcom/mcport/b173/TouchOverlay;
.super Landroid/view/View;
.source "TouchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcport/b173/TouchOverlay$Host;,
        Lcom/mcport/b173/TouchOverlay$Ctl;
    }
.end annotation


# instance fields
.field private atkX:F

.field private atkY:F

.field private final attack:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final chat:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final ctls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mcport/b173/TouchOverlay$Ctl;",
            ">;"
        }
    .end annotation
.end field

.field private final dismount:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final dp:F

.field private dragOffX:F

.field private dragOffY:F

.field private dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final drop:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final editMode:Z

.field private final fill:Landroid/graphics/Paint;

.field private final host:Lcom/mcport/b173/TouchOverlay$Host;

.field private imeShown:Z

.field private final inv:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final joy:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private joyKeys:[Z

.field private final jump:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final kbd:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private knobX:F

.field private knobY:F

.field private lastButtons:I

.field private lastState:I

.field private final longPress:Ljava/lang/Runnable;

.field private lookBreaking:Z

.field private lookDownT:J

.field private lookDownX:F

.field private lookDownY:F

.field private lookLastX:F

.field private lookLastY:F

.field private lookMoved:Z

.field private lookPointer:I

.field private lookRemX:F

.field private lookRemY:F

.field private menuPointer:I

.field private final pause:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final poll:Ljava/lang/Runnable;

.field private final profile:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final rclick:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private rclickMode:Z

.field private final shift:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private shiftHeld:Z

.field private final sneak:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final stroke:Landroid/graphics/Paint;

.field private final text:Landroid/graphics/Paint;

.field private final ui:Landroid/os/Handler;

.field private final use:Lcom/mcport/b173/TouchOverlay$Ctl;

.field private final view:Lcom/mcport/b173/TouchOverlay$Ctl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcport/b173/TouchOverlay$Host;Z)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 53
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/mcport/b173/TouchOverlay;->stroke:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    const/4 v5, 0x4

    new-array v5, v5, [Z

    .line 44
    iput-object v5, v0, Lcom/mcport/b173/TouchOverlay;->joyKeys:[Z

    const/4 v5, -0x1

    .line 46
    iput v5, v0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    iput v5, v0, Lcom/mcport/b173/TouchOverlay;->menuPointer:I

    .line 48
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v0, Lcom/mcport/b173/TouchOverlay;->ui:Landroid/os/Handler;

    .line 49
    iput v5, v0, Lcom/mcport/b173/TouchOverlay;->lastState:I

    .line 84
    new-instance v7, Lcom/mcport/b173/TouchOverlay$1;

    invoke-direct {v7, v0}, Lcom/mcport/b173/TouchOverlay$1;-><init>(Lcom/mcport/b173/TouchOverlay;)V

    iput-object v7, v0, Lcom/mcport/b173/TouchOverlay;->poll:Ljava/lang/Runnable;

    .line 199
    new-instance v8, Lcom/mcport/b173/TouchOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/mcport/b173/TouchOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/mcport/b173/TouchOverlay;)V

    iput-object v8, v0, Lcom/mcport/b173/TouchOverlay;->longPress:Ljava/lang/Runnable;

    move-object/from16 v8, p2

    .line 53
    iput-object v8, v0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    iput-boolean v1, v0, Lcom/mcport/b173/TouchOverlay;->editMode:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    iput v8, v0, Lcom/mcport/b173/TouchOverlay;->dp:F

    .line 54
    invoke-virtual {v0, v3}, Lcom/mcport/b173/TouchOverlay;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Lcom/mcport/b173/TouchOverlay;->setFocusableInTouchMode(Z)V

    .line 55
    new-instance v15, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "joy"

    const-string v11, ""

    const v12, 0x3e051eb8    # 0.13f

    const v13, 0x3f428f5c    # 0.76f

    const/high16 v14, 0x42780000    # 62.0f

    const/16 v16, 0x1

    move-object v9, v15

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 56
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "jump"

    const-string v11, "\u2191"

    const v12, 0x3f6b851f    # 0.92f

    const v13, 0x3f45a1cb    # 0.772f

    const/high16 v14, 0x41f00000    # 30.0f

    const/4 v15, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->jump:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 57
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "sneak"

    const-string v11, "\u2193"

    const v12, 0x3f4f5c29    # 0.81f

    const v13, 0x3f5c28f6    # 0.86f

    const/high16 v14, 0x41c00000    # 24.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->sneak:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 58
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "attack"

    const-string v11, "\u2020"

    const v12, 0x3f4ccccd    # 0.8f

    const v13, 0x3f23d70a    # 0.64f

    const/high16 v14, 0x41f00000    # 30.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->attack:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 59
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "use"

    const-string v11, "+"

    const v12, 0x3f6b851f    # 0.92f

    const v13, 0x3f051eb8    # 0.52f

    const/high16 v14, 0x41f00000    # 30.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->use:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 60
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "pause"

    const-string v11, "II"

    const v12, 0x3f000000    # 0.5f

    const v13, 0x3d6147ae    # 0.055f

    const/high16 v14, 0x41600000    # 14.0f

    const/4 v15, 0x2

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->pause:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 61
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "inv"

    const-string v11, "\u2026"

    const v12, 0x3f38f5c3    # 0.7225f

    const v13, 0x3f70a3d7    # 0.94f

    const/high16 v14, 0x41800000    # 16.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->inv:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 62
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "drop"

    const-string v11, "\u00d7"

    const v12, 0x3f0a3d71    # 0.54f

    const v13, 0x3d6147ae    # 0.055f

    const/high16 v14, 0x41600000    # 14.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->drop:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 63
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "chat"

    const-string v11, "Chat"

    const v12, 0x3eeb851f    # 0.46f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->chat:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 64
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "view"

    const-string v11, "v5"

    const v12, 0x3f147ae1    # 0.58f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->view:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 65
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "dismount"

    const-string v11, "Exit"

    const v12, 0x3f28f5c3    # 0.66f

    const v13, 0x3f6147ae    # 0.88f

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->dismount:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 66
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "kbd"

    const-string v11, "Keys"

    const v12, 0x3f770a3d    # 0.965f

    const v13, 0x3da3d70a    # 0.08f

    const/high16 v14, 0x41a00000    # 20.0f

    const/4 v15, 0x2

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->kbd:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 67
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "rclick"

    const-string v11, "R-click"

    const v12, 0x3d4ccccd    # 0.05f

    const v13, 0x3e99999a    # 0.3f

    const/high16 v14, 0x41c00000    # 24.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->rclick:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 68
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "shift"

    const-string v11, "Shift"

    const v13, 0x3ee66666    # 0.45f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->shift:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 69
    new-instance v3, Lcom/mcport/b173/TouchOverlay$Ctl;

    const-string v10, "profile"

    const-string v11, "Profile"

    const v12, 0x3d75c28f    # 0.06f

    const v13, 0x3da3d70a    # 0.08f

    const/high16 v14, 0x41b00000    # 22.0f

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/mcport/b173/TouchOverlay$Ctl;-><init>(Ljava/lang/String;Ljava/lang/String;FFFI)V

    invoke-direct {v0, v3}, Lcom/mcport/b173/TouchOverlay;->add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v3

    iput-object v3, v0, Lcom/mcport/b173/TouchOverlay;->profile:Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 70
    const v3, -0xd4d4d5

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 71
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v3, -0xaaaaab

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez v1, :cond_1ea

    const-wide/16 v1, 0x64

    .line 72
    invoke-virtual {v6, v7, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1ea
    return-void
.end method

.method static synthetic access$000(Lcom/mcport/b173/TouchOverlay;)I
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/mcport/b173/TouchOverlay;->state()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/mcport/b173/TouchOverlay;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/mcport/b173/TouchOverlay;->lastState:I

    return p0
.end method

.method static synthetic access$102(Lcom/mcport/b173/TouchOverlay;I)I
    .registers 2

    .line 31
    iput p1, p0, Lcom/mcport/b173/TouchOverlay;->lastState:I

    return p1
.end method

.method static synthetic access$202(Lcom/mcport/b173/TouchOverlay;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->rclickMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mcport/b173/TouchOverlay;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/mcport/b173/TouchOverlay;->shiftHeld:Z

    return p0
.end method

.method static synthetic access$302(Lcom/mcport/b173/TouchOverlay;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->shiftHeld:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mcport/b173/TouchOverlay;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/mcport/b173/TouchOverlay;->imeShown:Z

    return p0
.end method

.method static synthetic access$500(Lcom/mcport/b173/TouchOverlay;Z)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/mcport/b173/TouchOverlay;->setIme(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mcport/b173/TouchOverlay;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/mcport/b173/TouchOverlay;->ui:Landroid/os/Handler;

    return-object p0
.end method

.method private add(Lcom/mcport/b173/TouchOverlay$Ctl;)Lcom/mcport/b173/TouchOverlay$Ctl;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private static clamp(FFF)F
    .registers 3

    .line 340
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private down(IFFI)V
    .registers 10

    .line 188
    invoke-direct {p0, p2, p3, p4}, Lcom/mcport/b173/TouchOverlay;->hit(FFI)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 189
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mcport/b173/TouchOverlay;->press(Lcom/mcport/b173/TouchOverlay$Ctl;IFF)V

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    return-void

    :cond_d
    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-eqz p4, :cond_47

    .line 191
    invoke-direct {p0, p2, p3}, Lcom/mcport/b173/TouchOverlay;->hotbarTap(FF)Z

    move-result p4

    if-eqz p4, :cond_19

    return-void

    .line 192
    :cond_19
    iget p4, p0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    if-gez p4, :cond_5d

    iput p1, p0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    iput p2, p0, Lcom/mcport/b173/TouchOverlay;->lookDownX:F

    iput p2, p0, Lcom/mcport/b173/TouchOverlay;->lookLastX:F

    iput p3, p0, Lcom/mcport/b173/TouchOverlay;->lookDownY:F

    iput p3, p0, Lcom/mcport/b173/TouchOverlay;->lookLastY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mcport/b173/TouchOverlay;->lookDownT:J

    iput-boolean v1, p0, Lcom/mcport/b173/TouchOverlay;->lookMoved:Z

    iput-boolean v1, p0, Lcom/mcport/b173/TouchOverlay;->lookBreaking:Z

    .line 193
    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {p1}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mcport/b173/Prefs;->tapToUse()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->ui:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->longPress:Ljava/lang/Runnable;

    const-wide/16 p3, 0xfa

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5d

    .line 194
    :cond_47
    iget p4, p0, Lcom/mcport/b173/TouchOverlay;->menuPointer:I

    if-gez p4, :cond_5d

    .line 195
    iput p1, p0, Lcom/mcport/b173/TouchOverlay;->menuPointer:I

    invoke-direct {p0, p2}, Lcom/mcport/b173/TouchOverlay;->sx(F)I

    move-result p1

    invoke-direct {p0, p3}, Lcom/mcport/b173/TouchOverlay;->syGL(F)I

    move-result p2

    .line 196
    invoke-static {p1, p2, v1, v1}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    iget-boolean p3, p0, Lcom/mcport/b173/TouchOverlay;->rclickMode:Z

    invoke-static {p3, v0, p1, p2}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private editTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_68

    if-eq p1, v2, :cond_3f

    const/4 v3, 0x2

    if-eq p1, v3, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3f

    goto :goto_7c

    .line 334
    :cond_18
    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eqz p1, :cond_7c

    iget v3, p0, Lcom/mcport/b173/TouchOverlay;->dragOffX:F

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/mcport/b173/TouchOverlay;->clamp(FFF)F

    move-result v0

    iput v0, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v0, p0, Lcom/mcport/b173/TouchOverlay;->dragOffY:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v4, v0}, Lcom/mcport/b173/TouchOverlay;->clamp(FFF)F

    move-result v0

    iput v0, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    goto :goto_7c

    .line 336
    :cond_3f
    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {p1}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object p1

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget-object v0, v0, Lcom/mcport/b173/TouchOverlay$Ctl;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v1, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v3, v3, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v3}, Lcom/mcport/b173/Prefs;->setPos(Ljava/lang/String;FF)V

    :cond_64
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    goto :goto_7c

    .line 333
    :cond_68
    invoke-direct {p0, v0, v1, v2}, Lcom/mcport/b173/TouchOverlay;->hit(FFI)Lcom/mcport/b173/TouchOverlay$Ctl;

    move-result-object p1

    iput-object p1, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eqz p1, :cond_7c

    iget p1, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/mcport/b173/TouchOverlay;->dragOffX:F

    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->dragging:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget p1, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/mcport/b173/TouchOverlay;->dragOffY:F

    :cond_7c
    :goto_7c
    return v2
.end method

.method private hit(FFI)Lcom/mcport/b173/TouchOverlay$Ctl;
    .registers 9

    .line 164
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcport/b173/TouchOverlay$Ctl;

    invoke-direct {p0, v1, p3}, Lcom/mcport/b173/TouchOverlay;->visible(Lcom/mcport/b173/TouchOverlay$Ctl;I)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_6

    :cond_19
    iget v2, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->kind:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    iget v2, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const/high16 v3, 0x3fa00000    # 1.25f

    :goto_22
    mul-float/2addr v2, v3

    goto :goto_35

    :cond_24
    iget v2, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    iget v2, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v3, 0x3fb33333    # 1.4f

    goto :goto_22

    :cond_2f
    iget v2, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v3, 0x3f8ccccd    # 1.1f

    goto :goto_22

    .line 165
    :goto_35
    iget v3, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    sub-float v3, p1, v3

    iget v4, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    sub-float v4, p2, v4

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_6

    return-object v1

    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method private hotbarTap(FF)Z
    .registers 7

    .line 224
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->bridge()Lmcport/GameBridge;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-interface {v0}, Lmcport/GameBridge;->hotbarRect()[I

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    .line 225
    :cond_11
    invoke-direct {p0, p1}, Lcom/mcport/b173/TouchOverlay;->sx(F)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/mcport/b173/TouchOverlay;->syGL(F)I

    move-result p2

    if-ltz p2, :cond_40

    const/4 v2, 0x3

    .line 226
    aget v2, v0, v2

    if-lt p2, v2, :cond_21

    goto :goto_40

    .line 227
    :cond_21
    aget p2, v0, v1

    sub-int v2, p1, p2

    const/4 v3, 0x4

    aget v3, v0, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    aget v0, v0, v3

    div-int/2addr v2, v0

    if-lt p1, p2, :cond_40

    if-ltz v2, :cond_40

    const/16 p1, 0x8

    if-le v2, p1, :cond_36

    goto :goto_40

    :cond_36
    add-int/lit8 p1, v2, 0x2

    add-int/lit8 v2, v2, 0x31

    int-to-char p2, v2

    .line 228
    invoke-static {p1, p2}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    const/4 p1, 0x1

    return p1

    :cond_40
    :goto_40
    return v1
.end method

.method private joystick(FF)V
    .registers 9

    .line 258
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v0, v0, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v0, v0, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    sub-float/2addr p2, v0

    float-to-double v0, p1

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v1, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1d

    div-float/2addr p1, v0

    mul-float/2addr p1, v1

    div-float/2addr p2, v0

    mul-float/2addr p2, v1

    .line 259
    :cond_1d
    iget-object v2, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v2, v2, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/mcport/b173/TouchOverlay;->knobX:F

    iget-object v2, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v2, v2, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/mcport/b173/TouchOverlay;->knobY:F

    const v2, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_38

    .line 260
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/mcport/b173/TouchOverlay;->setJoy(ZZZZ)V

    return-void

    :cond_38
    neg-float p2, p2

    float-to-double v2, p2

    float-to-double p1, p1

    .line 261
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmpg-double v0, p1, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_4f

    add-double/2addr p1, v2

    :cond_4f
    const-wide v4, 0x4036800000000000L    # 22.5

    add-double/2addr p1, v4

    rem-double/2addr p1, v2

    const-wide v2, 0x4046800000000000L    # 45.0

    div-double/2addr p1, v2

    .line 262
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6d

    if-ne p1, p2, :cond_6b

    goto :goto_6d

    :cond_6b
    move v2, v1

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v2, v0

    :goto_6e
    const/4 v3, 0x7

    const/4 v4, 0x5

    if-eq p1, v4, :cond_7a

    const/4 v5, 0x6

    if-eq p1, v5, :cond_7a

    if-ne p1, v3, :cond_78

    goto :goto_7a

    :cond_78
    move v5, v1

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v5, v0

    :goto_7b
    if-eq p1, p2, :cond_85

    const/4 p2, 0x4

    if-eq p1, p2, :cond_85

    if-ne p1, v4, :cond_83

    goto :goto_85

    :cond_83
    move p2, v1

    goto :goto_86

    :cond_85
    :goto_85
    move p2, v0

    :goto_86
    if-eq p1, v3, :cond_8c

    if-eqz p1, :cond_8c

    if-ne p1, v0, :cond_8d

    :cond_8c
    move v1, v0

    .line 265
    :cond_8d
    invoke-direct {p0, v2, p2, v5, v1}, Lcom/mcport/b173/TouchOverlay;->setJoy(ZZZZ)V

    return-void
.end method

.method private layout()V
    .registers 10

    .line 122
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->controlScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getHeight()I

    move-result v2

    .line 123
    iget-object v3, p0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcport/b173/TouchOverlay$Ctl;

    iget-object v5, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v5}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v5

    iget-object v6, v4, Lcom/mcport/b173/TouchOverlay$Ctl;->key:Ljava/lang/String;

    iget v7, v4, Lcom/mcport/b173/TouchOverlay$Ctl;->defX:F

    iget v8, v4, Lcom/mcport/b173/TouchOverlay$Ctl;->defY:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/mcport/b173/Prefs;->pos(Ljava/lang/String;FF)[F

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v5, v6

    int-to-float v7, v1

    mul-float/2addr v6, v7

    iput v6, v4, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v2

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v5, v4, Lcom/mcport/b173/TouchOverlay$Ctl;->sizeDp:F

    iget v6, p0, Lcom/mcport/b173/TouchOverlay;->dp:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v0

    iput v5, v4, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    goto :goto_18

    :cond_4b
    return-void
.end method

.method private mouseTouch(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/mcport/b173/TouchOverlay;->sx(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/mcport/b173/TouchOverlay;->syGL(F)I

    move-result v2

    const/4 v3, 0x0

    .line 282
    invoke-static {v1, v2, v3, v3}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/16 v5, 0xb

    if-eq v3, v5, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v4, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v3, 0xc

    if-ne p1, v3, :cond_38

    :cond_35
    invoke-virtual {p0, v0, v1, v2}, Lcom/mcport/b173/TouchOverlay;->syncButtons(III)V

    :cond_38
    return v4
.end method

.method private move(IFFI)V
    .registers 9

    .line 202
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->attack:Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v1, v0, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    if-ne v1, p1, :cond_3a

    iget v1, p0, Lcom/mcport/b173/TouchOverlay;->atkX:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/mcport/b173/TouchOverlay;->atkY:F

    sub-float v2, p3, v2

    iput p2, p0, Lcom/mcport/b173/TouchOverlay;->atkX:F

    iput p3, p0, Lcom/mcport/b173/TouchOverlay;->atkY:F

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->lookSensitivity()F

    move-result v0

    const v3, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/mcport/b173/TouchOverlay;->dp:F

    div-float/2addr v0, v3

    mul-float/2addr v1, v0

    neg-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v0

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v3

    invoke-static {v0, v3, v1, v2}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    return-void

    :cond_3a
    iget-object p4, p0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_40
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v1, v0, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    if-ne v1, p1, :cond_40

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne v0, v1, :cond_40

    invoke-direct {p0, p2, p3}, Lcom/mcport/b173/TouchOverlay;->joystick(FF)V

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    return-void

    .line 203
    :cond_5b
    iget p4, p0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    if-ne p1, p4, :cond_cb

    .line 204
    iget p1, p0, Lcom/mcport/b173/TouchOverlay;->lookLastX:F

    sub-float p1, p2, p1

    iget p4, p0, Lcom/mcport/b173/TouchOverlay;->lookLastY:F

    sub-float p4, p3, p4

    iput p2, p0, Lcom/mcport/b173/TouchOverlay;->lookLastX:F

    iput p3, p0, Lcom/mcport/b173/TouchOverlay;->lookLastY:F

    .line 205
    iget-boolean v0, p0, Lcom/mcport/b173/TouchOverlay;->lookMoved:Z

    if-nez v0, :cond_8f

    iget v0, p0, Lcom/mcport/b173/TouchOverlay;->lookDownX:F

    sub-float/2addr p2, v0

    float-to-double v0, p2

    iget p2, p0, Lcom/mcport/b173/TouchOverlay;->lookDownY:F

    sub-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p2

    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/mcport/b173/TouchOverlay;->dp:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    cmpl-double p2, p2, v0

    if-lez p2, :cond_8f

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mcport/b173/TouchOverlay;->lookMoved:Z

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->ui:Landroid/os/Handler;

    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->longPress:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_8f
    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {p2}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mcport/b173/Prefs;->lookSensitivity()F

    move-result p2

    const p3, 0x3fcccccd    # 1.6f

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/mcport/b173/TouchOverlay;->dp:F

    div-float/2addr p2, p3

    mul-float/2addr p1, p2

    neg-float p3, p4

    mul-float/2addr p3, p2

    iget v0, p0, Lcom/mcport/b173/TouchOverlay;->lookRemX:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/mcport/b173/TouchOverlay;->lookRemY:F

    add-float/2addr p3, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/mcport/b173/TouchOverlay;->lookRemX:F

    int-to-float p2, v1

    sub-float/2addr p3, p2

    iput p3, p0, Lcom/mcport/b173/TouchOverlay;->lookRemY:F

    move p1, v0

    move p2, v1

    if-nez p1, :cond_bf

    if-eqz p2, :cond_db

    .line 208
    :cond_bf
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p3

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result p4

    invoke-static {p3, p4, p1, p2}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    goto :goto_db

    .line 209
    :cond_cb
    iget p4, p0, Lcom/mcport/b173/TouchOverlay;->menuPointer:I

    if-ne p1, p4, :cond_db

    invoke-direct {p0, p2}, Lcom/mcport/b173/TouchOverlay;->sx(F)I

    move-result p1

    invoke-direct {p0, p3}, Lcom/mcport/b173/TouchOverlay;->syGL(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    :cond_db
    :goto_db
    return-void
.end method

.method private press(Lcom/mcport/b173/TouchOverlay$Ctl;IFF)V
    .registers 6

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->attack:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_8

    iput p3, p0, Lcom/mcport/b173/TouchOverlay;->atkX:F

    iput p4, p0, Lcom/mcport/b173/TouchOverlay;->atkY:F

    .line 232
    :cond_8
    iput p2, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->pressed:Z

    .line 233
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_15

    invoke-direct {p0, p3, p4}, Lcom/mcport/b173/TouchOverlay;->joystick(FF)V

    return-void

    .line 234
    :cond_15
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->jump:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_22

    const/16 p1, 0x39

    const/16 p3, 0x20

    invoke-static {p1, p2, p3}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    goto/16 :goto_c0

    .line 235
    :cond_22
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->sneak:Lcom/mcport/b173/TouchOverlay$Ctl;

    const/16 p4, 0x2a

    const/4 v0, 0x0

    if-ne p1, p3, :cond_35

    iget-boolean p3, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->toggled:Z

    xor-int/2addr p2, p3

    iput-boolean p2, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->toggled:Z

    iget-boolean p1, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->toggled:Z

    invoke-static {p4, p1, v0}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    goto/16 :goto_c0

    .line 236
    :cond_35
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->dismount:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_3e

    invoke-static {p4, p2, v0}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    goto/16 :goto_c0

    .line 237
    :cond_3e
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->attack:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_4f

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result p3

    invoke-static {v0, p2, p1, p3}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    goto/16 :goto_c0

    .line 238
    :cond_4f
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->use:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_5f

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result p3

    invoke-static {p2, p2, p1, p3}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    goto :goto_c0

    .line 239
    :cond_5f
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->inv:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_6b

    const/16 p1, 0x12

    const/16 p2, 0x65

    invoke-static {p1, p2}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_c0

    .line 240
    :cond_6b
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->drop:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_77

    const/16 p1, 0x10

    const/16 p2, 0x71

    invoke-static {p1, p2}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_c0

    .line 241
    :cond_77
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->chat:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_83

    const/16 p1, 0x14

    const/16 p2, 0x74

    invoke-static {p1, p2}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_c0

    .line 242
    :cond_83
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->view:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_8d

    const/16 p1, 0x3f

    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_c0

    .line 243
    :cond_8d
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->pause:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_95

    invoke-static {p2, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_c0

    .line 244
    :cond_95
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->kbd:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_a0

    iget-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->imeShown:Z

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/mcport/b173/TouchOverlay;->setIme(Z)V

    goto :goto_c0

    .line 245
    :cond_a0
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->profile:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_aa

    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {p1}, Lcom/mcport/b173/TouchOverlay$Host;->openProfile()V

    goto :goto_c0

    .line 246
    :cond_aa
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->rclick:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_b4

    iget-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->rclickMode:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->rclickMode:Z

    goto :goto_c0

    .line 247
    :cond_b4
    iget-object p3, p0, Lcom/mcport/b173/TouchOverlay;->shift:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, p3, :cond_c0

    iget-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->shiftHeld:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->shiftHeld:Z

    invoke-static {p4, p1, v0}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method private release(Lcom/mcport/b173/TouchOverlay$Ctl;)V
    .registers 5

    const/4 v0, -0x1

    .line 250
    iput v0, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mcport/b173/TouchOverlay$Ctl;->pressed:Z

    .line 251
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->joy:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v1, :cond_e

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/mcport/b173/TouchOverlay;->setJoy(ZZZZ)V

    return-void

    .line 252
    :cond_e
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->jump:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v1, :cond_18

    const/16 p1, 0x39

    invoke-static {p1, v0, v0}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    goto :goto_42

    .line 253
    :cond_18
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->dismount:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v1, :cond_22

    const/16 p1, 0x2a

    invoke-static {p1, v0, v0}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    goto :goto_42

    .line 254
    :cond_22
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->attack:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v1, :cond_32

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v1

    invoke-static {v0, v0, p1, v1}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    goto :goto_42

    .line 255
    :cond_32
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->use:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v1, :cond_42

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v0, p1, v1}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    :cond_42
    :goto_42
    return-void
.end method

.method private setIme(Z)V
    .registers 5

    .line 98
    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 99
    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->requestFocus()Z

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_23

    :cond_1c
    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 100
    :goto_23
    iput-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->imeShown:Z

    return-void
.end method

.method private setJoy(ZZZZ)V
    .registers 10

    const/4 v0, 0x4

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    const/4 p1, 0x1

    aput-boolean p2, v1, p1

    const/4 p1, 0x2

    aput-boolean p3, v1, p1

    const/4 p1, 0x3

    aput-boolean p4, v1, p1

    const/16 p1, 0x1f

    const/16 p2, 0x20

    const/16 p3, 0x11

    const/16 p4, 0x1e

    .line 268
    filled-new-array {p3, p4, p1, p2}, [I

    move-result-object p1

    new-array p2, v0, [C

    fill-array-data p2, :array_40

    move p3, v2

    :goto_21
    if-ge p3, v0, :cond_3f

    .line 269
    aget-boolean p4, v1, p3

    iget-object v3, p0, Lcom/mcport/b173/TouchOverlay;->joyKeys:[Z

    aget-boolean v3, v3, p3

    if-eq p4, v3, :cond_3c

    aget v3, p1, p3

    if-eqz p4, :cond_32

    aget-char v4, p2, p3

    goto :goto_33

    :cond_32
    move v4, v2

    :goto_33
    invoke-static {v3, p4, v4}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    iget-object p4, p0, Lcom/mcport/b173/TouchOverlay;->joyKeys:[Z

    aget-boolean v3, v1, p3

    aput-boolean v3, p4, p3

    :cond_3c
    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    :cond_3f
    return-void

    :array_40
    .array-data 2
        0x77s
        0x61s
        0x73s
        0x64s
    .end array-data
.end method

.method private static sq(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .registers 16

    new-instance v0, Landroid/graphics/RectF;

    sub-float v1, p1, p3

    sub-float v2, p2, p3

    add-float v3, p1, p3

    add-float v4, p2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, p3

    invoke-virtual {p0, v0, v5, v5, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v6, v7, :cond_60

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, p3

    const v8, 0x70ffffff

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    add-float v8, v1, v5

    sub-float v9, v3, v5

    add-float v10, v2, v7

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-float v8, v2, v5

    sub-float v9, v4, v5

    add-float v10, v1, v7

    invoke-virtual {v0, v1, v8, v10, v9}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v8, 0x70000000

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    add-float v8, v1, v5

    sub-float v9, v3, v5

    sub-float v10, v4, v7

    invoke-virtual {v0, v8, v10, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-float v8, v2, v5

    sub-float v9, v4, v5

    sub-float v10, v3, v7

    invoke-virtual {v0, v10, v8, v3, v9}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_60
    return-void
.end method

.method private state()I
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->bridge()Lmcport/GameBridge;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 79
    :cond_a
    invoke-interface {v0}, Lmcport/GameBridge;->isInGameplay()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    :goto_15
    if-ne v1, v3, :cond_1f

    .line 80
    invoke-interface {v0}, Lmcport/GameBridge;->screenWantsText()Z

    move-result v4

    if-eqz v4, :cond_1f

    or-int/lit8 v1, v1, 0x4

    :cond_1f
    if-ne v1, v3, :cond_29

    invoke-interface {v0}, Lmcport/GameBridge;->isContainerScreen()Z

    move-result v4

    if-eqz v4, :cond_29

    or-int/lit8 v1, v1, 0x8

    :cond_29
    if-ne v1, v2, :cond_33

    invoke-interface {v0}, Lmcport/GameBridge;->isRiding()Z

    move-result v2

    if-eqz v2, :cond_33

    or-int/lit8 v1, v1, 0x10

    .line 81
    :cond_33
    invoke-interface {v0}, Lmcport/GameBridge;->isMultiplayer()Z

    move-result v2

    if-eqz v2, :cond_3b

    or-int/lit8 v1, v1, 0x20

    :cond_3b
    if-ne v1, v3, :cond_45

    invoke-interface {v0}, Lmcport/GameBridge;->isTitleScreen()Z

    move-result v0

    if-eqz v0, :cond_45

    or-int/lit16 v1, v1, 0x80

    :cond_45
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->padActive()Z

    move-result v0

    if-eqz v0, :cond_4f

    or-int/lit8 v1, v1, 0x40

    :cond_4f
    return v1
.end method

.method private sx(F)I
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->surfaceW()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private syGL(F)I
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->surfaceH()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v2}, Lcom/mcport/b173/TouchOverlay$Host;->surfaceH()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method static typeChar(C)V
    .registers 2

    const/16 v0, 0xa

    if-ne p0, v0, :cond_c

    const/16 p0, 0x1c

    const/16 v0, 0xd

    .line 327
    invoke-static {p0, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    return-void

    :cond_c
    invoke-static {p0}, Lcom/mcport/b173/KeyMap;->forChar(C)I

    move-result v0

    invoke-static {v0, p0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    return-void
.end method

.method private up(IFFIZ)V
    .registers 8

    .line 213
    iget-object p4, p0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v1, v0, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    if-ne v1, p1, :cond_6

    invoke-direct {p0, v0}, Lcom/mcport/b173/TouchOverlay;->release(Lcom/mcport/b173/TouchOverlay$Ctl;)V

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    return-void

    .line 214
    :cond_1d
    iget p4, p0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, p4, :cond_75

    .line 215
    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->ui:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->longPress:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->lookBreaking:Z

    if-eqz p1, :cond_3a

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result p2

    invoke-static {v1, v1, p1, p2}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    goto :goto_70

    :cond_3a
    if-nez p5, :cond_70

    .line 217
    iget-boolean p1, p0, Lcom/mcport/b173/TouchOverlay;->lookMoved:Z

    if-nez p1, :cond_70

    iget-object p1, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {p1}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mcport/b173/Prefs;->tapToUse()Z

    move-result p1

    if-eqz p1, :cond_70

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/mcport/b173/TouchOverlay;->lookDownT:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x12c

    cmp-long p1, p1, p3

    if-gez p1, :cond_70

    .line 218
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p3, p1, p2}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result p2

    invoke-static {p3, v1, p1, p2}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    .line 219
    :cond_70
    :goto_70
    iput v0, p0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    iput-boolean v1, p0, Lcom/mcport/b173/TouchOverlay;->lookBreaking:Z

    goto :goto_8b

    .line 220
    :cond_75
    iget p4, p0, Lcom/mcport/b173/TouchOverlay;->menuPointer:I

    if-ne p1, p4, :cond_8b

    invoke-direct {p0, p2}, Lcom/mcport/b173/TouchOverlay;->sx(F)I

    move-result p1

    invoke-direct {p0, p3}, Lcom/mcport/b173/TouchOverlay;->syGL(F)I

    move-result p2

    invoke-static {p1, p2, v1, v1}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    iget-boolean p3, p0, Lcom/mcport/b173/TouchOverlay;->rclickMode:Z

    invoke-static {p3, v1, p1, p2}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    iput v0, p0, Lcom/mcport/b173/TouchOverlay;->menuPointer:I

    :cond_8b
    :goto_8b
    return-void
.end method

.method private visible(Lcom/mcport/b173/TouchOverlay$Ctl;I)Z
    .registers 6

    .line 104
    iget-boolean v0, p0, Lcom/mcport/b173/TouchOverlay;->editMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->kbd:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, p2, :cond_1b

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->rclick:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, p2, :cond_1b

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->shift:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, p2, :cond_1b

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->dismount:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, p2, :cond_1b

    iget-object p2, p0, Lcom/mcport/b173/TouchOverlay;->profile:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, p2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 105
    :cond_1d
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->profile:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_28

    and-int/lit16 p1, p2, 0x80

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1

    :cond_28
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_39

    .line 106
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->hideTouchWithController()Z

    move-result v0

    if-eqz v0, :cond_39

    return v2

    :cond_39
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_76

    .line 108
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->kbd:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, v0, :cond_75

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->rclick:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, v0, :cond_75

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->shift:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_4a

    goto :goto_75

    .line 109
    :cond_4a
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->attack:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, v0, :cond_52

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->use:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_5f

    :cond_52
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v0}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->showAttackUse()Z

    move-result v0

    if-nez v0, :cond_5f

    return v2

    .line 110
    :cond_5f
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->dismount:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_6a

    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_68

    goto :goto_69

    :cond_68
    move v1, v2

    :goto_69
    return v1

    .line 111
    :cond_6a
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->chat:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_74

    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_73

    goto :goto_74

    :cond_73
    move v1, v2

    :cond_74
    :goto_74
    return v1

    :cond_75
    :goto_75
    return v2

    :cond_76
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_8e

    .line 115
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->kbd:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_7f

    return v1

    .line 116
    :cond_7f
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->rclick:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-eq p1, v0, :cond_87

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->shift:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne p1, v0, :cond_8e

    :cond_87
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_8c

    goto :goto_8d

    :cond_8c
    move v1, v2

    :goto_8d
    return v1

    :cond_8e
    return v2
.end method


# virtual methods
.method synthetic lambda$new$0$com-mcport-b173-TouchOverlay()V
    .registers 5

    .line 199
    iget v0, p0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    if-ltz v0, :cond_17

    iget-boolean v0, p0, Lcom/mcport/b173/TouchOverlay;->lookMoved:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcport/b173/TouchOverlay;->lookBreaking:Z

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    :cond_17
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    .line 302
    :goto_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    const/16 v5, 0x1c

    const/16 v6, 0x1b

    if-ge v2, v4, :cond_22

    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p1, v5, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 303
    :cond_22
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    add-float/2addr v3, v2

    cmpl-float v2, v1, v0

    if-nez v2, :cond_34

    cmpl-float v2, v3, v0

    if-eqz v2, :cond_48

    .line 304
    :cond_34
    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v2

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v4, v1, v3}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    .line 305
    :cond_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_64

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_64

    if-lez v0, :cond_5f

    const/16 v0, 0x78

    goto :goto_61

    :cond_5f
    const/16 v0, -0x78

    :goto_61
    invoke-static {v0}, Lorg/lwjgl/input/Mouse;->postWheel(I)V

    .line 306
    :cond_64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v0

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mcport/b173/TouchOverlay;->syncButtons(III)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .line 311
    iget-boolean v0, p0, Lcom/mcport/b173/TouchOverlay;->imeShown:Z

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    const v0, 0x80091

    .line 313
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x12000006

    .line 314
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 315
    new-instance p1, Lcom/mcport/b173/TouchOverlay$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/mcport/b173/TouchOverlay$2;-><init>(Lcom/mcport/b173/TouchOverlay;Landroid/view/View;Z)V

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 129
    iget-boolean v2, v0, Lcom/mcport/b173/TouchOverlay;->editMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_f

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/mcport/b173/TouchOverlay;->state()I

    move-result v2

    :goto_f
    if-nez v2, :cond_12

    return-void

    .line 130
    :cond_12
    iget-object v4, v0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v4}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcport/b173/Prefs;->controlOpacity()F

    move-result v4

    .line 131
    iget-boolean v5, v0, Lcom/mcport/b173/TouchOverlay;->editMode:Z

    const v6, 0x3ed70a3d    # 0.42f

    if-eqz v5, :cond_54

    const/16 v5, 0x3c

    const/16 v7, 0xff

    const/16 v8, 0x28

    invoke-static {v7, v8, v5, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v5, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    const/high16 v8, 0x41600000    # 14.0f

    iget v9, v0, Lcom/mcport/b173/TouchOverlay;->dp:F

    mul-float/2addr v9, v8

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/mcport/b173/TouchOverlay;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/mcport/b173/TouchOverlay;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    iget-object v8, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    const-string v9, "Drag controls to move them. Press Back to save."

    invoke-virtual {v1, v9, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    :cond_54
    iget-object v5, v0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_293

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcport/b173/TouchOverlay$Ctl;

    .line 134
    invoke-direct {v0, v7, v2}, Lcom/mcport/b173/TouchOverlay;->visible(Lcom/mcport/b173/TouchOverlay$Ctl;I)Z

    move-result v8

    if-nez v8, :cond_6d

    goto :goto_5a

    .line 135
    :cond_6d
    iget-boolean v8, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->pressed:Z

    if-nez v8, :cond_8c

    iget-object v8, v0, Lcom/mcport/b173/TouchOverlay;->sneak:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne v7, v8, :cond_79

    iget-boolean v8, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->toggled:Z

    if-nez v8, :cond_8c

    :cond_79
    iget-object v8, v0, Lcom/mcport/b173/TouchOverlay;->rclick:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne v7, v8, :cond_81

    iget-boolean v8, v0, Lcom/mcport/b173/TouchOverlay;->rclickMode:Z

    if-nez v8, :cond_8c

    :cond_81
    iget-object v8, v0, Lcom/mcport/b173/TouchOverlay;->shift:Lcom/mcport/b173/TouchOverlay$Ctl;

    if-ne v7, v8, :cond_8a

    iget-boolean v8, v0, Lcom/mcport/b173/TouchOverlay;->shiftHeld:Z

    if-eqz v8, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v8, 0x0

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v8, v3

    .line 136
    :goto_8d
    iget-object v10, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    if-eqz v8, :cond_93

    const/4 v13, -0x1

    goto :goto_96

    :cond_93
    const v13, -0x747475

    :goto_96
    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v14, v4, v13

    const v16, 0x3ee66666    # 0.45f

    if-eqz v8, :cond_a8

    const v8, 0x3f0ccccd    # 0.55f

    goto :goto_aa

    :cond_a8
    move/from16 v8, v16

    :goto_aa
    mul-float/2addr v8, v14

    float-to-int v8, v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    iget-object v8, v0, Lcom/mcport/b173/TouchOverlay;->stroke:Landroid/graphics/Paint;

    float-to-int v10, v14

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    iget v8, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->kind:I

    const/4 v10, 0x2

    const v17, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v8, v3, :cond_198

    iget-object v8, v0, Lcom/mcport/b173/TouchOverlay;->host:Lcom/mcport/b173/TouchOverlay$Host;

    invoke-interface {v8}, Lcom/mcport/b173/TouchOverlay$Host;->prefs()Lcom/mcport/b173/Prefs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcport/b173/Prefs;->controllerLayout()Z

    move-result v8

    if-eqz v8, :cond_198

    .line 140
    iget v8, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v18, 0x3eb851ec    # 0.36f

    mul-float v8, v8, v18

    const/4 v11, 0x0

    :goto_d3
    const/4 v15, 0x4

    if-ge v11, v15, :cond_194

    const/high16 v19, -0x40800000    # -1.0f

    if-ne v11, v3, :cond_dd

    move/from16 v15, v19

    goto :goto_e3

    :cond_dd
    const/4 v15, 0x3

    if-ne v11, v15, :cond_e2

    move v15, v9

    goto :goto_e3

    :cond_e2
    const/4 v15, 0x0

    :goto_e3
    if-nez v11, :cond_e6

    goto :goto_ed

    :cond_e6
    if-ne v11, v10, :cond_eb

    move/from16 v19, v9

    goto :goto_ed

    :cond_eb
    const/16 v19, 0x0

    .line 143
    :goto_ed
    iget-object v10, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/mcport/b173/TouchOverlay;->joyKeys:[Z

    aget-boolean v6, v6, v11

    if-eqz v6, :cond_f7

    const/4 v6, -0x1

    goto :goto_fa

    :cond_f7
    const v6, -0x747475

    :goto_fa
    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/mcport/b173/TouchOverlay;->joyKeys:[Z

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_109

    const v10, 0x3f0ccccd    # 0.55f

    goto :goto_10b

    :cond_109
    move/from16 v10, v16

    :goto_10b
    mul-float/2addr v10, v14

    float-to-int v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    new-instance v6, Landroid/graphics/RectF;

    iget v10, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v12, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    mul-float/2addr v12, v15

    const v20, 0x3f28f5c3    # 0.66f

    mul-float v12, v12, v20

    add-float/2addr v10, v12

    sub-float/2addr v10, v8

    iget v12, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    mul-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v12, v3

    sub-float/2addr v12, v8

    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v13, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    mul-float/2addr v15, v13

    mul-float v15, v15, v20

    add-float/2addr v3, v15

    add-float/2addr v3, v8

    iget v13, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v15, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    mul-float v19, v19, v15

    mul-float v19, v19, v20

    add-float v13, v13, v19

    add-float/2addr v13, v8

    invoke-direct {v6, v10, v12, v3, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 145
    iget v3, v0, Lcom/mcport/b173/TouchOverlay;->dp:F

    const/high16 v10, 0x40800000    # 4.0f

    mul-float v12, v3, v10

    mul-float/2addr v3, v10

    iget-object v13, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v12, v3, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v3, v0, Lcom/mcport/b173/TouchOverlay;->dp:F

    mul-float v12, v3, v10

    mul-float/2addr v3, v10

    iget-object v10, v0, Lcom/mcport/b173/TouchOverlay;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v12, v3, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v3, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    add-float v10, v4, v17

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const-string v3, "S"

    const-string v10, "D"

    const-string v12, "W"

    const-string v13, "A"

    filled-new-array {v12, v13, v3, v10}, [Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const v12, 0x3eb33333    # 0.35f

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    iget-object v12, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v10, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    const v6, 0x3ed70a3d    # 0.42f

    const/4 v10, 0x2

    const/high16 v13, 0x437f0000    # 255.0f

    goto/16 :goto_d3

    :cond_194
    move v8, v3

    move v10, v6

    goto/16 :goto_28f

    .line 148
    :cond_198
    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->kind:I

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1e2

    .line 149
    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v9, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v10, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    iget-object v11, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    invoke-static {v1, v3, v9, v10, v11}, Lcom/mcport/b173/TouchOverlay;->sq(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v9, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v10, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    iget-object v11, v0, Lcom/mcport/b173/TouchOverlay;->stroke:Landroid/graphics/Paint;

    invoke-static {v1, v3, v9, v10, v11}, Lcom/mcport/b173/TouchOverlay;->sq(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 150
    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    if-ltz v3, :cond_1bd

    iget v3, v0, Lcom/mcport/b173/TouchOverlay;->knobX:F

    goto :goto_1bf

    :cond_1bd
    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    :goto_1bf
    iget v9, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    if-ltz v9, :cond_1c6

    iget v9, v0, Lcom/mcport/b173/TouchOverlay;->knobY:F

    goto :goto_1c8

    :cond_1c6
    iget v9, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    .line 151
    :goto_1c8
    iget-object v10, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    mul-float/2addr v14, v6

    float-to-int v6, v14

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v10, 0x3ed70a3d    # 0.42f

    mul-float/2addr v6, v10

    iget-object v7, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    invoke-static {v1, v3, v9, v6, v7}, Lcom/mcport/b173/TouchOverlay;->sq(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto/16 :goto_28f

    :cond_1e2
    const v10, 0x3ed70a3d    # 0.42f

    .line 152
    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->kind:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_250

    .line 153
    new-instance v3, Landroid/graphics/RectF;

    iget v6, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v11, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    sub-float/2addr v6, v11

    iget v11, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v13, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    iget v13, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v15, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    mul-float/2addr v15, v12

    add-float/2addr v13, v15

    iget v12, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v15, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    mul-float/2addr v15, v14

    add-float/2addr v12, v15

    invoke-direct {v3, v6, v11, v13, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 154
    iget v6, v0, Lcom/mcport/b173/TouchOverlay;->dp:F

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v12, v6, v11

    mul-float/2addr v6, v11

    iget-object v13, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v6, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v6, v0, Lcom/mcport/b173/TouchOverlay;->dp:F

    mul-float v12, v6, v11

    mul-float/2addr v6, v11

    iget-object v11, v0, Lcom/mcport/b173/TouchOverlay;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 155
    iget-object v3, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    iget v6, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v11, 0x3f8ccccd    # 1.1f

    mul-float/2addr v6, v11

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    add-float v6, v4, v17

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->label:Ljava/lang/String;

    iget v6, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v9, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v7, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v11, 0x3e6147ae    # 0.22f

    mul-float/2addr v7, v11

    add-float/2addr v9, v7

    iget-object v7, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_28f

    .line 157
    :cond_250
    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v11, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v12, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    iget-object v13, v0, Lcom/mcport/b173/TouchOverlay;->fill:Landroid/graphics/Paint;

    invoke-static {v1, v3, v11, v12, v13}, Lcom/mcport/b173/TouchOverlay;->sq(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v11, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v12, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    iget-object v13, v0, Lcom/mcport/b173/TouchOverlay;->stroke:Landroid/graphics/Paint;

    invoke-static {v1, v3, v11, v12, v13}, Lcom/mcport/b173/TouchOverlay;->sq(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 158
    iget-object v3, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    iget v11, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    mul-float/2addr v11, v6

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    add-float v6, v4, v17

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->label:Ljava/lang/String;

    iget v6, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cx:F

    iget v9, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->cy:F

    iget v7, v7, Lcom/mcport/b173/TouchOverlay$Ctl;->r:F

    const v11, 0x3e3851ec    # 0.18f

    mul-float/2addr v7, v11

    add-float/2addr v9, v7

    iget-object v7, v0, Lcom/mcport/b173/TouchOverlay;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_28f
    move v3, v8

    move v6, v10

    goto/16 :goto_5a

    :cond_293
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_44

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_26

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mcport/b173/TouchOverlay;->sx(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/mcport/b173/TouchOverlay;->syGL(F)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lorg/lwjgl/input/Mouse;->postMove(IIII)V

    return v2

    .line 295
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_44

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_43

    if-lez p1, :cond_3e

    const/16 p1, 0x78

    goto :goto_40

    :cond_3e
    const/16 p1, -0x78

    :goto_40
    invoke-static {p1}, Lorg/lwjgl/input/Mouse;->postWheel(I)V

    :cond_43
    return v2

    .line 297
    :cond_44
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 125
    invoke-direct {p0}, Lcom/mcport/b173/TouchOverlay;->layout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 174
    iget-boolean v0, p0, Lcom/mcport/b173/TouchOverlay;->editMode:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/mcport/b173/TouchOverlay;->editTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 175
    :cond_9
    invoke-direct {p0}, Lcom/mcport/b173/TouchOverlay;->state()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_11

    return v7

    .line 176
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_29

    invoke-direct {p0, p1}, Lcom/mcport/b173/TouchOverlay;->mouseTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_29
    if-eqz v0, :cond_80

    if-eq v0, v7, :cond_6e

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_56

    if-eq v0, v4, :cond_3a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_80

    const/4 v3, 0x6

    if-eq v0, v3, :cond_6e

    goto :goto_8b

    :cond_3a
    move v8, v5

    .line 182
    :goto_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v8, v0, :cond_8b

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/mcport/b173/TouchOverlay;->up(IFFIZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 180
    :cond_56
    :goto_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v5, v0, :cond_8b

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/mcport/b173/TouchOverlay;->move(IFFI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 181
    :cond_6e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, p1

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/mcport/b173/TouchOverlay;->up(IFFIZ)V

    goto :goto_8b

    .line 179
    :cond_80
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v2, v0, p1, v6}, Lcom/mcport/b173/TouchOverlay;->down(IFFI)V

    :cond_8b
    :goto_8b
    return v7
.end method

.method releaseGameplay()V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->ctls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcport/b173/TouchOverlay$Ctl;

    iget v2, v1, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    if-ltz v2, :cond_6

    invoke-direct {p0, v1}, Lcom/mcport/b173/TouchOverlay;->release(Lcom/mcport/b173/TouchOverlay$Ctl;)V

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/mcport/b173/TouchOverlay;->setJoy(ZZZZ)V

    .line 275
    iget-boolean v1, p0, Lcom/mcport/b173/TouchOverlay;->lookBreaking:Z

    if-eqz v1, :cond_2d

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getX()I

    move-result v1

    invoke-static {}, Lorg/lwjgl/input/Mouse;->getY()I

    move-result v2

    invoke-static {v0, v0, v1, v2}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    :cond_2d
    const/4 v1, -0x1

    .line 276
    iput v1, p0, Lcom/mcport/b173/TouchOverlay;->lookPointer:I

    iput-boolean v0, p0, Lcom/mcport/b173/TouchOverlay;->lookBreaking:Z

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    return-void
.end method

.method reloadPrefs()V
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/mcport/b173/TouchOverlay;->layout()V

    invoke-virtual {p0}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    return-void
.end method

.method stop()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay;->poll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method syncButtons(III)V
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 288
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :goto_9
    const/4 v4, 0x3

    if-ge v3, v4, :cond_25

    .line 289
    aget v4, v0, v3

    and-int v5, p1, v4

    if-eqz v5, :cond_14

    move v5, v2

    goto :goto_15

    :cond_14
    move v5, v1

    :goto_15
    iget v6, p0, Lcom/mcport/b173/TouchOverlay;->lastButtons:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    if-eq v5, v4, :cond_22

    invoke-static {v3, v5, p2, p3}, Lorg/lwjgl/input/Mouse;->postButton(IZII)V

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 290
    :cond_25
    iput p1, p0, Lcom/mcport/b173/TouchOverlay;->lastButtons:I

    return-void
.end method

###### Class com.mcport.b173.TouchOverlay.AnonymousClass1 (com.mcport.b173.TouchOverlay$1)
.class Lcom/mcport/b173/TouchOverlay$1;
.super Ljava/lang/Object;
.source "TouchOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcport/b173/TouchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcport/b173/TouchOverlay;


# direct methods
.method constructor <init>(Lcom/mcport/b173/TouchOverlay;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v0}, Lcom/mcport/b173/TouchOverlay;->access$000(Lcom/mcport/b173/TouchOverlay;)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1}, Lcom/mcport/b173/TouchOverlay;->access$100(Lcom/mcport/b173/TouchOverlay;)I

    move-result v1

    if-eq v0, v1, :cond_5a

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-nez v1, :cond_21

    .line 87
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1}, Lcom/mcport/b173/TouchOverlay;->access$100(Lcom/mcport/b173/TouchOverlay;)I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-virtual {v1}, Lcom/mcport/b173/TouchOverlay;->releaseGameplay()V

    :cond_21
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_3d

    .line 88
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1, v3}, Lcom/mcport/b173/TouchOverlay;->access$202(Lcom/mcport/b173/TouchOverlay;Z)Z

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1}, Lcom/mcport/b173/TouchOverlay;->access$300(Lcom/mcport/b173/TouchOverlay;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1, v3}, Lcom/mcport/b173/TouchOverlay;->access$302(Lcom/mcport/b173/TouchOverlay;Z)Z

    const/16 v1, 0x2a

    invoke-static {v1, v3, v3}, Lorg/lwjgl/input/Keyboard;->postKey(IZC)V

    :cond_3d
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_42

    goto :goto_43

    :cond_42
    move v2, v3

    .line 90
    :goto_43
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1}, Lcom/mcport/b173/TouchOverlay;->access$400(Lcom/mcport/b173/TouchOverlay;)Z

    move-result v1

    if-eq v2, v1, :cond_50

    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1, v2}, Lcom/mcport/b173/TouchOverlay;->access$500(Lcom/mcport/b173/TouchOverlay;Z)V

    .line 91
    :cond_50
    iget-object v1, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v1, v0}, Lcom/mcport/b173/TouchOverlay;->access$102(Lcom/mcport/b173/TouchOverlay;I)I

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-virtual {v0}, Lcom/mcport/b173/TouchOverlay;->invalidate()V

    .line 93
    :cond_5a
    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay$1;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-static {v0}, Lcom/mcport/b173/TouchOverlay;->access$600(Lcom/mcport/b173/TouchOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.mcport.b173.TouchOverlay.AnonymousClass2 (com.mcport.b173.TouchOverlay$2)
.class Lcom/mcport/b173/TouchOverlay$2;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TouchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcport/b173/TouchOverlay;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcport/b173/TouchOverlay;


# direct methods
.method constructor <init>(Lcom/mcport/b173/TouchOverlay;Landroid/view/View;Z)V
    .registers 4

    .line 315
    iput-object p1, p0, Lcom/mcport/b173/TouchOverlay$2;->this$0:Lcom/mcport/b173/TouchOverlay;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    const/4 p2, 0x0

    .line 316
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_11

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/mcport/b173/TouchOverlay;->typeChar(C)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .registers 5

    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x1

    .line 317
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge p2, v1, :cond_12

    const/16 v0, 0xe

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_12
    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3

    const/16 p1, 0x1c

    const/16 v0, 0xd

    .line 324
    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 320
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x43

    if-ne v0, v2, :cond_18

    const/16 p1, 0xe

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_32

    .line 321
    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_28

    const/16 p1, 0x1c

    const/16 v0, 0xd

    invoke-static {p1, v0}, Lorg/lwjgl/input/Keyboard;->postTap(IC)V

    goto :goto_32

    .line 322
    :cond_28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-lez p1, :cond_32

    int-to-char p1, p1

    invoke-static {p1}, Lcom/mcport/b173/TouchOverlay;->typeChar(C)V

    :cond_32
    :goto_32
    return v1
.end method

###### Class com.mcport.b173.TouchOverlay.Ctl (com.mcport.b173.TouchOverlay$Ctl)
.class final Lcom/mcport/b173/TouchOverlay$Ctl;
.super Ljava/lang/Object;
.source "TouchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcport/b173/TouchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ctl"
.end annotation


# instance fields
.field cx:F

.field cy:F

.field final defX:F

.field final defY:F

.field final key:Ljava/lang/String;

.field final kind:I

.field final label:Ljava/lang/String;

.field pointer:I

.field pressed:Z

.field r:F

.field final sizeDp:F

.field toggled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFI)V
    .registers 8

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/mcport/b173/TouchOverlay$Ctl;->pointer:I

    .line 37
    iput-object p1, p0, Lcom/mcport/b173/TouchOverlay$Ctl;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/mcport/b173/TouchOverlay$Ctl;->label:Ljava/lang/String;

    iput p3, p0, Lcom/mcport/b173/TouchOverlay$Ctl;->defX:F

    iput p4, p0, Lcom/mcport/b173/TouchOverlay$Ctl;->defY:F

    iput p5, p0, Lcom/mcport/b173/TouchOverlay$Ctl;->sizeDp:F

    iput p6, p0, Lcom/mcport/b173/TouchOverlay$Ctl;->kind:I

    return-void
.end method

###### Class com.mcport.b173.TouchOverlay.Host (com.mcport.b173.TouchOverlay$Host)
.class public interface abstract Lcom/mcport/b173/TouchOverlay$Host;
.super Ljava/lang/Object;
.source "TouchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcport/b173/TouchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract bridge()Lmcport/GameBridge;
.end method

.method public abstract openProfile()V
.end method

.method public abstract padActive()Z
.end method

.method public abstract prefs()Lcom/mcport/b173/Prefs;
.end method

.method public abstract surfaceH()I
.end method

.method public abstract surfaceW()I
.end method

###### Class com.mcport.b173.TouchOverlay$$ExternalSyntheticLambda0 (com.mcport.b173.TouchOverlay$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/mcport/b173/TouchOverlay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/TouchOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/TouchOverlay;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/TouchOverlay$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/TouchOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/mcport/b173/TouchOverlay$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/TouchOverlay;

    invoke-virtual {v0}, Lcom/mcport/b173/TouchOverlay;->lambda$new$0$com-mcport-b173-TouchOverlay()V

    return-void
.end method
