.class public Lcom/android/internal/util/nx/ActionHelper;
.super Ljava/lang/Object;
.source "ActionHelper.java"


# static fields
.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v9, -0x1

    .line 71
    .local v9, "resId":I
    const/4 v1, 0x0

    .line 72
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 73
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-nez v8, :cond_0

    .line 74
    const/4 v11, 0x0

    return-object v11

    .line 79
    :cond_0
    :try_start_0
    const-string/jumbo v11, "com.android.systemui"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 85
    .local v10, "systemUiResources":Landroid/content/res/Resources;
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 87
    :try_start_1
    const-string/jumbo v11, ".*?hasExtraIcon="

    const-string/jumbo v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "extraIconPath":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 95
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 96
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 110
    .end local v6    # "extraIconPath":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    const-string/jumbo v11, "system_shortcut="

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 112
    const-string/jumbo v11, "system_shortcut="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 111
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 112
    const-string/jumbo v12, "drawable"

    const-string/jumbo v13, "android"

    .line 111
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 113
    if-lez v9, :cond_8

    .line 114
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 80
    .end local v10    # "systemUiResources":Landroid/content/res/Resources;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ButtonsHelper:"

    const-string/jumbo v12, "can\'t access systemui resources"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const/4 v11, 0x0

    return-object v11

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "extraIconPath":Ljava/lang/String;
    .restart local v10    # "systemUiResources":Landroid/content/res/Resources;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 91
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 92
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 91
    invoke-direct {v2, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 105
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "extraIconPath":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 106
    .local v5, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v3

    .line 100
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "com.android.systemui:drawable/ic_sysbar_null"

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 99
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 101
    if-lez v9, :cond_2

    .line 102
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 116
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v11, "empty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 127
    :cond_5
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 128
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/internal/util/nx/ActionHelper;->getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    .line 130
    if-lez v9, :cond_8

    .line 131
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 117
    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v7    # "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 119
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 121
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 121
    invoke-direct {v13, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 120
    invoke-static {v13}, Lcom/android/internal/util/nx/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 119
    invoke-direct {v11, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v11

    .line 124
    :cond_7
    const-string/jumbo v11, "ActionHelper:"

    const-string/jumbo v12, "can\'t access custom icon image"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v11, 0x0

    return-object v11

    .line 134
    .end local v7    # "f":Ljava/io/File;
    :cond_8
    return-object v1
.end method

.method private static getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "systemUiResources"    # Landroid/content/res/Resources;
    .param p1, "clickAction"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 138
    const/4 v0, -0x1

    .line 141
    .local v0, "resId":I
    const-string/jumbo v1, "**home**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_home"

    .line 142
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 144
    :cond_0
    const-string/jumbo v1, "**back**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_back"

    .line 145
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 147
    :cond_1
    const-string/jumbo v1, "**recents**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_recent"

    .line 148
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 150
    :cond_2
    const-string/jumbo v1, "**search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    const-string/jumbo v1, "**assist**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 150
    if-eqz v1, :cond_4

    .line 153
    :cond_3
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_search"

    .line 152
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 154
    :cond_4
    const-string/jumbo v1, "**keyguard_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_search_light"

    .line 155
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 157
    :cond_5
    const-string/jumbo v1, "**menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_menu"

    .line 158
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 160
    :cond_6
    const-string/jumbo v1, "**menu_big**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_menu_big"

    .line 161
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 163
    :cond_7
    const-string/jumbo v1, "**ime**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 165
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_ime_switcher"

    .line 164
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 166
    :cond_8
    const-string/jumbo v1, "**power**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 168
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_power"

    .line 167
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 169
    :cond_9
    const-string/jumbo v1, "**power_menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 171
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_power_menu"

    .line 170
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 172
    :cond_a
    const-string/jumbo v1, "**ring_vib**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 174
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_vib"

    .line 173
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 175
    :cond_b
    const-string/jumbo v1, "**ring_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 177
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_silent"

    .line 176
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 178
    :cond_c
    const-string/jumbo v1, "**ring_vib_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 180
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_ring_vib_silent"

    .line 179
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 183
    :cond_d
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_null"

    .line 182
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getLockscreenShortcutConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "lockscreen_shortcuts"

    .line 47
    const/4 v3, -0x2

    .line 44
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, ""

    .line 52
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v4, v4, v1}, Lcom/android/internal/util/nx/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static setLockscreenShortcutConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/nx/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 59
    const-string/jumbo v0, ""

    .line 63
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "lockscreen_shortcuts"

    .line 63
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    return-void

    .line 61
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/util/nx/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method
