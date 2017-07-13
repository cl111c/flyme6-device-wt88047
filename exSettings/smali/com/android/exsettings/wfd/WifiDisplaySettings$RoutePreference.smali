.class Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/wfd/WifiDisplaySettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    .line 654
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 656
    iput-object p3, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 657
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 659
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    .line 660
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 662
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const v0, 0x7f0c06e3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    .line 679
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 653
    return-void

    .line 665
    :cond_0
    const v0, 0x7f0c06e4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    goto :goto_0

    .line 671
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 672
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 673
    const v0, 0x7f0c06e5

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 675
    :cond_3
    const v0, 0x7f0c06e6

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0, v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->-wrap7(Lcom/android/exsettings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 685
    const/4 v0, 0x1

    return v0
.end method
