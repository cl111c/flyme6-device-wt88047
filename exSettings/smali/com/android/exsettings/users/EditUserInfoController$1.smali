.class Lcom/android/exsettings/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/EditUserInfoController;

.field final synthetic val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic val$currentUserIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$currentUserName:Ljava/lang/CharSequence;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/EditUserInfoController;
    .param p2, "val$userNameView"    # Landroid/widget/EditText;
    .param p3, "val$currentUserName"    # Ljava/lang/CharSequence;
    .param p4, "val$callback"    # Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;
    .param p5, "val$currentUserIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "val$fragment"    # Landroid/app/Fragment;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$currentUserName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 138
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 141
    .local v2, "userName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$currentUserName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 143
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$currentUserName:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-static {v4}, Lcom/android/exsettings/users/EditUserInfoController;->-get0(Lcom/android/exsettings/users/EditUserInfoController;)Lcom/android/exsettings/users/EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exsettings/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-static {v4}, Lcom/android/exsettings/users/EditUserInfoController;->-get0(Lcom/android/exsettings/users/EditUserInfoController;)Lcom/android/exsettings/users/EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exsettings/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 169
    const/4 v4, 0x1

    .line 168
    invoke-virtual {v3, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 171
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "userName":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-virtual {v3}, Lcom/android/exsettings/users/EditUserInfoController;->clear()V

    .line 137
    return-void

    .line 144
    .restart local v2    # "userName":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v4, :cond_4

    .line 145
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;->onLabelChanged(Ljava/lang/CharSequence;)V

    .line 147
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-static {v4}, Lcom/android/exsettings/users/EditUserInfoController;->-get2(Lcom/android/exsettings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-static {v5}, Lcom/android/exsettings/users/EditUserInfoController;->-get1(Lcom/android/exsettings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 148
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    goto :goto_0

    .line 156
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v4, :cond_6

    .line 157
    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$1;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v4, v1}, Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;->onPhotoChanged(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_6
    new-instance v4, Lcom/android/exsettings/users/EditUserInfoController$1$1;

    invoke-direct {v4, p0}, Lcom/android/exsettings/users/EditUserInfoController$1$1;-><init>(Lcom/android/exsettings/users/EditUserInfoController$1;)V

    .line 166
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v3, [Ljava/lang/Void;

    .line 159
    invoke-virtual {v4, v5, v3}, Lcom/android/exsettings/users/EditUserInfoController$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
