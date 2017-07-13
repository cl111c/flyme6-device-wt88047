.class Lcom/android/exsettings/users/EditUserInfoController$1$1;
.super Landroid/os/AsyncTask;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/EditUserInfoController$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/users/EditUserInfoController$1;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/EditUserInfoController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/users/EditUserInfoController$1;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/exsettings/users/EditUserInfoController$1$1;->this$1:Lcom/android/exsettings/users/EditUserInfoController$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/users/EditUserInfoController$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/exsettings/users/EditUserInfoController$1$1;->this$1:Lcom/android/exsettings/users/EditUserInfoController$1;

    iget-object v0, v0, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/exsettings/users/EditUserInfoController;->-get2(Lcom/android/exsettings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/users/EditUserInfoController$1$1;->this$1:Lcom/android/exsettings/users/EditUserInfoController$1;

    iget-object v1, v1, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/exsettings/users/EditUserInfoController;->-get1(Lcom/android/exsettings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/android/exsettings/users/EditUserInfoController$1$1;->this$1:Lcom/android/exsettings/users/EditUserInfoController$1;

    iget-object v2, v2, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/exsettings/users/EditUserInfoController;->-get0(Lcom/android/exsettings/users/EditUserInfoController;)Lcom/android/exsettings/users/EditUserPhotoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exsettings/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method
