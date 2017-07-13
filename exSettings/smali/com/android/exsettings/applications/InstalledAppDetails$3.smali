.class Lcom/android/exsettings/applications/InstalledAppDetails$3;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/android/exsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/InstalledAppDetails;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$3;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult([I[Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "counts"    # [I
    .param p2, "groupLabels"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1033
    iget-object v5, p0, Lcom/android/exsettings/applications/InstalledAppDetails$3;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1034
    return-void

    .line 1036
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/applications/InstalledAppDetails$3;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-static {v5, v6}, Lcom/android/exsettings/applications/InstalledAppDetails;->-set1(Lcom/android/exsettings/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 1037
    iget-object v5, p0, Lcom/android/exsettings/applications/InstalledAppDetails$3;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/exsettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1038
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1039
    .local v3, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    .line 1040
    aget v4, p1, v8

    .line 1041
    .local v4, "totalCount":I
    const/4 v5, 0x2

    aget v0, p1, v5

    .line 1043
    .local v0, "additionalCounts":I
    if-nez v4, :cond_2

    .line 1045
    const v5, 0x7f0c0f26

    .line 1044
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1062
    .end local v0    # "additionalCounts":I
    .end local v3    # "summary":Ljava/lang/CharSequence;
    .end local v4    # "totalCount":I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/exsettings/applications/InstalledAppDetails$3;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-static {v5}, Lcom/android/exsettings/applications/InstalledAppDetails;->-get3(Lcom/android/exsettings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1032
    return-void

    .line 1047
    .restart local v0    # "additionalCounts":I
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v4    # "totalCount":I
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1048
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez v0, :cond_3

    .line 1050
    new-array v5, v8, [Ljava/lang/Object;

    .line 1052
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1051
    const v6, 0x7f110012

    .line 1050
    invoke-virtual {v2, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1056
    const v5, 0x7f0c0f25

    .line 1055
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1058
    .local v3, "summary":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/CharSequence;
    goto :goto_0
.end method
