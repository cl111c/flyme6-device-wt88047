.class Lcom/android/exsettings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/location/LocationSettings;

.field final synthetic val$activity:Lcom/android/exsettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/location/LocationSettings;Lcom/android/exsettings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/location/LocationSettings;
    .param p2, "val$activity"    # Lcom/android/exsettings/SettingsActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/exsettings/location/LocationSettings$2;->this$0:Lcom/android/exsettings/location/LocationSettings;

    iput-object p2, p0, Lcom/android/exsettings/location/LocationSettings$2;->val$activity:Lcom/android/exsettings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings$2;->val$activity:Lcom/android/exsettings/SettingsActivity;

    .line 205
    const-class v1, Lcom/android/exsettings/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v5, p0, Lcom/android/exsettings/location/LocationSettings$2;->this$0:Lcom/android/exsettings/location/LocationSettings;

    const v3, 0x7f0c0946

    .line 207
    const/4 v6, 0x0

    move-object v4, v2

    .line 204
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 208
    const/4 v0, 0x1

    return v0
.end method
