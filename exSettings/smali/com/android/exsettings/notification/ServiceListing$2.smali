.class Lcom/android/exsettings/notification/ServiceListing$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/ServiceListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/ServiceListing;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/ServiceListing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notification/ServiceListing;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/exsettings/notification/ServiceListing$2;->this$0:Lcom/android/exsettings/notification/ServiceListing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/exsettings/notification/ServiceListing$2;->this$0:Lcom/android/exsettings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/ServiceListing;->reload()Ljava/util/List;

    .line 198
    return-void
.end method
