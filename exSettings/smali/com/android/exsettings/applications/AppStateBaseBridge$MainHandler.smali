.class Lcom/android/exsettings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/AppStateBaseBridge;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/applications/AppStateBaseBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AppStateBaseBridge;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/exsettings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/exsettings/applications/AppStateBaseBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/applications/AppStateBaseBridge;Lcom/android/exsettings/applications/AppStateBaseBridge$MainHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AppStateBaseBridge;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/exsettings/applications/AppStateBaseBridge;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/exsettings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/exsettings/applications/AppStateBaseBridge;->mCallback:Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;

    invoke-interface {v0}, Lcom/android/exsettings/applications/AppStateBaseBridge$Callback;->onExtraInfoUpdated()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
