.class Lcom/android/exsettings/RadioInfo$5;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 895
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$5;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    .line 898
    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "content://icc/sdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 897
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 904
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.phone"

    .line 905
    const-string/jumbo v2, "com.android.phone.ADNList"

    .line 904
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    iget-object v1, p0, Lcom/android/exsettings/RadioInfo$5;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 907
    const/4 v1, 0x1

    return v1
.end method
