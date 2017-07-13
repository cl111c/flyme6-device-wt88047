.class Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;
.super Landroid/os/AsyncTask;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerDisabler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field newProvisionedState:I

.field final synthetic this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I

    .line 697
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;-><init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 711
    const/4 v2, -0x1

    .line 712
    .local v2, "result":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I

    .line 714
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-get2(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-get0(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-get3(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IExtTelephony;->activateUiccCard(I)I

    move-result v2

    .line 716
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 718
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-get0(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-get3(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IExtTelephony;->deactivateUiccCard(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, "ex":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to activate sub Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap2(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 721
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activate  sub failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v5}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-get3(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap2(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 710
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap3(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V

    .line 729
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 729
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 703
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 704
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-set0(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Z)Z

    .line 705
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->-wrap6(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    .line 706
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setEnabled(Z)V

    .line 702
    return-void
.end method
