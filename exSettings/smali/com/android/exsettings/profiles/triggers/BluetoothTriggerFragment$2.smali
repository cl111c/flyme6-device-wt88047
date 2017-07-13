.class Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$2;
.super Ljava/lang/Object;
.source "BluetoothTriggerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$2;->this$0:Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "bluetoothSettings":Landroid/content/Intent;
    const-string/jumbo v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment$2;->this$0:Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/profiles/triggers/BluetoothTriggerFragment;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method
