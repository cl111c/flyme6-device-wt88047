.class Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "StatsUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cmstats/StatsUploadJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mJobParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/exsettings/cmstats/StatsUploadJobService;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/cmstats/StatsUploadJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cmstats/StatsUploadJobService;
    .param p2, "jobParams"    # Landroid/app/job/JobParameters;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/exsettings/cmstats/StatsUploadJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    .line 95
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v12

    .line 104
    .local v12, "extras":Landroid/os/PersistableBundle;
    const-string/jumbo v2, "uniqueId"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "deviceId":Ljava/lang/String;
    const-string/jumbo v2, "deviceName"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "deviceName":Ljava/lang/String;
    const-string/jumbo v2, "version"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "deviceVersion":Ljava/lang/String;
    const-string/jumbo v2, "country"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "deviceCountry":Ljava/lang/String;
    const-string/jumbo v2, "carrier"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "deviceCarrier":Ljava/lang/String;
    const-string/jumbo v2, "carrierId"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "deviceCarrierId":Ljava/lang/String;
    const-string/jumbo v2, "timeStamp"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 111
    .local v16, "timeStamp":J
    const-string/jumbo v2, "optOut"

    invoke-virtual {v12, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 113
    .local v9, "optOut":Z
    const/4 v15, 0x0

    .line 114
    .local v15, "success":Z
    const-string/jumbo v2, "job_type"

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 115
    .local v13, "jobType":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    packed-switch v13, :pswitch_data_0

    .line 147
    .end local v15    # "success":Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-static {}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "job id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", has finished with success="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 119
    .restart local v15    # "success":Z
    :pswitch_0
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v14, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "optOut"

    invoke-virtual {v14, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v2, "uniqueId"

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v2, "deviceName"

    invoke-virtual {v14, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v2, "version"

    invoke-virtual {v14, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v2, "country"

    invoke-virtual {v14, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v2, "carrier"

    invoke-virtual {v14, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v2, "carrierId"

    invoke-virtual {v14, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v2, "timestamp"

    move-wide/from16 v0, v16

    invoke-virtual {v14, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/exsettings/cmstats/StatsUploadJobService;

    invoke-static {v2, v14}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->-wrap1(Lcom/android/exsettings/cmstats/StatsUploadJobService;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .local v15, "success":Z
    goto :goto_0

    .line 130
    .end local v14    # "json":Lorg/json/JSONObject;
    .local v15, "success":Z
    :catch_0
    move-exception v11

    .line 131
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v18, "Could not upload stats checkin to cyanogen server"

    move-object/from16 v0, v18

    invoke-static {v2, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 138
    .end local v11    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/exsettings/cmstats/StatsUploadJobService;

    invoke-static/range {v2 .. v9}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->-wrap0(Lcom/android/exsettings/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .local v15, "success":Z
    goto/16 :goto_0

    .line 140
    .local v15, "success":Z
    :catch_1
    move-exception v10

    .line 141
    .local v10, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v18, "Could not upload stats checkin to commnity server"

    move-object/from16 v0, v18

    invoke-static {v2, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/exsettings/cmstats/StatsUploadJobService;

    invoke-static {v0}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->-get2(Lcom/android/exsettings/cmstats/StatsUploadJobService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->this$0:Lcom/android/exsettings/cmstats/StatsUploadJobService;

    iget-object v2, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 154
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
