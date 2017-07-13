.class public abstract Lcom/android/exsettings/notification/ManagedServiceSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;,
        Lcom/android/exsettings/notification/ManagedServiceSettings$Config;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

.field private mContext:Landroid/content/Context;

.field private mEmpty:Landroid/widget/TextView;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/exsettings/notification/ServiceListing;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ManagedServiceSettings;)Lcom/android/exsettings/notification/ManagedServiceSettings$Config;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mConfig:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notification/ManagedServiceSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/notification/ManagedServiceSettings;)Lcom/android/exsettings/notification/ServiceListing;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/notification/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notification/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0
    .param p1, "services"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/ManagedServiceSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ManagedServiceSettings;->getConfig()Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mConfig:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    .line 55
    return-void
.end method

.method private setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 122
    if-nez p3, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    invoke-virtual {v0, p1, v3}, Lcom/android/exsettings/notification/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 125
    return v1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    return v1

    .line 131
    :cond_1
    new-instance v0, Lcom/android/exsettings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/exsettings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/exsettings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/exsettings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 134
    return v3
.end method

.method private updateList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ManagedServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 100
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 101
    new-instance v6, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v7, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v7}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 103
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "title":Ljava/lang/String;
    new-instance v1, Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, "pref":Landroid/preference/SwitchPreference;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 107
    iget-object v6, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v6, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    invoke-virtual {v6, v0}, Lcom/android/exsettings/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 110
    new-instance v6, Lcom/android/exsettings/notification/ManagedServiceSettings$2;

    invoke-direct {v6, p0, v0, v5}, Lcom/android/exsettings/notification/ManagedServiceSettings$2;-><init>(Lcom/android/exsettings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 98
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "pref":Landroid/preference/SwitchPreference;
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Lcom/android/exsettings/notification/ManagedServiceSettings$Config;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 65
    new-instance v0, Lcom/android/exsettings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mConfig:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/exsettings/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    .line 66
    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    new-instance v1, Lcom/android/exsettings/notification/ManagedServiceSettings$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/notification/ManagedServiceSettings$1;-><init>(Lcom/android/exsettings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->addCallback(Lcom/android/exsettings/notification/ServiceListing$Callback;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ManagedServiceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ManagedServiceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v1, 0x7f040095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mConfig:Lcom/android/exsettings/notification/ManagedServiceSettings$Config;

    iget v2, v2, Lcom/android/exsettings/notification/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->setListening(Z)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/ServiceListing;->reload()Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/android/exsettings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/exsettings/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->setListening(Z)V

    .line 86
    return-void
.end method
