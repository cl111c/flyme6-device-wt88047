.class public Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/exsettings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/exsettings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/preference/ListPreference;

.field private mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/exsettings/accessibility/LocalePreference;

.field private mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

.field private mTypeface:Landroid/preference/ListPreference;

.field private mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/exsettings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 10
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "previewWindow"    # Landroid/view/View;
    .param p3, "styleId"    # I

    .prologue
    const v9, 0x7f0c0afb

    .line 209
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 213
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 214
    .local v2, "fontScale":F
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 216
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    .line 217
    const/high16 v8, 0x41800000    # 16.0f

    .line 216
    div-float v6, v7, v8

    .line 218
    .local v6, "virtualHeight":F
    const v7, 0x3d5a511a    # 0.0533f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 225
    .end local v6    # "virtualHeight":F
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 226
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_1

    .line 227
    invoke-static {v0, v3, v9}, Lcom/android/exsettings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 229
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .end local v4    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 220
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 221
    const v8, 0x7f0b0061

    .line 220
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 222
    .local v5, "textSize":F
    mul-float v7, v5, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 231
    .end local v5    # "textSize":F
    .restart local v3    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1
.end method

.method private initializeAllPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 262
    const-string/jumbo v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/exsettings/accessibility/LocalePreference;

    .line 263
    const-string/jumbo v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    .line 265
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 266
    .local v8, "res":Landroid/content/res/Resources;
    const v9, 0x7f0a0042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 267
    .local v7, "presetValues":[I
    const v9, 0x7f0a0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "presetTitles":[Ljava/lang/String;
    const-string/jumbo v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

    .line 269
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/exsettings/accessibility/PresetPreference;->setValues([I)V

    .line 270
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/exsettings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 272
    const-string/jumbo v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    .line 273
    iput-boolean v12, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 275
    const v9, 0x7f0a003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 276
    .local v3, "colorValues":[I
    const v9, 0x7f0a003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "colorTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    .line 278
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/exsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 279
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/exsettings/accessibility/ColorPreference;->setValues([I)V

    .line 281
    const v9, 0x7f0a0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 283
    .local v5, "opacityValues":[I
    const v9, 0x7f0a003f

    .line 282
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "opacityTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    .line 285
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/exsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 286
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/exsettings/accessibility/ColorPreference;->setValues([I)V

    .line 288
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/exsettings/accessibility/ColorPreference;

    .line 289
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/exsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 290
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/exsettings/accessibility/ColorPreference;->setValues([I)V

    .line 293
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    .line 294
    .local v1, "bgColorValues":[I
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 295
    .local v0, "bgColorTitles":[Ljava/lang/String;
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 296
    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    aput v11, v1, v11

    .line 298
    const v9, 0x7f0c0aff

    invoke-virtual {p0, v9}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 299
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    .line 300
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/exsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 301
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/exsettings/accessibility/ColorPreference;->setValues([I)V

    .line 303
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    .line 304
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/exsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 305
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/exsettings/accessibility/ColorPreference;->setValues([I)V

    .line 307
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_window_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

    .line 308
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/exsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 309
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/exsettings/accessibility/ColorPreference;->setValues([I)V

    .line 311
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_window_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    .line 312
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/exsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 313
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/exsettings/accessibility/ColorPreference;->setValues([I)V

    .line 315
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/exsettings/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/exsettings/accessibility/EdgeTypePreference;

    .line 316
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    .line 261
    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    .line 253
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 251
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/exsettings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/exsettings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    return-void
.end method

.method private mergeColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;)I
    .locals 5
    .param p1, "color"    # Lcom/android/exsettings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/exsettings/accessibility/ColorPreference;

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/android/exsettings/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 397
    .local v0, "colorValue":I
    invoke-virtual {p2}, Lcom/android/exsettings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 400
    .local v1, "opacityValue":I
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const v4, 0xffff00

    or-int v2, v4, v3

    .line 410
    .local v2, "value":I
    :goto_0
    return v2

    .line 403
    .end local v2    # "value":I
    :cond_0
    if-nez v0, :cond_1

    .line 405
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_0

    .line 408
    .end local v2    # "value":I
    :cond_1
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    or-int v2, v3, v4

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private parseColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;I)V
    .locals 4
    .param p1, "color"    # Lcom/android/exsettings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/exsettings/accessibility/ColorPreference;
    .param p3, "value"    # I

    .prologue
    const/high16 v3, -0x1000000

    .line 376
    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const v0, 0xffffff

    .line 379
    .local v0, "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 391
    .local v1, "opacityValue":I
    :goto_0
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/exsettings/accessibility/ColorPreference;->setValue(I)V

    .line 392
    invoke-virtual {p1, v0}, Lcom/android/exsettings/accessibility/ColorPreference;->setValue(I)V

    .line 373
    return-void

    .line 380
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x18

    if-nez v2, :cond_1

    .line 382
    const/4 v0, 0x0

    .line 383
    .restart local v0    # "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .restart local v1    # "opacityValue":I
    goto :goto_0

    .line 386
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_1
    or-int v0, p3, v3

    .line 387
    .restart local v0    # "colorValue":I
    and-int v1, p3, v3

    .restart local v1    # "opacityValue":I
    goto :goto_0
.end method

.method private refreshPreviewText()V
    .locals 10

    .prologue
    const v9, 0x7f0c0afa

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 184
    .local v4, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_1

    .line 185
    iget-object v7, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    .line 186
    .local v6, "styleId":I
    iget-object v7, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v8, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v7, v4, v8, v6}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 188
    iget-object v7, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 189
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_2

    .line 190
    invoke-static {v0, v2, v9}, Lcom/android/exsettings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 192
    .local v3, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v3    # "localizedText":Ljava/lang/CharSequence;
    :goto_0
    iget-object v7, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v5

    .line 198
    .local v5, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 199
    iget-object v7, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v6    # "styleId":I
    :cond_1
    :goto_1
    return-void

    .line 194
    .restart local v2    # "locale":Ljava/util/Locale;
    .restart local v6    # "styleId":I
    :cond_2
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0

    .line 201
    .restart local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_3
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 202
    .local v1, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v7, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private refreshShowingCustom()V
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

    invoke-virtual {v1}, Lcom/android/exsettings/accessibility/PresetPreference;->getValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 415
    .local v0, "customPreset":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v1, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 414
    .end local v0    # "customPreset":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "customPreset":Z
    goto :goto_0

    .line 418
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 258
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/exsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 256
    return-void
.end method

.method private updateAllPreferences()V
    .locals 11

    .prologue
    .line 336
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    .line 337
    .local v5, "preset":I
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

    invoke-virtual {v9, v5}, Lcom/android/exsettings/accessibility/PresetPreference;->setValue(I)V

    .line 339
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    .line 340
    .local v3, "fontSize":F
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 343
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 344
    .local v0, "attrs":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/exsettings/accessibility/EdgeTypePreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v9, v10}, Lcom/android/exsettings/accessibility/EdgeTypePreference;->setValue(I)V

    .line 345
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/exsettings/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v9, v10}, Lcom/android/exsettings/accessibility/ColorPreference;->setValue(I)V

    .line 347
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 348
    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 349
    .local v4, "foregroundColor":I
    :goto_0
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v4}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;I)V

    .line 351
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 352
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 353
    .local v1, "backgroundColor":I
    :goto_1
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v1}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;I)V

    .line 355
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 356
    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 357
    .local v8, "windowColor":I
    :goto_2
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v8}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;I)V

    .line 359
    iget-object v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 360
    .local v7, "rawTypeface":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    .end local v7    # "rawTypeface":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 362
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "rawLocale":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/exsettings/accessibility/LocalePreference;

    if-nez v6, :cond_1

    const-string/jumbo v6, ""

    .end local v6    # "rawLocale":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, v6}, Lcom/android/exsettings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 335
    return-void

    .line 348
    .end local v1    # "backgroundColor":I
    .end local v4    # "foregroundColor":I
    .end local v8    # "windowColor":I
    :cond_2
    const v4, 0xffffff

    .restart local v4    # "foregroundColor":I
    goto :goto_0

    .line 352
    :cond_3
    const v1, 0xffffff

    .restart local v1    # "backgroundColor":I
    goto :goto_1

    .line 356
    :cond_4
    const v8, 0xffffff

    .restart local v8    # "windowColor":I
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 158
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 159
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 160
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    .line 163
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 167
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string/jumbo v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 109
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 111
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 112
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 113
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 119
    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 127
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "content":Landroid/view/View;
    const v2, 0x7f130057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 173
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    .line 171
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/exsettings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/exsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 235
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 454
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 456
    const-string/jumbo v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .line 455
    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 466
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 467
    const/4 v1, 0x1

    return v1

    .line 457
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 459
    const-string/jumbo v1, "accessibility_captioning_font_scale"

    .line 460
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 458
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/exsettings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 463
    const-string/jumbo v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .line 462
    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/exsettings/accessibility/ListDialogPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/android/exsettings/accessibility/ListDialogPreference;
    .param p2, "value"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;)I

    move-result v1

    .line 430
    .local v1, "merged":I
    const-string/jumbo v2, "accessibility_captioning_foreground_color"

    .line 429
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    .end local v1    # "merged":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 425
    return-void

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_4

    .line 432
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/exsettings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;)I

    move-result v1

    .line 434
    .restart local v1    # "merged":I
    const-string/jumbo v2, "accessibility_captioning_background_color"

    .line 433
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 435
    .end local v1    # "merged":I
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_5

    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_6

    .line 436
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/exsettings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/exsettings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/exsettings/accessibility/ColorPreference;Lcom/android/exsettings/accessibility/ColorPreference;)I

    move-result v1

    .line 438
    .restart local v1    # "merged":I
    const-string/jumbo v2, "accessibility_captioning_window_color"

    .line 437
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 439
    .end local v1    # "merged":I
    :cond_6
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/exsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_7

    .line 440
    const-string/jumbo v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 441
    :cond_7
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/exsettings/accessibility/PresetPreference;

    if-ne v2, p1, :cond_8

    .line 442
    const-string/jumbo v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-direct {p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 444
    :cond_8
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/exsettings/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1

    .line 445
    const-string/jumbo v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    iget-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 139
    .local v0, "enabled":Z
    const v1, 0x7f130056

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 140
    iget-object v2, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 142
    const v1, 0x7f130055

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    .line 143
    const v1, 0x7f130054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/exsettings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 135
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
