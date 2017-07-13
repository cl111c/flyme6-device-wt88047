.class Lcom/android/exsettings/wifi/AdvancedWifiSettings$2;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 165
    new-instance v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$WpsFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$WpsFragment;-><init>(I)V

    .line 166
    .local v0, "wpsFragment":Lcom/android/exsettings/wifi/AdvancedWifiSettings$WpsFragment;
    iget-object v1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "wps_push_button"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x1

    return v1
.end method
