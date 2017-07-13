.class Lcom/android/exsettings/RadioInfo$13;
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
    .line 1068
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$13;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1071
    iget-object v2, p0, Lcom/android/exsettings/RadioInfo$13;->this$0:Lcom/android/exsettings/RadioInfo;

    const-string/jumbo v3, "toggle %s: currently %s"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    .line 1072
    const-string/jumbo v1, "persist.radio.ramdump"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/android/exsettings/RadioInfo$13;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/exsettings/RadioInfo;->-wrap4(Lcom/android/exsettings/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "on"

    :goto_0
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 1071
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/exsettings/RadioInfo;->-wrap6(Lcom/android/exsettings/RadioInfo;Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo$13;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/exsettings/RadioInfo;->-wrap2(Lcom/android/exsettings/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1074
    .local v0, "newValue":Z
    :goto_1
    const-string/jumbo v2, "persist.radio.ramdump"

    if-eqz v0, :cond_2

    const-string/jumbo v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo$13;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/exsettings/RadioInfo;->-wrap21(Lcom/android/exsettings/RadioInfo;)V

    .line 1070
    return-void

    .line 1072
    .end local v0    # "newValue":Z
    :cond_0
    const-string/jumbo v1, "off"

    goto :goto_0

    .line 1073
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newValue":Z
    goto :goto_1

    .line 1074
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2
.end method
