.class Lcom/android/exsettings/sim/SimSettings$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$1;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$1;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$1;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/exsettings/sim/SimSettings;->-wrap4(Lcom/android/exsettings/sim/SimSettings;)V

    goto :goto_0
.end method
