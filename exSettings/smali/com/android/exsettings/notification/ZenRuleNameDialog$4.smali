.class Lcom/android/exsettings/notification/ZenRuleNameDialog$4;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 112
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v0}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-wrap3(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V

    .line 124
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 114
    return-void
.end method
