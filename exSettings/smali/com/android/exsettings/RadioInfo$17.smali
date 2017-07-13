.class Lcom/android/exsettings/RadioInfo$17;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/RadioInfo;

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$17;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$17;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-get13(Lcom/android/exsettings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$17;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->-get10(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/RadioInfo$17;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/exsettings/RadioInfo;->-get12(Lcom/android/exsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1121
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$17;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v2}, Lcom/android/exsettings/RadioInfo;->-get0(Lcom/android/exsettings/RadioInfo;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1120
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1118
    return-void
.end method
