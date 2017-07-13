.class Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpamAdapter"
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/SpamList;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/SpamList;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/SpamList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;>;"
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->mItems:Ljava/util/List;

    .line 232
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->getItem(I)Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->getItem(I)Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->getItemViewType(I)I

    move-result v3

    .line 286
    .local v3, "viewType":I
    const/4 v2, 0x0

    .line 287
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->getItem(I)Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;

    move-result-object v0

    .line 289
    .local v0, "info":Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
    if-nez v3, :cond_1

    .line 290
    if-nez p2, :cond_0

    .line 291
    new-instance p2, Landroid/widget/TextView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-virtual {v4}, Lcom/android/exsettings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 292
    const v5, 0x1010208

    .line 291
    invoke-direct {p2, v4, v6, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .line 294
    check-cast v2, Landroid/widget/TextView;

    .line 295
    .local v2, "titleView":Landroid/widget/TextView;
    check-cast v0, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;

    .end local v0    # "info":Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
    iget-object v1, v0, Lcom/android/exsettings/cyanogenmod/SpamList$PackageInfo;->applicationLabel:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    .line 303
    .local v1, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-object p2

    .line 297
    .end local v1    # "text":Ljava/lang/String;
    .restart local v0    # "info":Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
    .local v2, "titleView":Landroid/widget/TextView;
    :cond_1
    if-nez p2, :cond_2

    .line 298
    iget-object v4, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-virtual {v4}, Lcom/android/exsettings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040087

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 300
    :cond_2
    const v4, 0x7f130135

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "titleView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 301
    .local v2, "titleView":Landroid/widget/TextView;
    check-cast v0, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;

    .end local v0    # "info":Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
    iget-object v1, v0, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;->messageText:Ljava/lang/String;

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 263
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;

    .line 264
    .local v1, "item":Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 265
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 266
    const-string/jumbo v2, "com.cyanogenmod.spam"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 267
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 268
    check-cast v1, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;

    .end local v1    # "item":Lcom/android/exsettings/cyanogenmod/SpamList$ItemInfo;
    iget-object v2, v1, Lcom/android/exsettings/cyanogenmod/SpamList$NotificationInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 269
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->this$0:Lcom/android/exsettings/cyanogenmod/SpamList;

    invoke-virtual {v2}, Lcom/android/exsettings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/SpamList$SpamAdapter;->notifyDataSetChanged()V

    .line 262
    return-void
.end method
