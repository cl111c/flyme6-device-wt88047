.class Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 198
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get4(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get1(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "cur":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 207
    const v4, 0x7f0c0794

    .line 208
    const/4 v5, 0x1

    .line 206
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 209
    return-void

    .line 213
    .end local v0    # "cur":C
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get4(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get0(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    .line 214
    iget-object v5, p0, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;->-get1(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    new-instance v6, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2$1;-><init>(Lcom/android/exsettings/wifi/p2p/WifiP2pSettings$2;)V

    .line 213
    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 197
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method
