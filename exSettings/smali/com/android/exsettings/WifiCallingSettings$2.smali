.class Lcom/android/exsettings/WifiCallingSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/WifiCallingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/WifiCallingSettings;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/exsettings/WifiCallingSettings$2;->this$0:Lcom/android/exsettings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/exsettings/WifiCallingSettings$2;->setResultCode(I)V

    .line 144
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings$2;->this$0:Lcom/android/exsettings/WifiCallingSettings;

    invoke-static {v1}, Lcom/android/exsettings/WifiCallingSettings;->-get0(Lcom/android/exsettings/WifiCallingSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings$2;->this$0:Lcom/android/exsettings/WifiCallingSettings;

    invoke-static {v1, p2}, Lcom/android/exsettings/WifiCallingSettings;->-wrap0(Lcom/android/exsettings/WifiCallingSettings;Landroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method
