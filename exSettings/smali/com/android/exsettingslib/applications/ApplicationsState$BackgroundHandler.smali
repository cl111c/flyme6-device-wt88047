.class Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler$1;
    }
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/exsettingslib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/exsettingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/exsettingslib/applications/ApplicationsState;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    .line 750
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 924
    new-instance v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 749
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 756
    const/16 v16, 0x0

    .line 757
    .local v16, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 758
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 759
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    .end local v16    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    .local v17, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v16, v17

    .end local v17    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    :cond_0
    monitor-exit v21

    .line 763
    if-eqz v16, :cond_1

    .line 764
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 765
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/exsettingslib/applications/ApplicationsState$Session;

    invoke-virtual/range {v20 .. v20}, Lcom/android/exsettingslib/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 764
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 757
    .end local v6    # "i":I
    .restart local v16    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    :catchall_0
    move-exception v20

    .end local v16    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    :goto_1
    monitor-exit v21

    throw v20

    .line 769
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 754
    :goto_2
    :pswitch_0
    return-void

    .line 773
    :pswitch_1
    const/4 v14, 0x0

    .line 774
    .local v14, "numDone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 776
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_5

    const/16 v20, 0x6

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 777
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 778
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    .line 780
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x6

    .line 779
    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 781
    .local v11, "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 783
    .end local v11    # "m":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 784
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 785
    .local v19, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_3

    .line 786
    add-int/lit8 v14, v14, 0x1

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/exsettingslib/applications/ApplicationsState;->-wrap0(Lcom/android/exsettingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 789
    :cond_3
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v20

    if-ltz v20, :cond_4

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 798
    .local v5, "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-eqz v5, :cond_4

    .line 799
    iget-object v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    const/high16 v22, 0x800000

    and-int v20, v20, v22

    if-nez v20, :cond_4

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 776
    .end local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "userId":I
    :cond_5
    monitor-exit v21

    .line 808
    const/16 v20, 0x6

    move/from16 v0, v20

    if-lt v14, v0, :cond_6

    .line 809
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 774
    :catchall_1
    move-exception v20

    monitor-exit v21

    throw v20

    .line 811
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_7

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 814
    :cond_7
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 818
    .end local v6    # "i":I
    .end local v14    # "numDone":I
    :pswitch_2
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.MAIN"

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 819
    const-string/jumbo v21, "android.intent.category.LAUNCHER"

    .line 818
    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 821
    .local v10, "launchIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_a

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    .line 823
    .restart local v19    # "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    .line 824
    const/16 v21, 0x200

    .line 823
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 825
    .local v8, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 827
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 828
    .local v18, "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 829
    .local v4, "N":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    if-ge v9, v4, :cond_9

    .line 830
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 831
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 832
    .restart local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    if-eqz v5, :cond_8

    .line 833
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 829
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 835
    :cond_8
    const-string/jumbo v20, "ApplicationsState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Cannot find pkg: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 836
    const-string/jumbo v23, " on user "

    .line 835
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    .line 825
    .end local v4    # "N":I
    .end local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    .end local v9    # "j":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :catchall_2
    move-exception v20

    monitor-exit v21

    throw v20

    .restart local v4    # "N":I
    .restart local v9    # "j":I
    .restart local v18    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    :cond_9
    monitor-exit v21

    .line 821
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 843
    .end local v4    # "N":I
    .end local v8    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "j":I
    .end local v18    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v19    # "userId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_b

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 846
    :cond_b
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 849
    .end local v6    # "i":I
    .end local v10    # "launchIntent":Landroid/content/Intent;
    :pswitch_3
    const/4 v14, 0x0

    .line 850
    .restart local v14    # "numDone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 852
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_f

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v14, v0, :cond_f

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 854
    .restart local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-object v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    iget-boolean v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 852
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 855
    :cond_c
    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 856
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 857
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 858
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    .line 860
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x6

    .line 859
    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 861
    .restart local v11    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 863
    .end local v11    # "m":Landroid/os/Message;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    :cond_e
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    .line 850
    .end local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :catchall_3
    move-exception v20

    monitor-exit v21

    throw v20

    .line 855
    .restart local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :catchall_4
    move-exception v20

    :try_start_7
    monitor-exit v5

    throw v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_f
    monitor-exit v21

    .line 870
    if-lez v14, :cond_10

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_10

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 875
    :cond_10
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v14, v0, :cond_11

    .line 876
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 878
    :cond_11
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 882
    .end local v6    # "i":I
    .end local v14    # "numDone":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 884
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v20, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v20, :cond_12

    monitor-exit v21

    .line 886
    return-void

    .line 889
    :cond_12
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 890
    .local v12, "now":J
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_18

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 892
    .restart local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    iget-wide v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->size:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v20, v22, v24

    if-eqz v20, :cond_13

    iget-boolean v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 893
    :cond_13
    iget-wide v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v20, v22, v24

    if-eqz v20, :cond_14

    .line 894
    iget-wide v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x4e20

    sub-long v24, v12, v24

    cmp-long v20, v22, v24

    if-gez v20, :cond_16

    .line 895
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    .line 896
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    .line 898
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x6

    .line 897
    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 899
    .restart local v11    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 901
    .end local v11    # "m":Landroid/os/Message;
    :cond_15
    iput-wide v12, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    iget-object v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    iget-object v0, v5, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    move-object/from16 v24, v0

    .line 904
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_16
    monitor-exit v21

    .line 908
    return-void

    .line 890
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 911
    .end local v5    # "entry":Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;
    :cond_18
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_19

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 913
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    .line 915
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x6

    .line 914
    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 916
    .restart local v11    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/exsettingslib/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/exsettingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/exsettingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .end local v11    # "m":Landroid/os/Message;
    :cond_19
    monitor-exit v21

    goto/16 :goto_2

    .line 882
    .end local v6    # "i":I
    .end local v12    # "now":J
    :catchall_5
    move-exception v20

    monitor-exit v21

    throw v20

    .line 757
    .restart local v17    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    :catchall_6
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    .local v16, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/applications/ApplicationsState$Session;>;"
    goto/16 :goto_1

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
