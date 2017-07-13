.class final Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 296
    iput-object p2, p0, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 294
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 301
    new-instance v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-direct {v6}, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;-><init>()V

    .line 302
    .local v6, "keyboards":Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v10, "input"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 304
    .local v2, "im":Landroid/hardware/input/InputManager;
    iget-object v8, p0, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 303
    invoke-virtual {v2, v8}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "keyboardLayoutDescriptors":[Ljava/lang/String;
    array-length v10, v5

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v4, v5, v8

    .line 306
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 307
    .local v3, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v3, :cond_0

    .line 308
    iget-object v11, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 311
    .end local v3    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1
    iget-object v8, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 314
    iget-object v8, p0, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2, v8}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "currentKeyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 316
    iget-object v8, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 317
    .local v7, "numKeyboardLayouts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 318
    iget-object v8, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v8}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 320
    iput v1, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 326
    .end local v1    # "i":I
    .end local v7    # "numKeyboardLayouts":I
    :cond_2
    iget-object v8, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 327
    iget-object v8, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iput v9, v6, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 330
    :cond_3
    return-object v6

    .line 317
    .restart local v1    # "i":I
    .restart local v7    # "numKeyboardLayouts":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->loadInBackground()Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 336
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->forceLoad()V

    .line 334
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 342
    invoke-virtual {p0}, Lcom/android/exsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->cancelLoad()Z

    .line 340
    return-void
.end method
