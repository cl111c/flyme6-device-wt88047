.class Lcom/android/exsettings/applications/AppOpsDetails$3;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/AppOpsDetails;->addInternetSwitch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/AppOpsDetails;

.field final synthetic val$policy:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/AppOpsDetails;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AppOpsDetails;
    .param p2, "val$policy"    # I

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->val$policy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 311
    if-eqz p2, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/exsettings/applications/AppOpsDetails;->-get2(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-static {v1}, Lcom/android/exsettings/applications/AppOpsDetails;->-get1(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 313
    iget v2, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->val$policy:I

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    .line 310
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/exsettings/applications/AppOpsDetails;->-get2(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-static {v1}, Lcom/android/exsettings/applications/AppOpsDetails;->-get1(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 316
    iget v2, p0, Lcom/android/exsettings/applications/AppOpsDetails$3;->val$policy:I

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    goto :goto_0
.end method
