.class public Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# instance fields
.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroid/preference/Preference;

.field private mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 48
    return-void
.end method

.method private showDaysDialog()V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    const v1, 0x7f0c0ec6

    .line 193
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$5;

    invoke-direct {v1, p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    const v1, 0x7f0c0d74

    const/4 v2, 0x0

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 192
    return-void
.end method

.method private updateDays()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 144
    iget-object v6, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 145
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v6, v2

    if-lez v6, :cond_4

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/android/exsettings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 149
    sget-object v6, Lcom/android/exsettings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v1, v6, v3

    .line 150
    .local v1, "day":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 151
    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    .line 152
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 154
    iget-object v6, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0ec9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 161
    .end local v1    # "day":I
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 162
    iget-object v6, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v6, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 164
    return-void

    .line 167
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v6, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f0c0ec7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 168
    iget-object v6, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 142
    return-void
.end method

.method private updateEndSummary()V
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v2, v4, v5

    .line 173
    .local v2, "startMin":I
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v4, v5

    .line 174
    .local v0, "endMin":I
    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    .line 175
    .local v1, "nextDay":Z
    :goto_0
    if-eqz v1, :cond_1

    const v3, 0x7f0c0edf

    .line 176
    .local v3, "summaryFormat":I
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummaryFormat(I)V

    .line 171
    return-void

    .line 174
    .end local v1    # "nextDay":Z
    .end local v3    # "summaryFormat":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nextDay":Z
    goto :goto_0

    .line 175
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "summaryFormat":I
    goto :goto_1
.end method


# virtual methods
.method protected getEnabledToastText()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0c0eb8

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x90

    return v0
.end method

.method protected getZenModeDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateInternal()V
    .locals 4

    .prologue
    .line 83
    const v2, 0x7f08007e

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 86
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v2, "days"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    .line 87
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    new-instance v3, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 97
    .local v0, "mgr":Landroid/app/FragmentManager;
    new-instance v2, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 98
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string/jumbo v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f0c0edd

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 100
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 116
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 120
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string/jumbo v3, "end_time"

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f0c0ede

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 122
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v3, p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 138
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x0

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    .line 182
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 183
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 184
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->updateEndSummary()V

    .line 180
    return-void
.end method
