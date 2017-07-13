.class public Lcom/android/exsettings/cyanogenmod/ProtectedAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProtectedAppsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static notifyProtectedChanged(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.intent.action.PROTECTED_COMPONENT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "cyanogenmod.intent.extra.PACKAGE_PROTECTED_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "cyanogenmod.intent.extra.PACKAGE_PROTECTED_COMPONENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "cyanogenmod.permission.PROTECTED_APP"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static updateProtectedAppComponents(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 68
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 70
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v3, v0, p2}, Landroid/content/pm/PackageManager;->setComponentProtectedSetting(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "nsm":Ljava/lang/NoSuchMethodError;
    const-string/jumbo v4, "ProtectedAppsReceiver"

    const-string/jumbo v5, "Unable to protected app via PackageManager"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "nsm":Ljava/lang/NoSuchMethodError;
    :cond_0
    return-void
.end method

.method public static updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponents(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/cyanogenmod/ProtectedAppsReceiver;->updateSettingsSecure(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/cyanogenmod/ProtectedAppsReceiver;->notifyProtectedChanged(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 58
    return-void
.end method

.method public static updateSettingsSecure(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v8, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 81
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "protected_components"

    .line 80
    invoke-static {v6, v9}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "hiddenComponents":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v5, "newComponentList":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_1

    .line 85
    const-string/jumbo v9, "\\|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v2, v9, v8

    .line 86
    .local v2, "flattened":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 87
    .local v0, "cmp":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "cmp":Landroid/content/ComponentName;
    .end local v2    # "flattened":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_3

    .line 94
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 97
    .local v7, "update":Z
    :goto_1
    if-eqz v7, :cond_5

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v3, "flattenedList":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cmp$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 100
    .restart local v0    # "cmp":Landroid/content/ComponentName;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 101
    const-string/jumbo v8, "|"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 95
    .end local v0    # "cmp":Landroid/content/ComponentName;
    .end local v1    # "cmp$iterator":Ljava/util/Iterator;
    .end local v3    # "flattenedList":Ljava/lang/StringBuilder;
    .end local v7    # "update":Z
    :cond_3
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    .restart local v7    # "update":Z
    goto :goto_1

    .line 105
    .restart local v1    # "cmp$iterator":Ljava/util/Iterator;
    .restart local v3    # "flattenedList":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v8, "protected_components"

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-static {v6, v8, v9}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    .end local v1    # "cmp$iterator":Ljava/util/Iterator;
    .end local v3    # "flattenedList":Ljava/lang/StringBuilder;
    :cond_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const-string/jumbo v2, "cyanogenmod.intent.action.PACKAGE_PROTECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string/jumbo v2, "cyanogenmod.intent.extra.PACKAGE_PROTECTED_STATE"

    .line 48
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    .local v1, "protect":Z
    const-string/jumbo v2, "cyanogenmod.intent.extra.PACKAGE_PROTECTED_COMPONENTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1, v0, v1}, Lcom/android/exsettings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 45
    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v1    # "protect":Z
    :cond_0
    return-void
.end method
