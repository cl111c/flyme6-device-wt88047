.class public abstract Lcom/android/exsettings/HighlightingFragment;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "HighlightingFragment.java"


# instance fields
.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mViewHighlighted:Z

.field private mViewKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/HighlightingFragment;->mViewHighlighted:Z

    .line 26
    return-void
.end method

.method private checkTag(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 119
    const/high16 v3, 0x7f130000

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "viewKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2

    .line 121
    .end local v1    # "viewKey":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/HighlightingFragment;->checkTag(Landroid/view/View;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    return-object p1

    .line 104
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 105
    check-cast v2, Landroid/view/ViewGroup;

    .line 106
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 107
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/android/exsettings/HighlightingFragment;->findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 110
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 111
    return-object v4

    .line 107
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "n":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    return-object v6
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/exsettings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/HighlightingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightView(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/exsettings/HighlightingFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/exsettings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/exsettings/HighlightingFragment;->findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/exsettings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/exsettings/HighlightingFragment$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/exsettings/HighlightingFragment$1;-><init>(Lcom/android/exsettings/HighlightingFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 94
    const-wide/16 v4, 0x190

    .line 85
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exsettings/HighlightingFragment;->mViewHighlighted:Z

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public highlightViewIfNeeded()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/exsettings/HighlightingFragment;->mViewHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/exsettings/HighlightingFragment;->highlightView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/exsettings/HighlightingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/exsettings/HighlightingFragment;->highlightViewIfNeeded()V

    .line 54
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string/jumbo v0, "android:view_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/HighlightingFragment;->mViewHighlighted:Z

    .line 38
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    const-string/jumbo v0, "android:view_highlighted"

    iget-boolean v1, p0, Lcom/android/exsettings/HighlightingFragment;->mViewHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method
