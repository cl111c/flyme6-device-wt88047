.class Lcom/android/exsettings/notification/ZenRuleNameDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Lcom/android/exsettings/notification/ServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/ZenRuleNameDialog;
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
    .line 203
    iput-object p1, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    const/4 v7, 0x0

    .line 206
    invoke-static {}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Services reloaded: count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v4}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v5}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v7, v5, v6

    iget-object v5, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v5}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v7, v5, v6

    const/4 v5, 0x0

    aput-object v7, v4, v5

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "si$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 210
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Lcom/android/exsettings/notification/ZenModeExternalRuleSettings;->getRuleInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    .line 211
    .local v1, "ri":Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    if-eqz v1, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v4}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    aput-object v1, v4, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v4}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-get1(Lcom/android/exsettings/notification/ZenRuleNameDialog;)[Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    array-length v4, v4

    if-ne v0, v4, :cond_1

    .line 219
    .end local v1    # "ri":Lcom/android/exsettings/notification/ZenRuleNameDialog$RuleInfo;
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/notification/ZenRuleNameDialog$1;->this$0:Lcom/android/exsettings/notification/ZenRuleNameDialog;

    invoke-static {v4}, Lcom/android/exsettings/notification/ZenRuleNameDialog;->-wrap2(Lcom/android/exsettings/notification/ZenRuleNameDialog;)V

    .line 205
    return-void
.end method
