.class Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;
    .param p2, "val$mode"    # I

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    iput p2, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Lcom/android/exsettings/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/deviceinfo/UsbBackend;->setMode(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 132
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 127
    return-void
.end method
