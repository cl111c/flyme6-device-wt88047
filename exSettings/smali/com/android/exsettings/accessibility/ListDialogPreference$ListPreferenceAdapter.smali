.class Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accessibility/ListDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListPreferenceAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/exsettings/accessibility/ListDialogPreference;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/accessibility/ListDialogPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/accessibility/ListDialogPreference;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/exsettings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/accessibility/ListDialogPreference;Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/accessibility/ListDialogPreference;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/exsettings/accessibility/ListDialogPreference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/exsettings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->-get0(Lcom/android/exsettings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/exsettings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->-get0(Lcom/android/exsettings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/exsettings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->-get0(Lcom/android/exsettings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 282
    if-nez p2, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/exsettings/accessibility/ListDialogPreference;

    invoke-static {v1}, Lcom/android/exsettings/accessibility/ListDialogPreference;->-get1(Lcom/android/exsettings/accessibility/ListDialogPreference;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/exsettings/accessibility/ListDialogPreference;

    invoke-virtual {v0, p2, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference;->onBindListItem(Landroid/view/View;I)V

    .line 289
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method
