.class Lcom/android/exsettings/applications/ManageAssist$2;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ManageAssist;

.field final synthetic val$newAssitPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/ManageAssist;
    .param p2, "val$newAssitPackage"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageAssist$2;->this$0:Lcom/android/exsettings/applications/ManageAssist;

    iput-object p2, p0, Lcom/android/exsettings/applications/ManageAssist$2;->val$newAssitPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageAssist$2;->this$0:Lcom/android/exsettings/applications/ManageAssist;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageAssist$2;->val$newAssitPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exsettings/applications/ManageAssist;->-wrap0(Lcom/android/exsettings/applications/ManageAssist;Ljava/lang/String;)V

    .line 160
    return-void
.end method
