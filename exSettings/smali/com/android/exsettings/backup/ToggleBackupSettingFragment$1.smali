.class Lcom/android/exsettings/backup/ToggleBackupSettingFragment$1;
.super Landroid/preference/Preference;
.source "ToggleBackupSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/backup/ToggleBackupSettingFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/backup/ToggleBackupSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/backup/ToggleBackupSettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/backup/ToggleBackupSettingFragment;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/exsettings/backup/ToggleBackupSettingFragment$1;->this$0:Lcom/android/exsettings/backup/ToggleBackupSettingFragment;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 65
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/backup/ToggleBackupSettingFragment$1;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
