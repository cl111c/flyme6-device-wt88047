.class Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Lcom/android/exsettings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeEventRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeEventRuleSettings;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;->this$0:Lcom/android/exsettings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 129
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, "reply":I
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;->this$0:Lcom/android/exsettings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->-get0(Lcom/android/exsettings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v0, v1, :cond_0

    return v3

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;->this$0:Lcom/android/exsettings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->-get0(Lcom/android/exsettings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iput v0, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 132
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;->this$0:Lcom/android/exsettings/notification/ZenModeEventRuleSettings;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenModeEventRuleSettings$3;->this$0:Lcom/android/exsettings/notification/ZenModeEventRuleSettings;

    invoke-static {v2}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->-get0(Lcom/android/exsettings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/ZenModeEventRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 133
    return v3
.end method
