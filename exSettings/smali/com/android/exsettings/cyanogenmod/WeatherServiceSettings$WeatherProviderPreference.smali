.class Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;
.super Landroid/preference/Preference;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherProviderPreference"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSettingsButton:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 271
    iput-object p2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    .line 272
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    .line 274
    const v0, 0x7f04014b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->setLayoutResource(I)V

    .line 275
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v0, v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v0, v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 269
    return-void
.end method

.method private isActiveProvider()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v0, v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    return v0
.end method

.method private launchSettingsActivity(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    .prologue
    .line 333
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p1, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    .line 338
    const v2, 0x7f0c038d

    .line 339
    const/4 v3, 0x1

    .line 337
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 341
    invoke-static {}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markAsActiveProvider()V
    .locals 6

    .prologue
    .line 358
    const-string/jumbo v5, "weather_service_providers"

    .line 357
    invoke-virtual {p0, v5}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 359
    .local v4, "providersCategory":Landroid/preference/PreferenceCategory;
    if-eqz v4, :cond_0

    .line 360
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 361
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 362
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 363
    .local v2, "p":Landroid/preference/Preference;
    instance-of v5, v2, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;

    if-eqz v5, :cond_1

    move-object v3, v2

    .line 364
    check-cast v3, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;

    .line 365
    .local v3, "preference":Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;
    invoke-direct {v3}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->isActiveProvider()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 366
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->setActiveState(Z)V

    .line 373
    .end local v0    # "count":I
    .end local v1    # "index":I
    .end local v2    # "p":Landroid/preference/Preference;
    .end local v3    # "preference":Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->setActiveState(Z)V

    .line 355
    return-void

    .line 361
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    .restart local v2    # "p":Landroid/preference/Preference;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setActiveWeatherProviderService()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v0, v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    if-nez v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->markAsActiveProvider()V

    .line 349
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    const-string/jumbo v1, "weather_provider_service"

    .line 351
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v2, v2, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 282
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mView:Landroid/view/View;

    .line 283
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v2, 0x7f1300fd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 286
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v5, v5, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 287
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference$1;

    invoke-direct {v5, p0, p1}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference$1;-><init>(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v2, v2, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 296
    .local v1, "showSettings":Z
    :goto_0
    const v2, 0x7f130014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "settingsDivider":Landroid/view/View;
    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const v2, 0x7f1300fe

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    .line 300
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v2, v2, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 302
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v3, v3, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 303
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v3, v3, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-void

    .line 295
    .end local v0    # "settingsDivider":Landroid/view/View;
    .end local v1    # "showSettings":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "showSettings":Z
    goto :goto_0

    .restart local v0    # "settingsDivider":Landroid/view/View;
    :cond_1
    move v2, v4

    .line 297
    goto :goto_1

    :cond_2
    move v3, v4

    .line 300
    goto :goto_2

    .line 301
    :cond_3
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 311
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->setActiveWeatherProviderService()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->launchSettingsActivity(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;)V

    .line 308
    return-void
.end method

.method public setActiveState(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iput-boolean p1, v1, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    .line 322
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 324
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-object v1, v1, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 325
    .local v0, "hasSettings":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v1, v1, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 327
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v2, v2, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 328
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderPreference;->mInfo:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;

    iget-boolean v2, v2, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$WeatherProviderServiceInfo;->isActive:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 320
    :cond_0
    return-void

    .line 324
    .end local v0    # "hasSettings":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasSettings":Z
    goto :goto_0

    .line 326
    :cond_2
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method
