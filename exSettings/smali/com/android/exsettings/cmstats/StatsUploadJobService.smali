.class public Lcom/android/exsettings/cmstats/StatsUploadJobService;
.super Landroid/app/job/JobService;
.source "StatsUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrentJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/cmstats/StatsUploadJobService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/cmstats/StatsUploadJobService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceVersion"    # Ljava/lang/String;
    .param p4, "deviceCountry"    # Ljava/lang/String;
    .param p5, "deviceCarrier"    # Ljava/lang/String;
    .param p6, "deviceCarrierId"    # Ljava/lang/String;
    .param p7, "optOut"    # Z

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->uploadToCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/cmstats/StatsUploadJobService;Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->uploadToCyanogen(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/android/exsettings/cmstats/StatsUploadJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private getAuthToken()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 240
    const/4 v6, 0x0

    .line 242
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const v7, 0x7f0c03d8

    invoke-virtual {p0, v7}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 244
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 245
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 247
    const-string/jumbo v7, "Accept-Encoding"

    const-string/jumbo v9, "identity"

    invoke-virtual {v6, v7, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v7, "Content-Type"

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v6, v7, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 252
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 253
    .local v3, "responseCode":I
    const/16 v7, 0xc8

    if-ne v3, v7, :cond_3

    const/4 v4, 0x1

    .line 254
    .local v4, "success":Z
    :goto_0
    sget-boolean v7, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "server auth response code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    if-eqz v4, :cond_4

    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "response":Ljava/lang/String;
    sget-boolean v7, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 257
    sget-object v7, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "server auth response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    if-eqz v4, :cond_5

    .line 265
    if-eqz v6, :cond_2

    .line 266
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 260
    :cond_2
    return-object v2

    .line 253
    .end local v2    # "response":Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "success":Z
    goto :goto_0

    :cond_4
    move v7, v8

    .line 255
    goto :goto_1

    .line 265
    .restart local v2    # "response":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_6

    .line 266
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "responseCode":I
    .end local v4    # "success":Z
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_6
    :goto_2
    const-string/jumbo v7, ""

    return-object v7

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v7, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "error getting auth token"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    if-eqz v6, :cond_6

    .line 266
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 265
    if-eqz v6, :cond_7

    .line 266
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 264
    :cond_7
    throw v7
.end method

.method private getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    .locals 6
    .param p1, "httpUrlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "errorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v1, Ljava/io/BufferedInputStream;

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 274
    :goto_0
    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 278
    .local v1, "responseStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    .line 279
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 278
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 280
    .local v2, "responseStreamReader":Ljava/io/BufferedReader;
    const-string/jumbo v0, ""

    .line 281
    .local v0, "line":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 276
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "responseStream":Ljava/io/InputStream;
    .end local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    .line 285
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStreamReader":Ljava/io/BufferedReader;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 286
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private uploadToCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceVersion"    # Ljava/lang/String;
    .param p4, "deviceCountry"    # Ljava/lang/String;
    .param p5, "deviceCarrier"    # Ljava/lang/String;
    .param p6, "deviceCarrierId"    # Ljava/lang/String;
    .param p7, "optOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const v5, 0x7f0c03d6

    invoke-virtual {p0, v5}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 167
    const-string/jumbo v7, "opt_out"

    if-eqz p7, :cond_2

    const-string/jumbo v5, "1"

    .line 166
    :goto_0
    invoke-virtual {v6, v7, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 168
    const-string/jumbo v6, "device_hash"

    .line 166
    invoke-virtual {v5, v6, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 169
    const-string/jumbo v6, "device_name"

    .line 166
    invoke-virtual {v5, v6, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 170
    const-string/jumbo v6, "device_version"

    .line 166
    invoke-virtual {v5, v6, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 171
    const-string/jumbo v6, "device_country"

    .line 166
    invoke-virtual {v5, v6, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 172
    const-string/jumbo v6, "device_carrier"

    .line 166
    invoke-virtual {v5, v6, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 173
    const-string/jumbo v6, "device_carrier_id"

    .line 166
    invoke-virtual {v5, v6, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 174
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 177
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 178
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 179
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 181
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 182
    .local v0, "responseCode":I
    sget-boolean v5, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cm server response code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_3

    const/4 v1, 0x1

    .line 184
    .local v1, "success":Z
    :goto_1
    if-nez v1, :cond_1

    .line 185
    sget-object v6, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed sending, server returned: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 186
    if-eqz v1, :cond_4

    const/4 v5, 0x0

    .line 185
    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 188
    return v1

    .line 167
    .end local v0    # "responseCode":I
    .end local v1    # "success":Z
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    const-string/jumbo v5, "0"

    goto/16 :goto_0

    .line 183
    .restart local v0    # "responseCode":I
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "success":Z
    goto :goto_1

    .line 186
    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 189
    .end local v0    # "responseCode":I
    .end local v1    # "success":Z
    :catchall_0
    move-exception v5

    .line 190
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
    throw v5
.end method

.method private uploadToCyanogen(Lorg/json/JSONObject;)Z
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 197
    invoke-direct {p0}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "authToken":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 200
    sget-object v9, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "no auth token!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    new-instance v5, Ljava/net/URL;

    const v9, 0x7f0c03d7

    invoke-virtual {p0, v9}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 206
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 207
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 208
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 210
    const-string/jumbo v9, "Accept-Encoding"

    const-string/jumbo v10, "identity"

    invoke-virtual {v6, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v9, "Authorization"

    invoke-virtual {v6, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v9, "Content-Type"

    const-string/jumbo v10, "application/json"

    invoke-virtual {v6, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 215
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v9, v1, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 216
    .local v7, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 218
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 219
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 221
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 223
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 224
    .local v3, "responseCode":I
    const/16 v9, 0xc8

    if-ne v3, v9, :cond_4

    const/4 v4, 0x1

    .line 226
    .local v4, "success":Z
    :goto_0
    if-eqz v4, :cond_1

    const/4 v8, 0x0

    :cond_1
    invoke-direct {p0, v6, v8}, Lcom/android/exsettings/cmstats/StatsUploadJobService;->getResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "response":Ljava/lang/String;
    sget-boolean v8, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 228
    sget-object v8, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "server responseCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", response="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    if-nez v4, :cond_3

    .line 231
    sget-object v8, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed sending, server returned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 233
    return v4

    .line 224
    .end local v2    # "response":Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "success":Z
    goto :goto_0

    .line 234
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v3    # "responseCode":I
    .end local v4    # "success":Z
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v8

    .line 235
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    throw v8
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v4, 0x1

    .line 66
    sget-boolean v1, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartJob() called with jobParameters = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    new-instance v0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;-><init>(Lcom/android/exsettings/cmstats/StatsUploadJobService;Landroid/app/job/JobParameters;)V

    .line 69
    .local v0, "uploadTask":Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;
    iget-object v1, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-array v2, v4, [Ljava/lang/Void;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return v4
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v4, 0x1

    .line 76
    sget-boolean v1, Lcom/android/exsettings/cmstats/StatsUploadJobService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/android/exsettings/cmstats/StatsUploadJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopJob() called with jobParameters = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/cmstats/StatsUploadJobService;->mCurrentJobs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;

    .line 82
    .local v0, "cancelledJob":Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, v4}, Lcom/android/exsettings/cmstats/StatsUploadJobService$StatsUploadTask;->cancel(Z)Z

    .line 85
    return v4

    .line 88
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
