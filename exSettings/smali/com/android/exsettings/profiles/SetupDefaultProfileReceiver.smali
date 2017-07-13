.class public Lcom/android/exsettings/profiles/SetupDefaultProfileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetupDefaultProfileReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 33
    const-string/jumbo v3, "system_profiles_enabled"

    .line 32
    invoke-static {v2, v3, v4}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 34
    invoke-static {p1}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v1

    .line 36
    .local v1, "profileManager":Lcyanogenmod/app/ProfileManager;
    const-string/jumbo v2, "0230226d-0d05-494a-a9bd-d222a1117655"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v0

    .line 37
    .local v0, "defaultProfile":Lcyanogenmod/app/Profile;
    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1, v0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->fillProfileWithCurrentSettings(Landroid/content/Context;Lcyanogenmod/app/Profile;)V

    .line 39
    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    .line 31
    .end local v0    # "defaultProfile":Lcyanogenmod/app/Profile;
    .end local v1    # "profileManager":Lcyanogenmod/app/ProfileManager;
    :cond_0
    return-void
.end method
