.class Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
.super Landroid/preference/Preference;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;,
        Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 225
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setPersistent(Z)V

    .line 227
    new-instance v0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;-><init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 223
    return-void
.end method

.method private updateSummary()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 256
    .local v0, "c":Ljava/util/Calendar;
    iget v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 257
    iget v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 258
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 262
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    .line 238
    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    .line 244
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->updateSummary()V

    .line 242
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    iput p1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    .line 250
    iput p2, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    .line 251
    invoke-direct {p0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->updateSummary()V

    .line 247
    return-void

    .line 248
    :cond_1
    return-void
.end method
