.class Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/net/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/exsettings/net/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/exsettings/net/DataUsageMeteredSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    iput-object p1, p0, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/exsettings/net/DataUsageMeteredSettings;

    .line 130
    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 131
    iput-object p3, p0, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->setPersistent(Z)V

    .line 135
    iput-boolean v7, p0, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 136
    invoke-static {p1}, Lcom/android/exsettings/net/DataUsageMeteredSettings;->-get0(Lcom/android/exsettings/net/DataUsageMeteredSettings;)Lcom/android/exsettingslib/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/exsettingslib/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 137
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_1

    .line 138
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0, v7}, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    .line 140
    invoke-virtual {p0, v6}, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->setEnabled(Z)V

    .line 147
    :goto_0
    iput-boolean v6, p0, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 129
    return-void

    .line 142
    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 153
    iget-boolean v0, p0, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-static {v0}, Lcom/android/exsettings/net/DataUsageMeteredSettings;->-get0(Lcom/android/exsettings/net/DataUsageMeteredSettings;)Lcom/android/exsettingslib/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/exsettings/net/DataUsageMeteredSettings$MeteredPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    .line 151
    :cond_0
    return-void
.end method
