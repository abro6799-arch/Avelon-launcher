###### Class com.mcport.b173.ResourcePackActivity (com.mcport.b173.ResourcePackActivity)
.class public Lcom/mcport/b173/ResourcePackActivity;
.super Landroid/app/Activity;
.source "ResourcePackActivity.java"


# static fields
.field private static final REQ:I = 0x15


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dp:F

.field private fromGame:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    return-void
.end method

.method private confirmDelete(Ljava/lang/String;)V
    .registers 5

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mcport/b173/ResourcePackActivity;Ljava/lang/String;)V

    const-string p1, "Delete"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private dataDir()Ljava/io/File;
    .registers 2

    .line 52
    invoke-static {p0}, Lcom/mcport/b173/Prefs;->dataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private displayName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/mcport/b173/ResourcePackActivity;->getContentResolver()Landroid/content/ContentResolver;

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

.method private pick()V
    .registers 5

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "application/x-zip-compressed"

    const-string v2, "application/octet-stream"

    const-string v3, "application/zip"

    .line 73
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/mcport/b173/ResourcePackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private refresh()V
    .registers 9

    .line 54
    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    const-string v1, "Default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->packsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 55
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, v0

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_34

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 56
    :cond_34
    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 57
    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->dataDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "skin"

    invoke-static {v0, v3}, Lcom/mcport/b173/FirstRun;->readOption(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    goto :goto_50

    :cond_46
    iget-object v3, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_50
    if-eqz v0, :cond_57

    if-nez v2, :cond_57

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    :cond_57
    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->list:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method private select(I)V
    .registers 7

    const-string v0, "Selected "

    .line 62
    iget-boolean v1, p0, Lcom/mcport/b173/ResourcePackActivity;->fromGame:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    const-string p1, "Select packs in the game\'s own texture pack menu"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->refresh()V

    return-void

    .line 63
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->dataDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "skin"

    iget-object v4, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/mcport/b173/FirstRun;->writeOption(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2a

    const-string p1, "Default textures selected"

    goto :goto_3e

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3e
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_45} :catch_46

    goto :goto_61

    :catch_46
    move-exception p1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not save: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_61
    return-void
.end method

.method private show(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

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

.method static validate(Ljava/io/File;)Ljava/lang/String;
    .registers 17

    const-string v0, "gui/items.png"

    const-string v1, "terrain.png"

    .line 92
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    const-string v0, "The file is empty."

    return-object v0

    .line 93
    :cond_11
    :try_start_11
    new-instance v2, Ljava/util/zip/ZipFile;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_171

    .line 94
    :try_start_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0xa

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    const-string v8, "gui/gui.png"

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const-string v8, "pack.txt"

    const/4 v9, 0x3

    aput-object v8, v5, v9

    const-string v8, "pack.png"

    const/4 v9, 0x4

    aput-object v8, v5, v9

    const-string v8, "mob/char.png"

    const/4 v9, 0x5

    aput-object v8, v5, v9

    const-string v8, "font/default.png"

    const/4 v10, 0x6

    aput-object v8, v5, v10

    const-string v8, "gui/background.png"

    const/4 v10, 0x7

    aput-object v8, v5, v10

    const-string v8, "particles.png"

    const/16 v10, 0x8

    aput-object v8, v5, v10

    const-string v8, "environment/clouds.png"

    const/16 v10, 0x9

    aput-object v8, v5, v10

    .line 96
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    move v10, v6

    move v11, v10

    :goto_57
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_119

    .line 97
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/zip/ZipEntry;

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "assets/"

    .line 98
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_78

    const-string v15, "pack.mcmeta"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_79

    :cond_78
    move v11, v7

    :cond_79
    move v15, v6

    :goto_7a
    if-ge v15, v4, :cond_8a

    .line 99
    aget-object v4, v5, v15

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    move v10, v7

    :cond_85
    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0xa

    goto :goto_7a

    .line 100
    :cond_8a
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_115

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v15, ".png"

    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 101
    invoke-virtual {v2, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_a0
    .catchall {:try_start_18 .. :try_end_a0} :catchall_165

    .line 102
    :try_start_a0
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 103
    invoke-static {v4, v13, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_b1

    .line 104
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 106
    :cond_b1
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bd

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cc

    :cond_bd
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/16 v15, 0x100

    if-ne v13, v15, :cond_d5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-eq v13, v15, :cond_cc

    goto :goto_d5

    .line 108
    :cond_cc
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_cf
    .catchall {:try_start_a0 .. :try_end_cf} :catchall_107

    :goto_cf
    if-eqz v4, :cond_115

    .line 110
    :try_start_d1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_165

    goto :goto_115

    .line 107
    :cond_d5
    :goto_d5
    :try_start_d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Beta 1.7.3 only supports 16x packs (256x256 terrain.png / items.png); HD packs need mods that this faithful port does not include."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_fe
    .catchall {:try_start_d5 .. :try_end_fe} :catchall_107

    if-eqz v4, :cond_103

    .line 110
    :try_start_100
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_165

    .line 116
    :cond_103
    :try_start_103
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_171

    return-object v0

    :catchall_107
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_114

    .line 101
    :try_start_10b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10f

    goto :goto_114

    :catchall_10f
    move-exception v0

    move-object v3, v0

    :try_start_111
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_114
    :goto_114
    throw v1

    :cond_115
    :goto_115
    const/16 v4, 0xa

    goto/16 :goto_57

    :cond_119
    if-nez v10, :cond_126

    if-eqz v11, :cond_120

    const-string v0, "This is a resource pack for newer Minecraft versions (assets/ folder, pack.mcmeta). Beta 1.7.3 cannot use it."

    goto :goto_122

    :cond_120
    const-string v0, "No Beta texture-pack files found (expected e.g. terrain.png, gui/items.png or pack.txt at the top level of the zip)."
    :try_end_122
    .catchall {:try_start_111 .. :try_end_122} :catchall_165

    .line 116
    :goto_122
    :try_start_122
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_171

    return-object v0

    .line 114
    :cond_126
    :try_start_126
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_161

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corrupt or unsupported images in the pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_152

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v6, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_156

    :cond_152
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15d
    .catchall {:try_start_126 .. :try_end_15d} :catchall_165

    .line 116
    :try_start_15d
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    :cond_161
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_164} :catch_171

    return-object v13

    :catchall_165
    move-exception v0

    move-object v1, v0

    .line 93
    :try_start_167
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_16b

    goto :goto_170

    :catchall_16b
    move-exception v0

    move-object v2, v0

    :try_start_16d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_170
    throw v1
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_171} :catch_171

    :catch_171
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid zip file ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$confirmDelete$5$com-mcport-b173-ResourcePackActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 68
    new-instance p2, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->packsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 69
    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->dataDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "skin"

    invoke-static {p2, p3}, Lcom/mcport/b173/FirstRun;->readOption(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    :try_start_1c
    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->dataDir()Ljava/io/File;

    move-result-object p1

    const-string p2, "Default"

    invoke-static {p1, p3, p2}, Lcom/mcport/b173/FirstRun;->writeOption(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_25} :catch_25

    .line 70
    :catch_25
    :cond_25
    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->refresh()V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-mcport-b173-ResourcePackActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 40
    invoke-direct {p0, p3}, Lcom/mcport/b173/ResourcePackActivity;->select(I)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-mcport-b173-ResourcePackActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6

    .line 0
    if-lez p3, :cond_d

    .line 41
    iget-object p1, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mcport/b173/ResourcePackActivity;->confirmDelete(Ljava/lang/String;)V

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$2$com-mcport-b173-ResourcePackActivity(Landroid/view/View;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->pick()V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-mcport-b173-ResourcePackActivity(Landroid/view/View;)V
    .registers 3

    .line 45
    iget-object p1, p0, Lcom/mcport/b173/ResourcePackActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    if-lez p1, :cond_13

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mcport/b173/ResourcePackActivity;->confirmDelete(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method synthetic lambda$onCreate$4$com-mcport-b173-ResourcePackActivity(Landroid/view/View;)V
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/mcport/b173/ResourcePackActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const-string v0, "Import failed"

    const/16 v1, 0x15

    if-ne p1, v1, :cond_e2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_e2

    if-eqz p3, :cond_e2

    .line 76
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_13

    goto/16 :goto_e2

    .line 77
    :cond_13
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mcport/b173/ResourcePackActivity;->displayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1f

    const-string p2, "pack.zip"

    :cond_1f
    const-string p3, "[\\\\/:*?\"<>|]"

    const-string v1, "_"

    .line 78
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string v1, ".zip"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_42

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    :cond_42
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mcport/b173/ResourcePackActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "import.zip"

    invoke-direct {p3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    :try_start_4d
    invoke-virtual {p0}, Lcom/mcport/b173/ResourcePackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_cc

    :try_start_55
    invoke-static {p1, p3}, Lcom/mcport/b173/SkinUtil;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_c0

    if-eqz p1, :cond_5d

    :try_start_5a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_cc

    .line 82
    :cond_5d
    invoke-static {p3}, Lcom/mcport/b173/ResourcePackActivity;->validate(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 83
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    const-string p2, "Pack not imported"

    invoke-direct {p0, p2, p1}, Lcom/mcport/b173/ResourcePackActivity;->show(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_6c
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/mcport/b173/Prefs;->packsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 86
    :cond_7e
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a6

    :try_start_84
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_9d

    :try_start_89
    invoke-static {v1, p1}, Lcom/mcport/b173/SkinUtil;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_93

    :try_start_8c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_9d

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    goto :goto_a6

    :catchall_93
    move-exception p1

    :try_start_94
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_9c

    :catchall_98
    move-exception p2

    :try_start_99
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9c
    throw p1
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mcport/b173/ResourcePackActivity;->show(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_a6
    :goto_a6
    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->refresh()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Imported "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_c0
    move-exception p2

    if-eqz p1, :cond_cb

    .line 80
    :try_start_c3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_cb

    :catchall_c7
    move-exception p1

    :try_start_c8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cb
    :goto_cb
    throw p2
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cc} :catch_cc

    :catch_cc
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The file could not be read: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mcport/b173/ResourcePackActivity;->show(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    :goto_e2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mcport/b173/ResourcePackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/mcport/b173/ResourcePackActivity;->dp:F

    .line 31
    invoke-virtual {p0}, Lcom/mcport/b173/ResourcePackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fromGame"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mcport/b173/ResourcePackActivity;->fromGame:Z

    .line 32
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lcom/mcport/b173/ResourcePackActivity;->dp:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 33
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "Resource packs"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    iget-boolean v3, p0, Lcom/mcport/b173/ResourcePackActivity;->fromGame:Z

    if-eqz v3, :cond_51

    const-string v3, "Import packs here, then press Back: they appear in the game\'s texture pack list, where you select them."

    goto :goto_53

    :cond_51
    const-string v3, "Tap a pack to select it (applies the next time the game starts). Supported: Beta-era 16x .zip texture packs."

    :goto_53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mcport/b173/ResourcePackActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 39
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    iget-object v3, p0, Lcom/mcport/b173/ResourcePackActivity;->items:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/mcport/b173/ResourcePackActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mcport/b173/ResourcePackActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mcport/b173/ResourcePackActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "Import .zip..."

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance v3, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mcport/b173/ResourcePackActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "Delete selected"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance v5, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mcport/b173/ResourcePackActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-boolean v6, p0, Lcom/mcport/b173/ResourcePackActivity;->fromGame:Z

    if-eqz v6, :cond_d0

    const-string v6, "Back to game"

    goto :goto_d2

    :cond_d0
    const-string v6, "Done"

    :goto_d2
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance v6, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mcport/b173/ResourcePackActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/mcport/b173/ResourcePackActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mcport/b173/ResourcePackActivity;->refresh()V

    return-void
.end method

###### Class com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda0 (com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/ResourcePackActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/ResourcePackActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    iput-object p2, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    iget-object v1, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mcport/b173/ResourcePackActivity;->lambda$confirmDelete$5$com-mcport-b173-ResourcePackActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda1 (com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/ResourcePackActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/ResourcePackActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mcport/b173/ResourcePackActivity;->lambda$onCreate$0$com-mcport-b173-ResourcePackActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

###### Class com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda2 (com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/ResourcePackActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/ResourcePackActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mcport/b173/ResourcePackActivity;->lambda$onCreate$1$com-mcport-b173-ResourcePackActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

###### Class com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda3 (com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/ResourcePackActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/ResourcePackActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/ResourcePackActivity;->lambda$onCreate$2$com-mcport-b173-ResourcePackActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda4 (com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/ResourcePackActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/ResourcePackActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda4;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda4;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/ResourcePackActivity;->lambda$onCreate$3$com-mcport-b173-ResourcePackActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda5 (com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mcport/b173/ResourcePackActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mcport/b173/ResourcePackActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda5;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mcport/b173/ResourcePackActivity$$ExternalSyntheticLambda5;->f$0:Lcom/mcport/b173/ResourcePackActivity;

    invoke-virtual {v0, p1}, Lcom/mcport/b173/ResourcePackActivity;->lambda$onCreate$4$com-mcport-b173-ResourcePackActivity(Landroid/view/View;)V

    return-void
.end method
