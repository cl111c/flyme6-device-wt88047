.class Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/nx/dslv/DragSortListView;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/DragSortListView;

    .prologue
    const/4 v3, 0x0

    .line 2956
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    .line 2951
    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2952
    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2954
    iput-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2957
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2958
    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "dslv_state.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 2960
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2962
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 2963
    const-string/jumbo v2, "mobeta"

    const-string/jumbo v3, "file created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2956
    :cond_0
    :goto_0
    return-void

    .line 2964
    :catch_0
    move-exception v0

    .line 2965
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "mobeta"

    const-string/jumbo v3, "Could not create dslv_state.txt"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const-string/jumbo v2, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public appendState()V
    .locals 7

    .prologue
    .line 2979
    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_0

    .line 2980
    return-void

    .line 2983
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildCount()I

    move-result v0

    .line 2985
    .local v0, "children":I
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2986
    .local v1, "first":I
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Positions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2988
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2990
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2992
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 2994
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v4, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2996
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 2999
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v4, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3001
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get5(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3005
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get5(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap2(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get5(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap1(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 3004
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3006
    const-string/jumbo v4, "</FirstExpBlankHeight>\n"

    .line 3004
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get16(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3009
    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get16(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap2(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v6}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get16(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap1(Lcom/android/exsettings/nx/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 3008
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3010
    const-string/jumbo v4, "</SecondExpBlankHeight>\n"

    .line 3008
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get17(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get8(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3013
    const-string/jumbo v4, "</SrcHeight>\n"

    .line 3012
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3014
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get12(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-get10(Lcom/android/exsettings/nx/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 3019
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    add-int v5, v1, v2

    iget-object v6, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->this$0:Lcom/android/exsettings/nx/dslv/DragSortListView;

    invoke-virtual {v6, v2}, Lcom/android/exsettings/nx/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/exsettings/nx/dslv/DragSortListView;->-wrap3(Lcom/android/exsettings/nx/dslv/DragSortListView;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3021
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</ShuffleEdges>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 3026
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_5

    .line 3027
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 3028
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2978
    :cond_5
    return-void
.end method

.method public flush()V
    .locals 6

    .prologue
    .line 3033
    iget-boolean v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_0

    .line 3034
    return-void

    .line 3039
    :cond_0
    const/4 v0, 0x1

    .line 3040
    .local v0, "append":Z
    :try_start_0
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    if-nez v3, :cond_1

    .line 3041
    const/4 v0, 0x0

    .line 3043
    :cond_1
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3045
    .local v2, "writer":Ljava/io/FileWriter;
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3046
    iget-object v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3048
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 3049
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 3051
    iget v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3032
    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 3052
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2972
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 3058
    iget-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3059
    iget-object v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    invoke-virtual {p0}, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 3061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/nx/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 3057
    :cond_0
    return-void
.end method
