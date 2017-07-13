.class Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$5;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method constructor <init>(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;->-wrap1(Lcom/android/exsettings/notification/ZenModeScheduleRuleSettings;)V

    .line 207
    return-void
.end method
