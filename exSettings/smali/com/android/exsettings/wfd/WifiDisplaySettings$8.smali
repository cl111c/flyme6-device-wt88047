.class Lcom/android/exsettings/wfd/WifiDisplaySettings$8;
.super Landroid/preference/ListPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wfd/WifiDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 401
    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$8;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-set5(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)I

    .line 403
    const-string/jumbo v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$8;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 405
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    const-string/jumbo v1, "wifi_display_wps_config"

    iget-object v2, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-get6(Lcom/android/exsettings/wfd/WifiDisplaySettings;)I

    move-result v2

    .line 405
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    :cond_0
    return-void
.end method
