.class Lcom/android/exsettings/wifi/WifiAPITest$1;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WifiAPITest;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/WifiAPITest;
    .param p2, "val$input"    # Landroid/widget/EditText;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiAPITest$1;->this$0:Lcom/android/exsettings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/exsettings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 112
    .local v0, "value":Landroid/text/Editable;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiAPITest$1;->this$0:Lcom/android/exsettings/wifi/WifiAPITest;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/exsettings/wifi/WifiAPITest;->-set0(Lcom/android/exsettings/wifi/WifiAPITest;I)I

    .line 113
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiAPITest$1;->this$0:Lcom/android/exsettings/wifi/WifiAPITest;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiAPITest;->-get0(Lcom/android/exsettings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiAPITest$1;->this$0:Lcom/android/exsettings/wifi/WifiAPITest;

    invoke-static {v2}, Lcom/android/exsettings/wifi/WifiAPITest;->-get1(Lcom/android/exsettings/wifi/WifiAPITest;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 110
    return-void
.end method
