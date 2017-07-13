.class public Lcom/android/exsettings/livedisplay/LiveDisplay;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "LiveDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;,
        Lcom/android/exsettings/livedisplay/LiveDisplay$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mColorEnhancement:Landroid/preference/SwitchPreference;

.field private mColorProfile:Landroid/preference/ListPreference;

.field private mColorProfileSummaries:[Ljava/lang/String;

.field private mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private mDisplayColor:Lcom/android/exsettings/livedisplay/DisplayColor;

.field private mDisplayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature;

.field private final mHandler:Landroid/os/Handler;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHasDisplayModes:Z

.field private mLiveDisplay:Landroid/preference/ListPreference;

.field private mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

.field private mLowPower:Landroid/preference/SwitchPreference;

.field private mModeEntries:[Ljava/lang/String;

.field private mModeSummaries:[Ljava/lang/String;

.field private mModeValues:[Ljava/lang/String;

.field private final mObserver:Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mPictureAdjustment:Lcom/android/exsettings/livedisplay/PictureAdjustment;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/livedisplay/LiveDisplay;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/livedisplay/LiveDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->updateModeSummary()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/livedisplay/LiveDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/android/exsettings/livedisplay/LiveDisplay$1;

    invoke-direct {v0}, Lcom/android/exsettings/livedisplay/LiveDisplay$1;-><init>()V

    .line 383
    sput-object v0, Lcom/android/exsettings/livedisplay/LiveDisplay;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;-><init>(Lcom/android/exsettings/livedisplay/LiveDisplay;)V

    iput-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mObserver:Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    .line 60
    return-void
.end method

.method private getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, "resId":I
    if-gtz v1, :cond_0

    .line 231
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No resource found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-object p2

    .line 234
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateColorProfileSummary(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-boolean v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    if-nez v2, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    if-nez p1, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .line 285
    .local v0, "cur":Lcyanogenmod/hardware/DisplayMode;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ltz v2, :cond_1

    .line 286
    iget v2, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    .end local v0    # "cur":Lcyanogenmod/hardware/DisplayMode;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, "idx":I
    if-gez v1, :cond_3

    .line 292
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No summary resource found for profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    return-void

    .line 284
    .end local v1    # "idx":I
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .restart local v0    # "cur":Lcyanogenmod/hardware/DisplayMode;
    goto :goto_0

    .line 297
    .end local v0    # "cur":Lcyanogenmod/hardware/DisplayMode;
    .restart local v1    # "idx":I
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method private updateDisplayModes()Z
    .locals 14

    .prologue
    .line 239
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v4

    .line 240
    .local v4, "modes":[Lcyanogenmod/hardware/DisplayMode;
    if-eqz v4, :cond_0

    array-length v10, v4

    if-nez v10, :cond_1

    .line 241
    :cond_0
    const/4 v10, 0x0

    return v10

    .line 244
    :cond_1
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 245
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .line 246
    .local v0, "cur":Lcyanogenmod/hardware/DisplayMode;
    :goto_0
    const/4 v1, -0x1

    .line 247
    .local v1, "curId":I
    array-length v10, v4

    new-array v2, v10, [Ljava/lang/String;

    .line 248
    .local v2, "entries":[Ljava/lang/String;
    array-length v10, v4

    new-array v9, v10, [Ljava/lang/String;

    .line 249
    .local v9, "values":[Ljava/lang/String;
    array-length v10, v4

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    .line 250
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v4

    if-ge v3, v10, :cond_5

    .line 251
    aget-object v10, v4, v3

    iget v10, v10, Lcyanogenmod/hardware/DisplayMode;->id:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 252
    aget-object v10, v4, v3

    iget-object v10, v10, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, " "

    const-string/jumbo v12, "_"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v10, "live_display_color_profile_%s_title"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "nameRes":Ljava/lang/String;
    aget-object v10, v4, v3

    iget-object v10, v10, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    .line 257
    const-string/jumbo v10, "live_display_color_profile_%s_summary"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "summaryRes":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getStringForResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "summary":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 260
    const-string/jumbo v10, "%s - %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aget-object v12, v2, v3

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_2
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfileSummaries:[Ljava/lang/String;

    aput-object v7, v10, v3

    .line 264
    if-eqz v0, :cond_3

    aget-object v10, v4, v3

    iget v10, v10, Lcyanogenmod/hardware/DisplayMode;->id:I

    iget v11, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v10, v11, :cond_3

    .line 265
    iget v1, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    .line 250
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "cur":Lcyanogenmod/hardware/DisplayMode;
    .end local v1    # "curId":I
    .end local v2    # "entries":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nameRes":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v8    # "summaryRes":Ljava/lang/String;
    .end local v9    # "values":[Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .restart local v0    # "cur":Lcyanogenmod/hardware/DisplayMode;
    goto/16 :goto_0

    .line 268
    .restart local v1    # "curId":I
    .restart local v2    # "entries":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v9    # "values":[Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v10, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 269
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 270
    if-ltz v1, :cond_6

    .line 271
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 274
    :cond_6
    const/4 v10, 0x1

    return v10
.end method

.method private updateModeSummary()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 302
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getMode()I

    move-result v1

    .line 304
    .local v1, "mode":I
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 305
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    if-eqz v2, :cond_1

    .line 313
    iget-object v5, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->setEnabled(Z)V

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 301
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 313
    goto :goto_0

    :cond_4
    move v3, v4

    .line 316
    goto :goto_1
.end method

.method private updateTemperatureSummary()V
    .locals 7

    .prologue
    .line 321
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getDayColorTemperature()I

    move-result v0

    .line 322
    .local v0, "day":I
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/LiveDisplayManager;->getNightColorTemperature()I

    move-result v1

    .line 324
    .local v1, "night":I
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 326
    iget-object v5, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-virtual {v5, v0}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 327
    iget-object v5, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    invoke-virtual {v5, v1}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->roundUp(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 325
    const v5, 0x7f0c0242

    .line 324
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/livedisplay/DisplayTemperature;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 209
    const v0, -0x7ffffff6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 112
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    .line 114
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    .line 116
    const v10, 0x7f080033

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->addPreferencesFromResource(I)V

    .line 119
    const-string/jumbo v10, "live_display_options"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 118
    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 121
    .local v6, "liveDisplayPrefs":Landroid/preference/PreferenceCategory;
    const-string/jumbo v10, "advanced"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 120
    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 123
    .local v1, "advancedPrefs":Landroid/preference/PreferenceCategory;
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-virtual {v10}, Lcyanogenmod/hardware/LiveDisplayManager;->getMode()I

    move-result v0

    .line 125
    .local v0, "adaptiveMode":I
    const-string/jumbo v10, "live_display"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    .line 126
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 129
    const v10, 0x3f040002

    .line 128
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 131
    const v10, 0x3f040004

    .line 130
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 133
    const v10, 0x3f040003

    .line 132
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 136
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v10, v13}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 137
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 138
    .local v4, "idx":I
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v2, v10, [Ljava/lang/String;

    .line 139
    .local v2, "entriesTemp":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 140
    .local v9, "valuesTemp":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 141
    .local v8, "summariesTemp":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 142
    .local v5, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_1

    .line 143
    if-ne v3, v4, :cond_0

    .line 142
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v2, v5

    .line 147
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v9, v5

    .line 148
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v10, v10, v3

    aput-object v10, v8, v5

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    :cond_1
    iput-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 152
    iput-object v9, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 153
    iput-object v8, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 156
    .end local v2    # "entriesTemp":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "idx":I
    .end local v5    # "j":I
    .end local v8    # "summariesTemp":[Ljava/lang/String;
    .end local v9    # "valuesTemp":[Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 157
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 158
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string/jumbo v10, "live_display_color_temperature"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/exsettings/livedisplay/DisplayTemperature;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/exsettings/livedisplay/DisplayTemperature;

    .line 162
    const-string/jumbo v10, "live_display_color_profile"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    .line 163
    if-eqz v6, :cond_3

    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-eqz v10, :cond_3

    .line 164
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->updateDisplayModes()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 167
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHasDisplayModes:Z

    .line 168
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    :goto_2
    const-string/jumbo v10, "display_auto_outdoor_mode"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 172
    if-eqz v6, :cond_4

    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_4

    .line 173
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    invoke-virtual {v10, v13}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 178
    :cond_4
    :goto_3
    const-string/jumbo v10, "display_low_power"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    .line 179
    if-eqz v1, :cond_5

    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_5

    .line 180
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 185
    :cond_5
    :goto_4
    const-string/jumbo v10, "display_color_enhance"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    .line 186
    if-eqz v1, :cond_6

    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_6

    .line 187
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 192
    :cond_6
    :goto_5
    const-string/jumbo v10, "picture_adjustment"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/exsettings/livedisplay/PictureAdjustment;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    .line 193
    if-eqz v1, :cond_7

    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    if-eqz v10, :cond_7

    .line 194
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 199
    :cond_7
    :goto_6
    const-string/jumbo v10, "color_calibration"

    invoke-virtual {p0, v10}, Lcom/android/exsettings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/exsettings/livedisplay/DisplayColor;

    iput-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/android/exsettings/livedisplay/DisplayColor;

    .line 200
    if-eqz v1, :cond_8

    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/android/exsettings/livedisplay/DisplayColor;

    if-eqz v10, :cond_8

    .line 201
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 108
    :cond_8
    :goto_7
    return-void

    .line 165
    :cond_9
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 174
    :cond_a
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    iput-object v12, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    goto :goto_3

    .line 181
    :cond_b
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    iput-object v12, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    goto :goto_4

    .line 188
    :cond_c
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    iput-object v12, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    goto :goto_5

    .line 195
    :cond_d
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    iput-object v12, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mPictureAdjustment:Lcom/android/exsettings/livedisplay/PictureAdjustment;

    goto :goto_6

    .line 202
    :cond_e
    iget-object v10, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/android/exsettings/livedisplay/DisplayColor;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iput-object v12, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mDisplayColor:Lcom/android/exsettings/livedisplay/DisplayColor;

    goto :goto_7
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mObserver:Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 222
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 332
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mLiveDisplayManager:Lcyanogenmod/hardware/LiveDisplayManager;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcyanogenmod/hardware/LiveDisplayManager;->setMode(I)Z

    .line 345
    :cond_0
    :goto_0
    return v6

    .line 334
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mColorProfile:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    .line 335
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    .local v0, "id":I
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 338
    .local v1, "mode":Lcyanogenmod/hardware/DisplayMode;
    iget v5, v1, Lcyanogenmod/hardware/DisplayMode;->id:I

    if-ne v5, v0, :cond_2

    .line 339
    iget-object v2, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2, v1, v6}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    .line 340
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/exsettings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 215
    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->updateModeSummary()V

    .line 216
    invoke-direct {p0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/livedisplay/LiveDisplay;->updateColorProfileSummary(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/exsettings/livedisplay/LiveDisplay;->mObserver:Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 213
    return-void
.end method
