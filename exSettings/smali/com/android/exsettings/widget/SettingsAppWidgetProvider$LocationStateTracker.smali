.class final Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;
.super Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationStateTracker"
.end annotation


# instance fields
.field private mCurrentLocationMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;)V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 537
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "location_mode"

    .line 536
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    .line 538
    iget v2, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    if-nez v2, :cond_0

    :goto_0
    return v1

    .line 539
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 518
    const v0, 0x7f0c0c06

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 516
    const v0, 0x7f13028d

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    packed-switch v0, :pswitch_data_0

    .line 526
    :pswitch_0
    const v0, 0x7f020046

    return v0

    .line 524
    :pswitch_1
    const v0, 0x7f020045

    return v0

    .line 530
    :cond_0
    const v0, 0x7f020044

    return v0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 515
    const v0, 0x7f13028c

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 517
    const v0, 0x7f13028e

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 543
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 552
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 550
    return-void
.end method
