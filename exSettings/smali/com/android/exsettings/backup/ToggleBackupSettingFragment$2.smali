.class Lcom/android/exsettings/backup/ToggleBackupSettingFragment$2;
.super Ljava/lang/Object;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Lcom/android/exsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/backup/ToggleBackupSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/backup/ToggleBackupSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/backup/ToggleBackupSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/backup/ToggleBackupSettingFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/exsettings/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/exsettings/backup/ToggleBackupSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/exsettings/widget/ToggleSwitch;Z)Z
    .locals 2
    .param p1, "toggleSwitch"    # Lcom/android/exsettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 121
    if-nez p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/exsettings/backup/ToggleBackupSettingFragment;

    invoke-static {v0}, Lcom/android/exsettings/backup/ToggleBackupSettingFragment;->-wrap1(Lcom/android/exsettings/backup/ToggleBackupSettingFragment;)V

    .line 125
    return v1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/exsettings/backup/ToggleBackupSettingFragment;

    invoke-static {v0, v1}, Lcom/android/exsettings/backup/ToggleBackupSettingFragment;->-wrap0(Lcom/android/exsettings/backup/ToggleBackupSettingFragment;Z)V

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/exsettings/backup/ToggleBackupSettingFragment;

    iget-object v0, v0, Lcom/android/exsettings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 129
    return v1
.end method
