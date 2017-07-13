.class Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask$1;
.super Ljava/lang/Object;
.source "LtoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

.field final synthetic val$connection:Ljava/net/URLConnection;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;Ljava/net/URLConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;
    .param p2, "val$connection"    # Ljava/net/URLConnection;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask$1;->this$1:Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask;

    iput-object p2, p0, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask$1;->val$connection:Ljava/net/URLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    const-wide/32 v2, 0xafc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 193
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/LtoService$LtoDownloadTask$1;->val$connection:Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
