.class Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WpsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/WpsDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c073e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    sget-object v2, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-static {v1, v2, v0}, Lcom/android/exsettings/wifi/WpsDialog;->-wrap1(Lcom/android/exsettings/wifi/WpsDialog;Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 101
    return-void

    .line 105
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0742

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c073f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0740

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c073d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    .line 89
    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c073a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 89
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 88
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/wifi/WpsDialog;->-wrap1(Lcom/android/exsettings/wifi/WpsDialog;Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    .line 92
    const v3, 0x7f0c0739

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/wifi/WpsDialog;->-wrap1(Lcom/android/exsettings/wifi/WpsDialog;Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    .line 98
    iget-object v2, p0, Lcom/android/exsettings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c073b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v0, v1, v2}, Lcom/android/exsettings/wifi/WpsDialog;->-wrap1(Lcom/android/exsettings/wifi/WpsDialog;Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 96
    return-void
.end method
