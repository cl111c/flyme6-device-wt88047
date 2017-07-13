.class Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;
.super Landroid/os/Handler;
.source "BlacklistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;


# direct methods
.method constructor <init>(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$1:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 232
    .local v0, "lookupIndex":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$1:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-static {v2}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->-get0(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$1:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-static {v2}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->-get5(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 233
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$1:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-static {v2}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->-get5(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 236
    iget-object v2, p0, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$1:Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-virtual {v2}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;->notifyDataSetChanged()V

    .line 230
    return-void
.end method
