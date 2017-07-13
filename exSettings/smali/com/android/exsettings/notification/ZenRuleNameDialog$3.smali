.class Lcom/android/exsettings/notification/ZenRuleNameDialog$3;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Lcom/android/exsettings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ZenRuleNameDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$3;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$3;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get4(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Lcom/android/exsettings/notification/ServiceListing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$3;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get4(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Lcom/android/exsettings/notification/ServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$3;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get5(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Lcom/android/exsettings/notification/ServiceListing$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/ServiceListing;->removeCallback(Lcom/android/exsettings/notification/ServiceListing$Callback;)V

    .line 104
    :cond_0
    return-void
.end method
