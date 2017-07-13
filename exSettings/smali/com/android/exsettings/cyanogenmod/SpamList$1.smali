.class Lcom/android/exsettings/cyanogenmod/SpamList$1;
.super Landroid/database/ContentObserver;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/SpamList;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/SpamList;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/SpamList;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/SpamList$1;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$1;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/SpamList;->-get3(Lcom/android/exsettings/cyanogenmod/SpamList;)Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$1;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/SpamList;->-get3(Lcom/android/exsettings/cyanogenmod/SpamList;)Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->cancel(Z)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$1;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    new-instance v1, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;

    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/SpamList$1;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-direct {v1, v2, v3}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;-><init>(Lcom/android/exsettings/cyanogenmod/SpamList;Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;)V

    invoke-static {v0, v1}, Lcom/android/exsettings/cyanogenmod/SpamList;->-set1(Lcom/android/exsettings/cyanogenmod/SpamList;Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;)Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$1;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/SpamList;->-get3(Lcom/android/exsettings/cyanogenmod/SpamList;)Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/SpamList$FetchFilters;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method
