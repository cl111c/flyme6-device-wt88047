.class Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$2;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    iget-object v1, v1, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-static {v1, v0}, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->-wrap0(Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 102
    return-void
.end method
