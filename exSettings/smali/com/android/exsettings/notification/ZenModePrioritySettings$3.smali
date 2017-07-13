.class Lcom/android/exsettings/notification/ZenModePrioritySettings$3;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/exsettings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenModePrioritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModePrioritySettings;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 90
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-static {v4}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->-get0(Lcom/android/exsettings/notification/ZenModePrioritySettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v7

    .line 91
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 92
    .local v3, "val":I
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v5, 0xa9

    invoke-static {v4, v5, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 93
    if-eq v3, v6, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, "allowMessages":Z
    :goto_0
    if-ne v3, v6, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v4, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 95
    .local v1, "allowMessagesFrom":I
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v0, v4, :cond_3

    .line 96
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v1, v4, :cond_3

    .line 97
    return v7

    .line 93
    .end local v0    # "allowMessages":Z
    .end local v1    # "allowMessagesFrom":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowMessages":Z
    goto :goto_0

    .line 94
    :cond_2
    move v1, v3

    .restart local v1    # "allowMessagesFrom":I
    goto :goto_1

    .line 99
    :cond_3
    sget-boolean v4, Lcom/android/exsettings/notification/ZenModePrioritySettings;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPrefChange allowMessages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 100
    const-string/jumbo v6, " allowMessagesFrom="

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 100
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/exsettings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 102
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v0, v2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 103
    iput v1, v2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 104
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenModePrioritySettings$3;->this$0:Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v4, v2}, Lcom/android/exsettings/notification/ZenModePrioritySettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    return v4
.end method
