.class public Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/RedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRedactSensitiveButton:Landroid/widget/RadioButton;

.field private mShowAllButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private loadFromSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 127
    const-string/jumbo v4, "lock_screen_show_notifications"

    .line 126
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 128
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 129
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    const/4 v5, 0x1

    .line 128
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 131
    .local v2, "show":Z
    :goto_1
    const v0, 0x7f1301f7

    .line 132
    .local v0, "checkedButtonId":I
    if-eqz v1, :cond_0

    .line 133
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const v0, 0x7f1301f6

    .line 140
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 125
    return-void

    .line 126
    .end local v0    # "checkedButtonId":I
    .end local v1    # "enabled":Z
    .end local v2    # "show":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 128
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "show":Z
    goto :goto_1

    .line 135
    .restart local v0    # "checkedButtonId":I
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const v0, 0x7f1301f5

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x4a

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    const v2, 0x7f1301f6

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 146
    .local v1, "show":Z
    :goto_0
    const v2, 0x7f1301f7

    if-eq p2, v2, :cond_1

    const/4 v0, 0x1

    .line 148
    .local v0, "enabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 149
    const-string/jumbo v6, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_2

    move v2, v3

    .line 148
    :goto_2
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 151
    const-string/jumbo v5, "lock_screen_show_notifications"

    if-eqz v0, :cond_3

    .line 150
    :goto_3
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    return-void

    .line 145
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    :cond_2
    move v2, v4

    .line 149
    goto :goto_2

    :cond_3
    move v3, v4

    .line 151
    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const v0, 0x7f0400ee

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    .line 120
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f1301f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 105
    const v0, 0x7f1301f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/RadioButton;

    .line 106
    const v0, 0x7f1301f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/RadioButton;

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/notification/RedactionInterstitial;->-wrap0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/notification/RedactionInterstitial;->-wrap1(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_0
.end method
