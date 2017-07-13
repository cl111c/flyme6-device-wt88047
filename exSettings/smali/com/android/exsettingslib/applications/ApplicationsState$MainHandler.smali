.class Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/applications/ApplicationsState;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 691
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/exsettingslib/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 692
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 694
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    .line 695
    .local v1, "s":Lcom/android/exsettingslib/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, v1, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    iget-object v3, v1, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 700
    .end local v1    # "s":Lcom/android/exsettingslib/applications/ApplicationsState$Session;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 701
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 706
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 710
    .end local v0    # "i":I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    .line 712
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 711
    invoke-interface {v3, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 716
    .end local v0    # "i":I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 721
    .end local v0    # "i":I
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-object v4, v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    .line 723
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 722
    :goto_6
    invoke-interface {v4, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    move v2, v3

    .line 723
    goto :goto_6

    .line 727
    .end local v0    # "i":I
    :pswitch_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 728
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 732
    .end local v0    # "i":I
    :pswitch_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/exsettingslib/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
