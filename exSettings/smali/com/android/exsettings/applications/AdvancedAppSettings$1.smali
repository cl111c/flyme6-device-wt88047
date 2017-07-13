.class Lcom/android/exsettings/applications/AdvancedAppSettings$1;
.super Ljava/lang/Object;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/exsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AdvancedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/AdvancedAppSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AdvancedAppSettings;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult([I[Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "counts"    # [I
    .param p2, "groupLabels"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-static {v0, v1}, Lcom/android/exsettings/applications/AdvancedAppSettings;->-set0(Lcom/android/exsettings/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 129
    if-eqz p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/exsettings/applications/AdvancedAppSettings;->-get0(Lcom/android/exsettings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/AdvancedAppSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 131
    aget v3, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, p1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0c0f38

    .line 130
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/exsettings/applications/AdvancedAppSettings;->-get0(Lcom/android/exsettings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
