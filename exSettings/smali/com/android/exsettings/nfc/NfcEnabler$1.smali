.class Lcom/android/exsettings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/nfc/NfcEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nfc/NfcEnabler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/exsettings/nfc/NfcEnabler$1;->this$0:Lcom/android/exsettings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/exsettings/nfc/NfcEnabler$1;->this$0:Lcom/android/exsettings/nfc/NfcEnabler;

    const-string/jumbo v2, "android.nfc.extra.ADAPTER_STATE"

    .line 50
    const/4 v3, 0x1

    .line 49
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/exsettings/nfc/NfcEnabler;->-wrap0(Lcom/android/exsettings/nfc/NfcEnabler;I)V

    .line 46
    :cond_0
    return-void
.end method
