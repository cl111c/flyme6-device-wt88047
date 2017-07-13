.class public Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ExpandedDesktopExtraPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;
    }
.end annotation


# instance fields
.field private mExpandedDesktopStyle:I

.field private mExpandedDesktopStylePref:Landroid/preference/ListPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->updateExpandedDesktopStyle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;-><init>(Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;)V

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mSettingsObserver:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    .line 38
    return-void
.end method

.method private getDesktopSummary(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 117
    const v0, 0x7f0c02e6

    return v0

    .line 112
    :pswitch_0
    const v0, 0x7f0c02e4

    return v0

    .line 114
    :pswitch_1
    const v0, 0x7f0c02e5

    return v0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getExpandedDesktopStyle()I
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "policy_control_style"

    .line 124
    const/4 v2, 0x0

    .line 122
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;

    invoke-direct {v0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;-><init>()V

    .line 49
    .local v0, "expandedDesktopExtraPrefs":Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;
    return-object v0
.end method

.method private updateExpandedDesktopStyle()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->getExpandedDesktopStyle()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->getDesktopSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 105
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->writeValue(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "immersive.full=*"

    invoke-direct {p0, v0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->writeValue(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private writeValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "policy_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public createPreferences()V
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "expanded_desktop_style"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->updateExpandedDesktopStyle()V

    .line 90
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x2e

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v1, 0x1

    .line 62
    .local v1, "hasNavigationBar":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    .end local v1    # "hasNavigationBar":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 67
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->addPreferencesFromResource(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->getExpandedDesktopStyle()I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mExpandedDesktopStyle:I

    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->createPreferences()V

    .line 58
    :cond_0
    return-void

    .line 63
    .restart local v1    # "hasNavigationBar":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mSettingsObserver:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->register(Z)V

    .line 87
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 85
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, "val":I
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/WindowManagerPolicyControl;->saveStyleToSettings(Landroid/content/Context;I)V

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs;->mSettingsObserver:Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ExpandedDesktopExtraPrefs$SettingsObserver;->register(Z)V

    .line 79
    return-void
.end method
