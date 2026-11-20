###### Class com.mcport.b173.LauncherActivity (com.mcport.b173.LauncherActivity)
.class public Lcom/mcport/b173/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field static final ACTION_PROFILE:Ljava/lang/String; = "com.mcport.b173.PROFILE"

.field private static final REQ_BACKUP:I = 0xc

.field private static final REQ_RESTORE:I = 0xd

.field private static final REQ_SKIN:I = 0xb


# instance fields
.field private dp:F

.field private name:Landroid/widget/EditText;

.field private prefs:Lcom/mcport/b173/Prefs;

.field private preview:Landroid/widget/ImageView;

.field private selectedServer:I

.field private serverAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/mcport/b173/Prefs$Server;",
            ">;"
        }
    .end annotation
.end field

.field private serverList:Landroid/widget/ListView;

.field private servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mcport/b173/Prefs$Server;",
            ">;"
        }
    .end annotation
.end field

.field private skinSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    return-void
.end method

.method static synthetic access$000(Lcom/mcport/b173/LauncherActivity;)Lcom/mcport/b173/Prefs;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mcport/b173/LauncherActivity;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->updatePreview()V

    return-void
.end method

.method private build()V
    .registers 13

    .line 48
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41900000    # 18.0f

    iget v4, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 52
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "Minecraft Beta 1.7.3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "Android port - settings. The game itself starts unchanged when you press Play."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v4, "Play"

    invoke-direct {p0, v4, v3}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    const/high16 v6, 0x42800000    # 64.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v7, -0x1

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "Username"

    .line 57
    invoke-direct {p0, v3}, Lcom/mcport/b173/LauncherActivity;->header(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mcport/b173/LauncherActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity;->name:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v4}, Lcom/mcport/b173/Prefs;->username()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity;->name:Landroid/widget/EditText;

    new-array v4, v2, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x10

    invoke-direct {v5, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity;->name:Landroid/widget/EditText;

    const v4, 0x80001

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "1-16 characters: letters, digits and _ . Used in single-player and sent to servers (offline-mode servers only)."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "Skin"

    .line 63
    invoke-direct {p0, v3}, Lcom/mcport/b173/LauncherActivity;->header(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mcport/b173/LauncherActivity;->preview:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v5, p0, Lcom/mcport/b173/LauncherActivity;->preview:Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    mul-float/2addr v6, v10

    float-to-int v6, v6

    const/high16 v11, 0x43000000    # 128.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v9, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v6, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v5, v6, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    new-instance v6, Landroid/widget/Spinner;

    invoke-direct {v6, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mcport/b173/LauncherActivity;->skinSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v8, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v9, "Import PNG..."

    invoke-direct {p0, v9, v8}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v9, "Remove"

    invoke-direct {p0, v9, v8}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "Use skin files you are allowed to use (for example your own). Skins are stored on this device only and shown on your own player."

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->refreshSkins()V

    const-string v3, "Multiplayer servers"

    .line 73
    invoke-direct {p0, v3}, Lcom/mcport/b173/LauncherActivity;->header(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v3}, Lcom/mcport/b173/Prefs;->servers()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    .line 75
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mcport/b173/LauncherActivity;->serverList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 76
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    iget-object v5, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    invoke-direct {v2, p0, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/mcport/b173/LauncherActivity;->serverAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity;->serverList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v2, p0, Lcom/mcport/b173/LauncherActivity;->serverList:Landroid/widget/ListView;

    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda10;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/mcport/b173/LauncherActivity;->serverList:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    iget v6, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-direct {v3, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 80
    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda11;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v5, "Join"

    invoke-direct {p0, v5, v3}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda12;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v5, "Add"

    invoke-direct {p0, v5, v3}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda13;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v5, "Edit"

    invoke-direct {p0, v5, v3}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda14;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v5, "Delete"

    invoke-direct {p0, v5, v3}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "Beta 1.7.3 protocol (version 14). Servers that require Mojang authentication cannot be joined: the legacy login service no longer exists and this port does not bypass it. The original \"Multiplayer\" menu inside the game also works."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "More"

    .line 87
    invoke-direct {p0, v2}, Lcom/mcport/b173/LauncherActivity;->header(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v2, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda15;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v3, "Resource packs..."

    invoke-direct {p0, v3, v2}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v2, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda16;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v3, "Touch controls, controller and display..."

    invoke-direct {p0, v3, v2}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->row()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 91
    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v4, "Back up worlds..."

    invoke-direct {p0, v4, v3}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    .line 92
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    const-string v4, "Restore worlds..."

    invoke-direct {p0, v4, v3}, Lcom/mcport/b173/LauncherActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->weight()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v3, "Start the game directly when the app opens (this screen returns via Profile on the title screen, or after Quit Game)"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v3}, Lcom/mcport/b173/Prefs;->skipLauncher()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mcport/b173/LauncherActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\nUnofficial port for personal use. Requires the original Minecraft Beta 1.7.3 game files, which are copyrighted by Mojang AB. Not affiliated with Mojang or Microsoft. Version 1.0.0-b1.7.3"

    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41300000    # 11.0f

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/mcport/b173/LauncherActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 4

    .line 43
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private displayName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/mcport/b173/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_display_name"

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_37

    if-eqz p1, :cond_32

    :try_start_16
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_26

    if-eqz p1, :cond_25

    :try_start_22
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_37

    :cond_25
    return-object v0

    :catchall_26
    move-exception v0

    if-eqz p1, :cond_31

    :try_start_29
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p1

    :try_start_2e
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw v0

    :cond_32
    if-eqz p1, :cond_37

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    const/4 p1, 0x0

    return-object p1
.end method

.method private editServer(I)V
    .registers 11

    .line 166
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 167
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "Server name"

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/widget/EditText;->setSingleLine()V

    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "Address (host or host:port)"

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/EditText;->setSingleLine()V

    const/16 v1, 0x11

    .line 168
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz p1, :cond_65

    .line 169
    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcport/b173/Prefs$Server;

    iget-object v2, v1, Lcom/mcport/b173/Prefs$Server;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v2, v1, Lcom/mcport/b173/Prefs$Server;->port:I

    const/16 v3, 0x63dd

    if-ne v2, v3, :cond_4a

    iget-object v1, v1, Lcom/mcport/b173/Prefs$Server;->host:Ljava/lang/String;

    goto :goto_62

    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/mcport/b173/Prefs$Server;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/mcport/b173/Prefs$Server;->port:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_62
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_65
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-gez p1, :cond_75

    const-string v2, "Add server"

    goto :goto_77

    :cond_75
    const-string v2, "Edit server"

    :goto_77
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Save"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mcport/b173/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private header(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .line 42
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget p1, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private pickSkin()V
    .registers 3

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/mcport/b173/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private play(Ljava/lang/String;I)V
    .registers 5

    .line 111
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->saveName()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 112
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcport/b173/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1a

    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "port"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/mcport/b173/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshSkins()V
    .registers 7

    .line 119
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->skinFiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Default (char.png)"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 121
    :cond_2d
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity;->skinSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 122
    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v1}, Lcom/mcport/b173/Prefs;->skin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/mcport/b173/LauncherActivity;->skinSpinner:Landroid/widget/Spinner;

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 123
    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity;->skinSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/mcport/b173/LauncherActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/mcport/b173/LauncherActivity$1;-><init>(Lcom/mcport/b173/LauncherActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 126
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->updatePreview()V

    return-void
.end method

.method private removeSkin()V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->skin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->skinsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object v0, v0, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "skin"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->refreshSkins()V

    return-void
.end method

.method private row()Landroid/widget/LinearLayout;
    .registers 3

    .line 44
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method private saveName()Z
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Za-z0-9_]{1,16}"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->name:Landroid/widget/EditText;

    const-string v1, "Use 1-16 letters, digits or _"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_1f
    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object v1, v1, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0
.end method

.method private saveServers()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mcport/b173/Prefs;->setServers(Ljava/util/List;)V

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->serverAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private skinFiles()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {p0}, Lcom/mcport/b173/Prefs;->skinsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_26

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_26
    return-object v1
.end method

.method private toast(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updatePreview()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->skin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p0}, Lcom/mcport/b173/SkinUtil;->defaultSkin(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1e

    :cond_11
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->skinsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mcport/b173/SkinUtil;->load(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1e
    if-nez v0, :cond_24

    .line 130
    invoke-static {p0}, Lcom/mcport/b173/SkinUtil;->defaultSkin(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_24
    const/16 v1, 0x8

    .line 131
    invoke-static {v0, v1}, Lcom/mcport/b173/SkinUtil;->preview(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private weight()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method private worldBackup(ZLandroid/net/Uri;)V
    .registers 6

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->dataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "saves"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 136
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mcport/b173/LauncherActivity;ZLandroid/net/Uri;Ljava/io/File;)V

    const-string p1, "world-backup"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$build$0$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 3

    .line 0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/mcport/b173/LauncherActivity;->play(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$build$1$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->pickSkin()V

    return-void
.end method

.method synthetic lambda$build$10$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 4

    .line 91
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "application/zip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v1, "minecraft-b173-worlds.zip"

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/mcport/b173/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$build$11$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 3

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/mcport/b173/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$build$12$com-mcport-b173-LauncherActivity(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 96
    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object p1, p1, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "skipLauncher"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$build$2$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->removeSkin()V

    return-void
.end method

.method synthetic lambda$build$3$com-mcport-b173-LauncherActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 77
    iput p3, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    return-void
.end method

.method synthetic lambda$build$4$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 3

    .line 80
    iget p1, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    if-ltz p1, :cond_1e

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    iget v0, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mcport/b173/Prefs$Server;

    iget-object v0, p1, Lcom/mcport/b173/Prefs$Server;->host:Ljava/lang/String;

    iget p1, p1, Lcom/mcport/b173/Prefs$Server;->port:I

    invoke-direct {p0, v0, p1}, Lcom/mcport/b173/LauncherActivity;->play(Ljava/lang/String;I)V

    goto :goto_23

    :cond_1e
    const-string p1, "Select a server first"

    invoke-direct {p0, p1}, Lcom/mcport/b173/LauncherActivity;->toast(Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method synthetic lambda$build$5$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, -0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/mcport/b173/LauncherActivity;->editServer(I)V

    return-void
.end method

.method synthetic lambda$build$6$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 2

    .line 82
    iget p1, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    if-ltz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/mcport/b173/LauncherActivity;->editServer(I)V

    :cond_7
    return-void
.end method

.method synthetic lambda$build$7$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 3

    .line 83
    iget p1, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    if-ltz p1, :cond_1e

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    iget v0, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lcom/mcport/b173/LauncherActivity;->selectedServer:I

    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity;->serverList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->clearChoices()V

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->saveServers()V

    :cond_1e
    return-void
.end method

.method synthetic lambda$build$8$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 3

    .line 88
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mcport/b173/ResourcePackActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mcport/b173/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$build$9$com-mcport-b173-LauncherActivity(Landroid/view/View;)V
    .registers 3

    .line 89
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mcport/b173/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mcport/b173/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$editServer$15$com-mcport-b173-LauncherActivity(Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/app/AlertDialog;Landroid/view/View;)V
    .registers 8

    .line 173
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/mcport/b173/Prefs;->parseAddress(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_14

    const-string p2, "Enter host or host:port (port 1-65535)"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 174
    :cond_14
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_28

    const-string p1, "Minecraft Server"

    .line 175
    :cond_28
    new-instance p2, Lcom/mcport/b173/Prefs$Server;

    const/4 v0, 0x0

    aget-object v0, p5, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p5, p5, v1

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-direct {p2, p1, v0, p5}, Lcom/mcport/b173/Prefs$Server;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity;->servers:Ljava/util/List;

    if-gez p3, :cond_43

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_43
    invoke-interface {p1, p3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_46
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->saveServers()V

    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$editServer$16$com-mcport-b173-LauncherActivity(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/content/DialogInterface;)V
    .registers 13

    .line 0
    const/4 p5, -0x1

    .line 172
    invoke-virtual {p1, p5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p5

    new-instance v6, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mcport/b173/LauncherActivity;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/app/AlertDialog;)V

    invoke-virtual {p5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$worldBackup$13$com-mcport-b173-LauncherActivity(ZLjava/lang/String;)V
    .registers 4

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_a

    const-string p1, "Back up worlds"

    goto :goto_c

    :cond_a
    const-string p1, "Restore worlds"

    :goto_c
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$worldBackup$14$com-mcport-b173-LauncherActivity(ZLandroid/net/Uri;Ljava/io/File;)V
    .registers 6

    .line 0
    const-string v0, "Backed up "

    if-eqz p1, :cond_33

    .line 139
    :try_start_4
    invoke-virtual {p0}, Lcom/mcport/b173/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_52

    :try_start_c
    invoke-static {p3, p2}, Lcom/mcport/b173/WorldBackup;->export(Ljava/io/File;Ljava/io/OutputStream;)I

    move-result p3
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_27

    if-eqz p2, :cond_15

    :try_start_12
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " world(s)."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_52

    goto :goto_6d

    :catchall_27
    move-exception p3

    if-eqz p2, :cond_32

    :try_start_2a
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p2

    :try_start_2f
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw p3

    .line 140
    :cond_33
    invoke-virtual {p0}, Lcom/mcport/b173/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_52

    :try_start_3b
    invoke-static {p3, p2}, Lcom/mcport/b173/WorldBackup;->restore(Ljava/io/File;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_46

    if-eqz p2, :cond_44

    :try_start_41
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_52

    :cond_44
    move-object p2, p3

    goto :goto_6d

    :catchall_46
    move-exception p3

    if-eqz p2, :cond_51

    :try_start_49
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p2

    :try_start_4e
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw p3
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception p2

    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_5d

    const-string v0, "Backup failed: "

    goto :goto_5f

    :cond_5d
    const-string v0, "Restore failed: "

    :goto_5f
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 142
    :goto_6d
    new-instance p3, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, p2}, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mcport/b173/LauncherActivity;ZLjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/mcport/b173/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10d

    if-eqz p3, :cond_10d

    .line 147
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_d

    goto/16 :goto_10d

    :cond_d
    const/4 p2, 0x1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_102

    const/16 v1, 0xd

    if-ne p1, v1, :cond_18

    goto/16 :goto_102

    :cond_18
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1d

    return-void

    .line 150
    :cond_1d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mcport/b173/LauncherActivity;->displayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "skin"

    if-nez p3, :cond_2a

    move-object p3, v0

    :cond_2a
    const-string v1, "\\.png$"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "[^A-Za-z0-9_ -]"

    const-string v2, "_"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    move-object p3, v0

    .line 151
    :cond_41
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->skinsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    :goto_5c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_84

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->skinsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v2, p2

    goto :goto_5c

    .line 152
    :cond_84
    :try_start_84
    invoke-virtual {p0}, Lcom/mcport/b173/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_e8

    .line 153
    :try_start_8c
    invoke-static {p1, v1}, Lcom/mcport/b173/SkinUtil;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-static {v1}, Lcom/mcport/b173/SkinUtil;->load(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/mcport/b173/SkinUtil;->validate(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_bb

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Skin not imported"

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "OK"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_b5
    .catchall {:try_start_8c .. :try_end_b5} :catchall_dc

    if-eqz p1, :cond_ba

    .line 156
    :try_start_b7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_e8

    :cond_ba
    return-void

    .line 155
    :cond_bb
    :try_start_bb
    iget-object p2, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object p2, p2, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->refreshSkins()V

    const-string p2, "Skin imported"

    invoke-direct {p0, p2}, Lcom/mcport/b173/LauncherActivity;->toast(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_bb .. :try_end_d6} :catchall_dc

    if-eqz p1, :cond_101

    .line 156
    :try_start_d8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_e8

    goto :goto_101

    :catchall_dc
    move-exception p2

    if-eqz p1, :cond_e7

    .line 152
    :try_start_df
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_e7

    :catchall_e3
    move-exception p1

    :try_start_e4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e7
    :goto_e7
    throw p2
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e8} :catch_e8

    :catch_e8
    move-exception p1

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not read file: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mcport/b173/LauncherActivity;->toast(Ljava/lang/String;)V

    :cond_101
    :goto_101
    return-void

    :cond_102
    :goto_102
    if-ne p1, v0, :cond_105

    goto :goto_106

    :cond_105
    const/4 p2, 0x0

    .line 148
    :goto_106
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mcport/b173/LauncherActivity;->worldBackup(ZLandroid/net/Uri;)V

    :cond_10d
    :goto_10d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/mcport/b173/Prefs;

    invoke-direct {v0, p0}, Lcom/mcport/b173/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {p0}, Lcom/mcport/b173/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mcport/b173/LauncherActivity;->dp:F

    .line 37
    invoke-direct {p0}, Lcom/mcport/b173/LauncherActivity;->build()V

    if-nez p1, :cond_44

    .line 39
    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {p1}, Lcom/mcport/b173/Prefs;->skipLauncher()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object p1, p1, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lcom/mcport/b173/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcport/b173/LauncherActivity;->play(Ljava/lang/String;I)V

    :cond_44
    return-void
.end method

###### Class com.mcport.b173.LauncherActivity.AnonymousClass1 (com.mcport.b173.LauncherActivity$1)
.class Lcom/mcport/b173/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcport/b173/LauncherActivity;->refreshSkins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcport/b173/LauncherActivity;

.field final synthetic val$files:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcport/b173/LauncherActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$1;->this$0:Lcom/mcport/b173/LauncherActivity;

    iput-object p2, p0, Lcom/mcport/b173/LauncherActivity$1;->val$files:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 124
    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity$1;->this$0:Lcom/mcport/b173/LauncherActivity;

    invoke-static {p1}, Lcom/mcport/b173/LauncherActivity;->access$000(Lcom/mcport/b173/LauncherActivity;)Lcom/mcport/b173/Prefs;

    move-result-object p1

    iget-object p1, p1, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-nez p3, :cond_11

    const-string p2, ""

    goto :goto_1b

    :cond_11
    iget-object p2, p0, Lcom/mcport/b173/LauncherActivity$1;->val$files:Ljava/util/List;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_1b
    const-string p3, "skin"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/mcport/b173/LauncherActivity$1;->this$0:Lcom/mcport/b173/LauncherActivity;

    invoke-static {p1}, Lcom/mcport/b173/LauncherActivity;->access$100(Lcom/mcport/b173/LauncherActivity;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda0 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/LauncherActivity;

    iput-object p2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iput p5, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 8

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/LauncherActivity;

    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iget v4, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mcport/b173/LauncherActivity;->lambda$editServer$16$com-mcport-b173-LauncherActivity(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/content/DialogInterface;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda1 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/app/AlertDialog;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/LauncherActivity;

    iput-object p2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput p4, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$4:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/LauncherActivity;

    iget-object v1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget v3, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda1;->f$4:Landroid/app/AlertDialog;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mcport/b173/LauncherActivity;->lambda$editServer$15$com-mcport-b173-LauncherActivity(Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda10 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda10;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda10;->f$0:Lcom/mcport/b173/LauncherActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mcport/b173/LauncherActivity;->lambda$build$3$com-mcport-b173-LauncherActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda11 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda11;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda11;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$4$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda12 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda12;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda12;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$5$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda13 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda13;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda13;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$6$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda14 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda14;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda14;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$7$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda15 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda15;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda15;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$8$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda16 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda16;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda16;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$9$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda2 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/LauncherActivity;

    iput-boolean p2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/LauncherActivity;

    iget-boolean v1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mcport/b173/LauncherActivity;->lambda$worldBackup$13$com-mcport-b173-LauncherActivity(ZLjava/lang/String;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda3 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;ZLandroid/net/Uri;Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/LauncherActivity;

    iput-boolean p2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$2:Landroid/net/Uri;

    iput-object p4, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/LauncherActivity;

    iget-boolean v1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$2:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda3;->f$3:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcport/b173/LauncherActivity;->lambda$worldBackup$14$com-mcport-b173-LauncherActivity(ZLandroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda4 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda4;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda4;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$0$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda5 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda5;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda5;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$10$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda6 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda6;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda6;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$11$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda7 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda7;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda7;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mcport/b173/LauncherActivity;->lambda$build$12$com-mcport-b173-LauncherActivity(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda8 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda8;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda8;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$1$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda9 (com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/LauncherActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda9;->f$0:Lcom/mcport/b173/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/LauncherActivity$$ExternalSyntheticLambda9;->f$0:Lcom/mcport/b173/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/LauncherActivity;->lambda$build$2$com-mcport-b173-LauncherActivity(Landroid/view/View;)V

    return-void
.end method
