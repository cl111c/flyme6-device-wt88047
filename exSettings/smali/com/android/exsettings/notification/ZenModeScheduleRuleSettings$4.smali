.class Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;
.super Lcom/android/exsettings/notification/ZenModeScheduleDaysSelection;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # [I

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0, p2, p3}, Lcom/android/exsettings/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V

    return-void
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 4
    .param p1, "days"    # [I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    iget-boolean v0, v0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->mDisableListeners:Z

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 200
    :cond_1
    sget-boolean v0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "days.onChanged days="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 202
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 197
    return-void
.end method
