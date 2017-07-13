.class Lcom/android/exsettings/notification/ZenRuleNameDialog$2;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 91
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-wrap1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get2(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get3(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get3(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 95
    if-eqz v1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    iget-object v2, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v2}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-wrap0(Lcom/android/exsettings/notification/ZenRuleNameDialog;)Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->onOk(Ljava/lang/String;Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 93
    return-void
.end method
