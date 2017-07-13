.class Lcom/android/exsettings/applications/AppOpsDetails$1;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/AppOpsDetails;->refreshUi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstMode:Z

.field final synthetic this$0:Lcom/android/exsettings/applications/AppOpsDetails;

.field final synthetic val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

.field final synthetic val$switchOp:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/AppOpsDetails;ILcom/android/exsettings/applications/AppOpsState$AppOpEntry;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AppOpsDetails;
    .param p2, "val$switchOp"    # I
    .param p3, "val$entry"    # Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    iput p2, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->val$switchOp:I

    iput-object p3, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->firstMode:Z

    .line 235
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->firstMode:Z

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->firstMode:Z

    .line 243
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/exsettings/applications/AppOpsDetails;->-get0(Lcom/android/exsettings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->val$switchOp:I

    iget-object v2, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    .line 246
    iget-object v3, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->val$entry:Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v3}, Lcom/android/exsettings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/applications/AppOpsDetails$1;->this$0:Lcom/android/exsettings/applications/AppOpsDetails;

    invoke-static {v4, p3}, Lcom/android/exsettings/applications/AppOpsDetails;->-wrap0(Lcom/android/exsettings/applications/AppOpsDetails;I)I

    move-result v4

    .line 245
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 240
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
