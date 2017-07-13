.class public abstract Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;
.super Lcom/android/exsettings/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDeleting:Z

.field protected mDisableListeners:Z

.field private mEnabledToast:Landroid/widget/Toast;

.field protected mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field private mRuleId:Ljava/lang/String;

.field private mRuleName:Landroid/preference/Preference;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mZenMode:Lcom/android/exsettings/DropDownPreference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRuleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mDeleting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->showRuleNameDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private refreshRuleOrFinish()Z
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRuleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 227
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 230
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private showDeleteRuleDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 236
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0c0eb2

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 238
    const v3, 0x7f0c05d6

    .line 236
    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 239
    new-instance v3, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$4;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$4;-><init>(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;)V

    const v4, 0x7f0c0eb3

    .line 236
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 249
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, "messageView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 251
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 235
    :cond_0
    return-void
.end method

.method private showRuleNameDialog()V
    .locals 6

    .prologue
    .line 213
    new-instance v0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getAutomaticRuleNames()Landroid/util/ArraySet;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;-><init>(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;Landroid/content/Context;Lcom/android/exsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$3;->show()V

    .line 212
    return-void
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mDeleting:Z

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0ec4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 255
    return-void
.end method

.method private updateControls()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 270
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->updateRuleName()V

    .line 271
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->updateControlsInternal()V

    .line 272
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 268
    return-void
.end method

.method private updateRuleName()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method


# virtual methods
.method protected abstract getEnabledToastText()I
.end method

.method protected abstract getZenModeDependency()Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 140
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 141
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 142
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate getIntent()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    if-nez v0, :cond_1

    .line 82
    const-string/jumbo v2, "ZenModeSettings"

    const-string/jumbo v3, "No intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    .line 84
    return-void

    .line 87
    :cond_1
    const-string/jumbo v2, "rule_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRuleId:Ljava/lang/String;

    .line 88
    sget-boolean v2, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRuleId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRuleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    return-void

    .line 93
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->setHasOptionsMenu(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->onCreateInternal()V

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 98
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v2, "rule_name"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/preference/Preference;

    .line 99
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRuleName:Landroid/preference/Preference;

    new-instance v3, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    const-string/jumbo v2, "zen_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/DropDownPreference;

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    .line 108
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 108
    const v4, 0x7f0c0e7b

    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0c0e7c

    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    .line 112
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 111
    const v4, 0x7f0c0e7d

    invoke-virtual {v2, v4, v3}, Lcom/android/exsettings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    new-instance v3, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase$2;-><init>(Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setCallback(Lcom/android/exsettings/DropDownPreference$Callback;)V

    .line 125
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setOrder(I)V

    .line 126
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mZenMode:Lcom/android/exsettings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getZenModeDependency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/DropDownPreference;->setDependency(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    const-string/jumbo v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const v0, 0x7f14000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 196
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onDestroyView()V

    .line 148
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOptionsItemSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f13026c

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v1, 0xae

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 206
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->showDeleteRuleDialog()V

    .line 207
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_1
    invoke-super {p0, p1}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/exsettings/notification/ZenModeSettingsBase;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->updateControls()V

    .line 130
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x0

    .line 154
    sget-boolean v2, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-boolean v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    if-eqz v2, :cond_1

    return-void

    .line 156
    :cond_1
    move v0, p2

    .line 157
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-ne v0, v2, :cond_2

    return-void

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v3, 0xb0

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 159
    sget-boolean v2, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-boolean v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 161
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-boolean v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 162
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 163
    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->getEnabledToastText()I

    move-result v1

    .line 165
    .local v1, "toastText":I
    if-eqz v1, :cond_4

    .line 166
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    .line 167
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 153
    .end local v1    # "toastText":I
    :cond_4
    :goto_0
    return-void

    .line 170
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mEnabledToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->updateControls()V

    .line 189
    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 2
    .param p1, "newConditionId"    # Landroid/net/Uri;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 179
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 176
    return-void
.end method
