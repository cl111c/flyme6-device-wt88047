.class Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$1:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iput-object p2, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 556
    iget-object v5, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 557
    .local v2, "um":Landroid/os/UserManager;
    const-string/jumbo v5, "no_share_location"

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 558
    iget-object v5, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    .line 559
    const-string/jumbo v6, "location_mode"

    .line 558
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 560
    .local v0, "currentMode":I
    const/4 v1, 0x3

    .line 561
    .local v1, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 575
    :goto_0
    iget-object v5, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "location_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    if-eqz v1, :cond_0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 563
    :pswitch_0
    const/4 v1, 0x2

    .line 564
    goto :goto_0

    .line 566
    :pswitch_1
    const/4 v1, 0x3

    .line 567
    goto :goto_0

    .line 569
    :pswitch_2
    const/4 v1, 0x0

    .line 570
    goto :goto_0

    .line 572
    :pswitch_3
    const/4 v1, 0x3

    .line 573
    goto :goto_0

    :cond_0
    move v3, v4

    .line 576
    goto :goto_1

    .line 579
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$1:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v6, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_2
    move v3, v4

    goto :goto_2

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 554
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$1:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    .line 585
    iget-object v2, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    .line 586
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 584
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 587
    iget-object v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 583
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 583
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
