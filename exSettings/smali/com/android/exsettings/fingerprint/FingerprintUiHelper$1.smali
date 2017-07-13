.class Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fingerprint/FingerprintUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->-get1(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->-get3(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->-get2(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->-get0(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020074

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->-get3(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const v0, 0x7f020073

    goto :goto_1
.end method
