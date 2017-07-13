.class Lcom/android/exsettings/applications/AppOpsDetails$2;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/AppOpsDetails;->refreshUi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/AppOpsDetails;

.field final synthetic val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

.field final synthetic val$switchOp:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/AppOpsDetails;ILcom/android/exsettings/applications/AppOpsState$AppOpEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AppOpsDetails;
    .param p2, "val$switchOp"    # I
    .param p3, "val$entry"    # Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsDetails$2;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/exsettings/applications/AppOpsDetails$2;->val$switchOp:I

    iput-object p3, p0, Lcom/android/exsettings/applications/AppOpsDetails$2;->val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$2;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/exsettings/applications/AppOpsDetails;->-get0(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/applications/AppOpsDetails$2;->val$switchOp:I

    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$2;->val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    .line 261
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$2;->val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 263
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 260
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 259
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
