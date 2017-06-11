.class public Lcom/android/internal/util/nx/ConfigSplitHelper;
.super Ljava/lang/Object;
.source "ConfigSplitHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "entries"    # Ljava/lang/String;
    .param p4, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v13, 0x0

    .line 34
    .local v13, "counter":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v12, "actionConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/nx/ActionConfig;>;"
    const/4 v11, 0x0

    .line 37
    .local v11, "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 38
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 40
    .local v3, "settingsResources":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 46
    .end local v3    # "settingsResources":Landroid/content/res/Resources;
    :goto_0
    const-string/jumbo v1, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move v15, v1

    .end local v11    # "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    aget-object v4, v16, v15

    .line 47
    .local v4, "configValue":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    .line 48
    const/4 v1, 0x1

    if-ne v13, v1, :cond_0

    .line 49
    new-instance v11, Lcom/android/internal/util/nx/ActionConfig;

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 50
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/nx/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v4

    .line 49
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/util/nx/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    const/4 v1, 0x2

    if-ne v13, v1, :cond_1

    .line 54
    if-eqz p4, :cond_3

    .line 55
    invoke-virtual {v11, v4}, Lcom/android/internal/util/nx/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v13, 0x0

    .line 66
    :cond_1
    :goto_2
    const/4 v1, 0x3

    if-ne v13, v1, :cond_2

    .line 67
    invoke-virtual {v11, v4}, Lcom/android/internal/util/nx/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v13, 0x0

    .line 46
    :cond_2
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_1

    .line 41
    .end local v4    # "configValue":Ljava/lang/String;
    .restart local v3    # "settingsResources":Landroid/content/res/Resources;
    .restart local v11    # "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    :catch_0
    move-exception v14

    .line 42
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConfigSplitHelper"

    const-string/jumbo v5, "can\'t access settings resources"

    invoke-static {v1, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v3    # "settingsResources":Landroid/content/res/Resources;
    .end local v11    # "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "configValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v11, v4}, Lcom/android/internal/util/nx/ActionConfig;->setLongpressAction(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/nx/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v11, v1}, Lcom/android/internal/util/nx/ActionConfig;->setLongpressActionDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 74
    .end local v4    # "configValue":Ljava/lang/String;
    :cond_4
    return-object v12
.end method

.method public static setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .param p1, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/nx/ActionConfig;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/nx/ActionConfig;>;"
    const-string/jumbo v1, ""

    .line 82
    .local v1, "finalConfig":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/nx/ActionConfig;

    .line 87
    .local v0, "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/nx/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-nez p1, :cond_1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/nx/ActionConfig;->getLongpressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    const-string/jumbo v4, "|"

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/nx/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "actionConfig":Lcom/android/internal/util/nx/ActionConfig;
    :cond_2
    return-object v1
.end method
