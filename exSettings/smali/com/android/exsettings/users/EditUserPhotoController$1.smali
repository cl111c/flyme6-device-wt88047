.class Lcom/android/exsettings/users/EditUserPhotoController$1;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/EditUserPhotoController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/EditUserPhotoController;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/exsettings/users/EditUserPhotoController$1;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/exsettings/users/EditUserPhotoController$1;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/exsettings/users/EditUserPhotoController;->-wrap1(Lcom/android/exsettings/users/EditUserPhotoController;)V

    .line 94
    return-void
.end method
