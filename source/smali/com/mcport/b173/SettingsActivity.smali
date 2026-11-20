###### Class com.mcport.b173.SettingsActivity (com.mcport.b173.SettingsActivity)
.class public Lcom/mcport/b173/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field private col:Landroid/widget/LinearLayout;

.field private dp:F

.field private prefs:Lcom/mcport/b173/Prefs;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcport/b173/SettingsActivity;)Lcom/mcport/b173/Prefs;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    return-object p0
.end method

.method private check(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 46
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance p1, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mcport/b173/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private slider(Ljava/lang/String;Ljava/lang/String;FFF)V
    .registers 14

    .line 48
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/SeekBar;

    invoke-direct {v7, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setMax(I)V

    sub-float v0, p3, p4

    sub-float v1, p5, p4

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "%.2f"

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance p3, Lcom/mcport/b173/SettingsActivity$1;

    move-object v0, p3

    move-object v1, p0

    move v2, p4

    move v3, p5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mcport/b173/SettingsActivity$1;-><init>(Lcom/mcport/b173/SettingsActivity;FFLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 53
    iget-object p1, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private title(Ljava/lang/String;)V
    .registers 5

    .line 45
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget p1, p0, Lcom/mcport/b173/SettingsActivity;->dp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$check$3$com-mcport-b173-SettingsActivity(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 46
    iget-object p2, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object p2, p2, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-mcport-b173-SettingsActivity(Landroid/view/View;)V
    .registers 3

    .line 25
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mcport/b173/LayoutEditorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mcport/b173/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-mcport-b173-SettingsActivity(Landroid/view/View;)V
    .registers 3

    .line 27
    iget-object p1, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {p1}, Lcom/mcport/b173/Prefs;->resetLayout()V

    const-string p1, "Layout reset"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-mcport-b173-SettingsActivity([FLandroid/widget/RadioGroup;I)V
    .registers 4

    .line 39
    iget-object p2, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    iget-object p2, p2, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    add-int/lit8 p3, p3, -0x64

    aget p1, p1, p3

    const-string p3, "renderScale"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/mcport/b173/Prefs;

    invoke-direct {p1, p0}, Lcom/mcport/b173/Prefs;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {p0}, Lcom/mcport/b173/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/mcport/b173/SettingsActivity;->dp:F

    .line 15
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 16
    iget v2, p0, Lcom/mcport/b173/SettingsActivity;->dp:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const-string v0, "Touch controls"

    .line 17
    invoke-direct {p0, v0}, Lcom/mcport/b173/SettingsActivity;->title(Ljava/lang/String;)V

    const-string v3, "Control size"

    const-string v4, "ctlScale"

    .line 18
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->controlScale()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x40000000    # 2.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mcport/b173/SettingsActivity;->slider(Ljava/lang/String;Ljava/lang/String;FFF)V

    const-string v9, "Control opacity"

    const-string v10, "ctlOpacity"

    .line 19
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->controlOpacity()F

    move-result v11

    const v12, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/mcport/b173/SettingsActivity;->slider(Ljava/lang/String;Ljava/lang/String;FFF)V

    const-string v3, "Look sensitivity (touch)"

    const-string v4, "lookSens"

    .line 20
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->lookSensitivity()F

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x40400000    # 3.0f

    invoke-direct/range {v2 .. v7}, Lcom/mcport/b173/SettingsActivity;->slider(Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 21
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->tapToUse()Z

    move-result v0

    const-string v2, "Tap the view to use/place, hold to break"

    const-string v3, "tapToUse"

    invoke-direct {p0, v2, v3, v0}, Lcom/mcport/b173/SettingsActivity;->check(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->showAttackUse()Z

    move-result v0

    const-string v2, "Show Break and Use buttons"

    const-string v3, "showAttackUse"

    invoke-direct {p0, v2, v3, v0}, Lcom/mcport/b173/SettingsActivity;->check(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->controllerLayout()Z

    move-result v0

    const-string v2, "D-pad layout instead of joystick"

    const-string v3, "controllerLayout"

    invoke-direct {p0, v2, v3, v0}, Lcom/mcport/b173/SettingsActivity;->check(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "Edit control positions..."

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 25
    new-instance v3, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mcport/b173/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 26
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "Reset control positions"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 27
    new-instance v3, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mcport/b173/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "Game controller"

    .line 28
    invoke-direct {p0, v0}, Lcom/mcport/b173/SettingsActivity;->title(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->hideTouchWithController()Z

    move-result v0

    const-string v3, "Hide touch controls while a controller is in use"

    const-string v4, "hideTouchCtl"

    invoke-direct {p0, v3, v4, v0}, Lcom/mcport/b173/SettingsActivity;->check(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "Controller look speed"

    const-string v7, "padLook"

    .line 30
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->controllerLookSpeed()F

    move-result v8

    const v9, 0x3e99999a    # 0.3f

    const/high16 v10, 0x40400000    # 3.0f

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/mcport/b173/SettingsActivity;->slider(Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 31
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "Left stick: move (W/A/S/D)   Right stick: look   A: jump   B: sneak   X: inventory   Y: drop\nR1/R2: attack/break   L1/L2: use/place   D-pad left/right: hotbar   D-pad up: view (F5)   D-pad down: chat\nStart: pause (Esc)   Select: debug (F3). In menus the sticks move the pointer, A clicks, B goes back."

    .line 32
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v4, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "Display"

    .line 34
    invoke-direct {p0, v0}, Lcom/mcport/b173/SettingsActivity;->title(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v0}, Lcom/mcport/b173/Prefs;->vsync()Z

    move-result v0

    const-string v4, "V-Sync (limit to the display refresh rate)"

    const-string v5, "vsync"

    invoke-direct {p0, v4, v5, v0}, Lcom/mcport/b173/SettingsActivity;->check(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "Render resolution"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_18e

    const-string v6, "75%"

    const-string v7, "50%"

    const-string v8, "Native (100%)"

    filled-new-array {v8, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    :goto_13d
    if-ge v2, v4, :cond_16b

    .line 38
    new-instance v7, Landroid/widget/RadioButton;

    invoke-direct {v7, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v8, v2, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/mcport/b173/SettingsActivity;->prefs:Lcom/mcport/b173/Prefs;

    invoke-virtual {v8}, Lcom/mcport/b173/Prefs;->renderScale()F

    move-result v8

    aget v9, v5, v2

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3c23d70a    # 0.01f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_168

    invoke-virtual {v7, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_168
    add-int/lit8 v2, v2, 0x1

    goto :goto_13d

    .line 39
    :cond_16b
    new-instance v1, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v5}, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mcport/b173/SettingsActivity;[F)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "Render distance, graphics quality, smooth lighting, GUI scale and key bindings are the original game options (Options... in the game menu)."

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/mcport/b173/SettingsActivity;->col:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/mcport/b173/SettingsActivity;->setContentView(Landroid/view/View;)V

    return-void

    :array_18e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
    .end array-data
.end method

###### Class com.mcport.b173.SettingsActivity.AnonymousClass1 (com.mcport.b173.SettingsActivity$1)
.class Lcom/mcport/b173/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcport/b173/SettingsActivity;->slider(Ljava/lang/String;Ljava/lang/String;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcport/b173/SettingsActivity;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$max:F

.field final synthetic val$min:F

.field final synthetic val$t:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcport/b173/SettingsActivity;FFLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/mcport/b173/SettingsActivity$1;->this$0:Lcom/mcport/b173/SettingsActivity;

    iput p2, p0, Lcom/mcport/b173/SettingsActivity$1;->val$min:F

    iput p3, p0, Lcom/mcport/b173/SettingsActivity$1;->val$max:F

    iput-object p4, p0, Lcom/mcport/b173/SettingsActivity$1;->val$t:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mcport/b173/SettingsActivity$1;->val$label:Ljava/lang/String;

    iput-object p6, p0, Lcom/mcport/b173/SettingsActivity$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .line 51
    iget p1, p0, Lcom/mcport/b173/SettingsActivity$1;->val$min:F

    iget p3, p0, Lcom/mcport/b173/SettingsActivity$1;->val$max:F

    sub-float/2addr p3, p1

    int-to-float p2, p2

    mul-float/2addr p3, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    iget-object p2, p0, Lcom/mcport/b173/SettingsActivity$1;->val$t:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity$1;->val$label:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mcport/b173/SettingsActivity$1;->this$0:Lcom/mcport/b173/SettingsActivity;

    invoke-static {p2}, Lcom/mcport/b173/SettingsActivity;->access$000(Lcom/mcport/b173/SettingsActivity;)Lcom/mcport/b173/Prefs;

    move-result-object p2

    iget-object p2, p2, Lcom/mcport/b173/Prefs;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/mcport/b173/SettingsActivity$1;->val$key:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

###### Class com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda0 (com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/SettingsActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/SettingsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/SettingsActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/SettingsActivity;->lambda$onCreate$0$com-mcport-b173-SettingsActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda1 (com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/SettingsActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/SettingsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/SettingsActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/SettingsActivity;->lambda$onCreate$1$com-mcport-b173-SettingsActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda2 (com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/SettingsActivity;

.field public final synthetic f$1:[F


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/SettingsActivity;[F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/SettingsActivity;

    iput-object p2, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda2;->f$1:[F

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5

    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/SettingsActivity;

    iget-object v1, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda2;->f$1:[F

    invoke-virtual {v0, v1, p1, p2}, Lcom/mcport/b173/SettingsActivity;->lambda$onCreate$2$com-mcport-b173-SettingsActivity([FLandroid/widget/RadioGroup;I)V

    return-void
.end method

###### Class com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda3 (com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/SettingsActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/SettingsActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/SettingsActivity;

    iput-object p2, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/SettingsActivity;

    iget-object v1, p0, Lcom/mcport/b173/SettingsActivity$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mcport/b173/SettingsActivity;->lambda$check$3$com-mcport-b173-SettingsActivity(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
