.class Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

.field mInstaller:Landroid/content/ComponentName;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/android/exsettings/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/android/exsettings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/RunningServiceDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/RunningServiceDetails;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 119
    new-instance v20, Landroid/app/ApplicationErrorReport;

    invoke-direct/range {v20 .. v20}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 120
    .local v20, "report":Landroid/app/ApplicationErrorReport;
    const/4 v2, 0x5

    move-object/from16 v0, v20

    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v20

    iput-wide v2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v20

    iput-boolean v2, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 128
    new-instance v15, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v15}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 129
    .local v15, "info":Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-wide v2, v2, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-wide v4, v4, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v15, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 134
    :goto_1
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 134
    invoke-direct {v9, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v9, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "service_dump.txt"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 137
    .local v14, "filename":Ljava/io/File;
    const/16 v18, 0x0

    .line 139
    .local v18, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v18    # "output":Ljava/io/FileOutputStream;
    .local v19, "output":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v2, "activity"

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 141
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "-a"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "service"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 140
    invoke-static {v2, v3, v4}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 145
    if-eqz v19, :cond_0

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    move-object/from16 v18, v19

    .line 147
    .end local v19    # "output":Ljava/io/FileOutputStream;
    :cond_1
    :goto_3
    const/16 v16, 0x0

    .line 149
    .local v16, "input":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    .end local v16    # "input":Ljava/io/FileInputStream;
    .local v17, "input":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v8, v2, [B

    .line 151
    .local v8, "buffer":[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/FileInputStream;->read([B)I

    .line 152
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v15, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 156
    if-eqz v17, :cond_2

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    move-object/from16 v16, v17

    .line 158
    .end local v8    # "buffer":[B
    .end local v17    # "input":Ljava/io/FileInputStream;
    :cond_3
    :goto_5
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 159
    const-string/jumbo v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, v20

    iput-object v15, v0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 161
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v21, "result":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v2, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    const/high16 v2, 0x10000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/exsettings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void

    .line 125
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v14    # "filename":Ljava/io/File;
    .end local v15    # "info":Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v21    # "result":Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 132
    .restart local v15    # "info":Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, v15, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto/16 :goto_1

    .line 145
    .restart local v9    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "filename":Ljava/io/File;
    .restart local v19    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/io/IOException;
    goto :goto_2

    .line 142
    .end local v12    # "e":Ljava/io/IOException;
    .end local v19    # "output":Ljava/io/FileOutputStream;
    .restart local v18    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    .line 143
    .end local v18    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_6
    const-string/jumbo v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t dump service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 145
    if-eqz v18, :cond_1

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v12

    goto/16 :goto_3

    .line 144
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 145
    :goto_7
    if-eqz v18, :cond_6

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 144
    :cond_6
    :goto_8
    throw v2

    .line 145
    :catch_3
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 156
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v8    # "buffer":[B
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 153
    .end local v8    # "buffer":[B
    .end local v12    # "e":Ljava/io/IOException;
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v16    # "input":Ljava/io/FileInputStream;
    :catch_5
    move-exception v12

    .line 154
    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v12    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_9
    const-string/jumbo v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t read service dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 156
    if-eqz v16, :cond_3

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v12

    goto/16 :goto_5

    .line 155
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 156
    :goto_a
    if-eqz v16, :cond_7

    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 155
    :cond_7
    :goto_b
    throw v2

    .line 156
    :catch_7
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 169
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "filename":Ljava/io/File;
    .end local v15    # "info":Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v20    # "report":Landroid/app/ApplicationErrorReport;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_9

    .line 171
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    .line 172
    const/high16 v5, 0x10080000

    .line 174
    const/high16 v6, 0x80000

    const/4 v7, 0x0

    .line 171
    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_8

    .line 117
    :goto_c
    return-void

    .line 179
    :catch_8
    move-exception v10

    .line 180
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 177
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    :catch_9
    move-exception v13

    .line 178
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "RunningServicesDetails"

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 175
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v11

    .line 176
    .local v11, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v2, "RunningServicesDetails"

    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 182
    .end local v11    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_a

    .line 183
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto :goto_c

    .line 184
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iget-boolean v2, v2, Lcom/android/exsettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v2, :cond_b

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-static {v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->-wrap0(Lcom/android/exsettings/applications/RunningServiceDetails;)V

    goto :goto_c

    .line 190
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/exsettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/exsettings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/exsettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-static {v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->-wrap0(Lcom/android/exsettings/applications/RunningServiceDetails;)V

    goto :goto_c

    .line 155
    .restart local v9    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "filename":Ljava/io/File;
    .restart local v15    # "info":Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    .restart local v20    # "report":Landroid/app/ApplicationErrorReport;
    :catchall_2
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "input":Ljava/io/FileInputStream;
    .local v16, "input":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 153
    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :catch_b
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v16    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 144
    .end local v12    # "e":Ljava/io/IOException;
    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "output":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "output":Ljava/io/FileOutputStream;
    .local v18, "output":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 142
    .end local v18    # "output":Ljava/io/FileOutputStream;
    .restart local v19    # "output":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    move-object/from16 v18, v19

    .end local v19    # "output":Ljava/io/FileOutputStream;
    .restart local v18    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_6
.end method

.method stopActiveService(Z)V
    .locals 4
    .param p1, "confirmed"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/exsettings/applications/RunningState$ServiceItem;

    .line 96
    .local v0, "si":Lcom/android/exsettings/applications/RunningState$ServiceItem;
    if-nez p1, :cond_0

    .line 97
    iget-object v1, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v2, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/exsettings/applications/RunningServiceDetails;->-wrap1(Lcom/android/exsettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/exsettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 103
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/RunningState;->updateNow()V

    .line 106
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-static {v1}, Lcom/android/exsettings/applications/RunningServiceDetails;->-wrap0(Lcom/android/exsettings/applications/RunningServiceDetails;)V

    .line 94
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-boolean v1, v1, Lcom/android/exsettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/exsettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/exsettings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/RunningState;->updateNow()V

    .line 111
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    invoke-static {v1}, Lcom/android/exsettings/applications/RunningServiceDetails;->-wrap0(Lcom/android/exsettings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/exsettings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/exsettings/applications/RunningServiceDetails;->mState:Lcom/android/exsettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/RunningState;->updateNow()V

    goto :goto_0
.end method
