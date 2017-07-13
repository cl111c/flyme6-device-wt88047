.class Lcom/android/exsettings/wifi/WpsDialog$4;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WpsDialog;->updateDialog(Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -com_android_settings_wifi_WpsDialog$DialogStateSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WpsDialog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/exsettings/wifi/WpsDialog$DialogState;


# direct methods
.method private static synthetic -getcom_android_settings_wifi_WpsDialog$DialogStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/exsettings/wifi/WpsDialog$4;->-com_android_settings_wifi_WpsDialog$DialogStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exsettings/wifi/WpsDialog$4;->-com_android_settings_wifi_WpsDialog$DialogStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->values()[Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/exsettings/wifi/WpsDialog$4;->-com_android_settings_wifi_WpsDialog$DialogStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/exsettings/wifi/WpsDialog;Lcom/android/exsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/WpsDialog;
    .param p2, "val$state"    # Lcom/android/exsettings/wifi/WpsDialog$DialogState;
    .param p3, "val$msg"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    iput-object p2, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->val$state:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    iput-object p3, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 240
    invoke-static {}, Lcom/android/exsettings/wifi/WpsDialog$4;->-getcom_android_settings_wifi_WpsDialog$DialogStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->val$state:Lcom/android/exsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get5(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get6(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get3(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get0(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c09e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get6(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get3(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get4(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WpsDialog;->-get1(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WpsDialog;->-get4(Lcom/android/exsettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    iget-object v0, p0, Lcom/android/exsettings/wifi/WpsDialog$4;->this$0:Lcom/android/exsettings/wifi/WpsDialog;

    invoke-static {v0, v4}, Lcom/android/exsettings/wifi/WpsDialog;->-set0(Lcom/android/exsettings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
