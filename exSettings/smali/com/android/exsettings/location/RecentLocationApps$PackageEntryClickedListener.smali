.class Lcom/android/exsettings/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/exsettings/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/location/RecentLocationApps;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/location/RecentLocationApps;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/exsettings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/exsettings/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/exsettings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/exsettings/location/RecentLocationApps$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 65
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 73
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package"

    iget-object v1, p0, Lcom/android/exsettings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/exsettings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/exsettings/location/RecentLocationApps;

    invoke-static {v0}, Lcom/android/exsettings/location/RecentLocationApps;->-get0(Lcom/android/exsettings/location/RecentLocationApps;)Lcom/android/exsettings/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v5, p0, Lcom/android/exsettings/location/RecentLocationApps$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    const v3, 0x7f0c09aa

    const/4 v4, 0x0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method
