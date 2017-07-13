.class public abstract Lcom/android/exsettings/accessibility/ListDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;,
        Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;,
        Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;
    }
.end annotation


# instance fields
.field private mEntryTitles:[Ljava/lang/CharSequence;

.field private mEntryValues:[I

.field private mListItemLayout:I

.field private mOnValueChangedListener:Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;

.field private mValue:I

.field private mValueIndex:I

.field private mValueSet:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/accessibility/ListDialogPreference;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryValues:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/accessibility/ListDialogPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mListItemLayout:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/accessibility/ListDialogPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected getIndexForValue(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryValues:[I

    .line 179
    .local v2, "values":[I
    if-eqz v2, :cond_1

    .line 180
    array-length v0, v2

    .line 181
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 182
    aget v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 183
    return v1

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueIndex:I

    if-ltz v0, :cond_0

    .line 133
    iget v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueIndex:I

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 117
    :cond_0
    return-object v1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValue:I

    return v0
.end method

.method protected getValueAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget v0, v0, p1

    return v0
.end method

.method protected abstract onBindListItem(Landroid/view/View;I)V
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 8
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v7, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getDialogLayoutResource()I

    move-result v2

    .line 145
    .local v2, "dialogLayout":I
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 146
    .local v4, "picker":Landroid/view/View;
    new-instance v0, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;

    invoke-direct {v0, p0, v7}, Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/exsettings/accessibility/ListDialogPreference;Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;)V

    .line 147
    .local v0, "adapter":Lcom/android/exsettings/accessibility/ListDialogPreference$ListPreferenceAdapter;
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView;

    .line 148
    .local v3, "list":Landroid/widget/AbsListView;
    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    new-instance v6, Lcom/android/exsettings/accessibility/ListDialogPreference$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/accessibility/ListDialogPreference$1;-><init>(Lcom/android/exsettings/accessibility/ListDialogPreference;)V

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    iget v6, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v6}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v5

    .line 165
    .local v5, "selectedPosition":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 166
    invoke-virtual {v3, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 169
    :cond_0
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {p1, v7, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 252
    check-cast v0, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;

    .line 253
    .local v0, "myState":Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 254
    iget v1, v0, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accessibility/ListDialogPreference;->setValue(I)V

    .line 245
    return-void

    .line 248
    .end local v0    # "myState":Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 249
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 234
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    return-object v1

    .line 239
    :cond_0
    new-instance v0, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 240
    .local v0, "myState":Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getValue()I

    move-result v2

    iput v2, v0, Lcom/android/exsettings/accessibility/ListDialogPreference$SavedState;->value:I

    .line 241
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->setValue(I)V

    .line 227
    return-void

    .line 228
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setListItemLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mListItemLayout:I

    .line 74
    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;

    .line 65
    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "titles"    # [Ljava/lang/CharSequence;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    .line 97
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 198
    iget v1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValue:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 199
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueSet:Z

    if-eqz v1, :cond_2

    .line 197
    :cond_0
    :goto_1
    return-void

    .line 198
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 200
    :cond_2
    iput p1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValue:I

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueIndex:I

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueSet:Z

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference;->persistInt(I)Z

    .line 204
    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/accessibility/ListDialogPreference;->notifyDependencyChange(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->notifyChanged()V

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;

    invoke-interface {v1, p0, p1}, Lcom/android/exsettings/accessibility/ListDialogPreference$OnValueChangedListener;->onValueChanged(Lcom/android/exsettings/accessibility/ListDialogPreference;I)V

    goto :goto_1
.end method

.method public setValues([I)V
    .locals 2
    .param p1, "values"    # [I

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mEntryValues:[I

    .line 86
    iget-boolean v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    iget v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/exsettings/accessibility/ListDialogPreference;->getIndexForValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/accessibility/ListDialogPreference;->mValueIndex:I

    .line 83
    :cond_0
    return-void
.end method
