.class public Lcom/android/exsettings/dashboard/SearchResultsSummary;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;,
        Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C


# instance fields
.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/dashboard/SearchResultsSummary;)Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/dashboard/SearchResultsSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/dashboard/SearchResultsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->ELLIPSIS:C

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 374
    iput-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 378
    iput-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 371
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 341
    iput-object v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 343
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 338
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 323
    iput-object v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 325
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 320
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 357
    if-nez p1, :cond_0

    .line 358
    return-object v3

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 362
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 363
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/search/Index;->addSavedQuery(Ljava/lang/String;)J

    .line 282
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 351
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 352
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_1
    return-void
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    :cond_0
    return-void

    .line 278
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 333
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_1
    return-void
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    :cond_0
    return-void

    .line 272
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 393
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 394
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0, v3}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 396
    invoke-direct {p0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 392
    :goto_0
    return-void

    .line 398
    :cond_0
    new-instance v0, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/exsettings/dashboard/SearchResultsSummary;Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 399
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 384
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 382
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v0, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/exsettings/dashboard/SearchResultsSummary;Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 388
    iget-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x22

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 121
    new-instance v0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const-string/jumbo v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 117
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 162
    const v1, 0x7f0400fa

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f13020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 165
    const v1, 0x7f130210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 167
    const v1, 0x7f130211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 168
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/exsettings/dashboard/SearchResultsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/exsettings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 218
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    const v4, 0x7f0400fb

    .line 218
    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 222
    const v1, 0x7f13020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 223
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/exsettings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 245
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    const v4, 0x7f0400fc

    .line 245
    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 249
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 146
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 147
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 149
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 150
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/exsettings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 151
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/exsettings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 153
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 155
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onDestroy()V

    .line 144
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iput-boolean v2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 303
    invoke-direct {p0, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 311
    :goto_0
    return v3

    .line 306
    :cond_0
    iput-boolean v3, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 307
    invoke-direct {p0, v2}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 308
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 289
    invoke-direct {p0, v1}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 290
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->updateSearchResults()V

    .line 291
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    .line 293
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 261
    iget-boolean v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    .line 258
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string/jumbo v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onStop()V

    .line 139
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->clearSuggestions()V

    .line 140
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->clearResults()V

    .line 136
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 266
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 316
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 317
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 314
    return-void
.end method
