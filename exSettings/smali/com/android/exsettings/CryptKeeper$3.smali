.class Lcom/android/exsettings/CryptKeeper$3;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/CryptKeeper;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$3;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 353
    :goto_0
    return-void

    .line 356
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$3;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-wrap12(Lcom/android/exsettings/CryptKeeper;)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$3;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->-wrap5(Lcom/android/exsettings/CryptKeeper;)V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
