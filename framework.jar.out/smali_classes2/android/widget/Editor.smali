.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$OptionWrapper;,
        Landroid/widget/Editor$FlymeInjector;,
        Landroid/widget/Editor$FlymeStartSelectionActionModeRunnable;,
        Landroid/widget/Editor$FlymeShowSuggestionsRunnable;,
        Landroid/widget/Editor$FlymeInsertionPointCursorController;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$1;
    }
.end annotation


# static fields
.field public static final HIDE_OPTION:I = 0x2711

.field public static final SHOW_OPTION:I = 0x2712

.field public mCursorOffsetX:I

.field public mEnableDragSelection:Z

.field public mIsInDragSelectionMode:Z

.field public mLastLayoutHeight:I

.field public mLastScrollTime:J

.field public mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

.field public mSelectionActionModeCallback:Landroid/widget/Editor$TextActionModeCallback;

.field public mSelectonActionModeRunnable:Ljava/lang/Runnable;

.field public mStartActionModeResult:Z

.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final MENU_ITEM_ORDER_CUT:I = 0x1

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x3

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0xa

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x6

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x5

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1


# instance fields
.field mAllowUndo:Z

.field mBlink:Landroid/widget/Editor$Blink;

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mDoubleTap:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsInsertionActionModeStartPending:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field mPreserveDetachedSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private mUpdateWordIteratorText:Z

.field mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set4(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/Editor;)Landroid/text/Layout;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Landroid/widget/Editor;IZ)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Landroid/widget/Editor;I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Landroid/widget/Editor;I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static synthetic -wrap16(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/Editor;I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/widget/Editor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 127
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 121
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 145
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string/jumbo v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    iput-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    iput-boolean v3, p0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Landroid/widget/Editor;->mDoubleTap:Z

    new-instance v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v0, p0, v4}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    new-instance v0, Landroid/widget/Editor$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->initFlymeExtraFields(Landroid/widget/Editor;)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 270
    new-instance v0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v0, p0, v4}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler;)V

    iput-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 266
    return-void
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 708
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 709
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 711
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:dimen@textview_error_popup_default_width#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 714
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    .line 713
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 715
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 716
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 717
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 716
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 724
    :cond_0
    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 725
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 707
    return-void
.end method

.method private destroyDisplayListsData()V
    .locals 3

    .prologue
    .line 411
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v2, :cond_2

    .line 412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 413
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 414
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v1

    iget-object v0, v2, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 415
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_1
    const/4 v0, 0x0

    .local v0, "displayList":Landroid/view/RenderNode;
    goto :goto_1

    .line 410
    .end local v0    # "displayList":Landroid/view/RenderNode;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1137
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1138
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1139
    check-cast v2, Landroid/text/Spannable;

    .line 1141
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    .line 1140
    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1142
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1143
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1144
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 1145
    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1146
    and-int/lit8 v0, v0, -0x2

    .line 1147
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .prologue
    const/4 v3, 0x0

    .line 1633
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 1634
    .local v1, "translate":Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1635
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 1636
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1635
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1633
    .end local v0    # "i":I
    .end local v1    # "translate":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "translate":Z
    goto :goto_0

    .line 1638
    .restart local v0    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1632
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1515
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v28

    .line 1516
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1517
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1518
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    return-void

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1520
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1523
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_c

    .line 1524
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v4, :cond_1

    .line 1525
    const-class v4, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    :cond_1
    move-object/from16 v21, p2

    .line 1528
    check-cast v21, Landroid/text/DynamicLayout;

    .line 1529
    .local v21, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v15

    .line 1530
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v17

    .line 1531
    .local v17, "blockIndices":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v31

    .line 1532
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v24

    .line 1534
    .local v24, "indexFirstChangedBlock":I
    const/16 v22, -0x1

    .line 1535
    .local v22, "endOfPreviousBlock":I
    const/16 v33, 0x0

    .line 1536
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 1537
    aget v14, v15, v23

    .line 1538
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    .line 1540
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    const/16 v18, 0x1

    .line 1541
    .local v18, "blockIsInvalid":Z
    :goto_1
    if-eqz v18, :cond_3

    .line 1542
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v16

    .line 1545
    aput v16, v17, v23

    .line 1546
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-eqz v4, :cond_2

    .line 1547
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1549
    :cond_2
    add-int/lit8 v33, v16, 0x1

    .line 1552
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-nez v4, :cond_4

    .line 1553
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1554
    new-instance v5, Landroid/widget/Editor$TextRenderNode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    .line 1553
    aput-object v5, v4, v16

    .line 1557
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v13

    .line 1558
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    iget-object v12, v4, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 1559
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    if-eqz v13, :cond_a

    .line 1560
    :cond_5
    add-int/lit8 v11, v22, 0x1

    .line 1561
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    .line 1562
    .local v34, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    .line 1563
    .local v19, "bottom":I
    const/16 v25, 0x0

    .line 1564
    .local v25, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v32

    .line 1565
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1566
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    .line 1567
    .local v30, "min":F
    const/16 v27, 0x1

    .line 1568
    .local v27, "max":F
    move/from16 v26, v11

    .local v26, "line":I
    :goto_2
    move/from16 v0, v26

    if-gt v0, v14, :cond_7

    .line 1569
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1570
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1568
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1540
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_6
    const/16 v18, 0x0

    .restart local v18    # "blockIsInvalid":Z
    goto/16 :goto_1

    .line 1572
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v27    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_7
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1573
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v32, v0

    .line 1577
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_8
    if-eqz v13, :cond_9

    .line 1579
    sub-int v4, v32, v25

    sub-int v5, v19, v34

    .line 1578
    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v20

    .line 1583
    .local v20, "displayListCanvas":Landroid/view/DisplayListCanvas;
    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v5, v0

    int-to-float v5, v5

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 1584
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1589
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1591
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1597
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :cond_9
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_a
    move-object/from16 v4, p1

    .line 1600
    check-cast v4, Landroid/view/DisplayListCanvas;

    invoke-virtual {v4, v12}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 1602
    move/from16 v22, v14

    .line 1536
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 1588
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    .line 1589
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1591
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1588
    throw v4

    .line 1605
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_b
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 1514
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v21    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v22    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :goto_3
    return-void

    .line 1608
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_3
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1341
    if-eqz p1, :cond_0

    if-nez p5, :cond_1

    .line 1342
    :cond_0
    return v7

    .line 1345
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1346
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 1347
    return v7

    .line 1350
    :cond_2
    const/4 v6, -0x2

    if-eq p2, v6, :cond_e

    .line 1351
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1352
    .local v0, "N":I
    if-gez p2, :cond_6

    .line 1353
    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1354
    const/4 p2, 0x0

    .line 1355
    move p3, v0

    .line 1388
    :cond_3
    :goto_0
    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 1389
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1400
    .end local v0    # "N":I
    :goto_1
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1401
    const/16 v6, 0x800

    invoke-static {v1, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 1402
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1404
    :cond_4
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1405
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1407
    :cond_5
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1408
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1409
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1410
    const/4 v6, 0x1

    return v6

    .line 1359
    .restart local v0    # "N":I
    :cond_6
    add-int/2addr p3, p4

    .line 1361
    instance-of v6, v1, Landroid/text/Spanned;

    if-eqz v6, :cond_9

    move-object v4, v1

    .line 1362
    check-cast v4, Landroid/text/Spanned;

    .line 1364
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Landroid/text/ParcelableSpan;

    .line 1363
    invoke-interface {v4, p2, p3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1365
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 1366
    .local v2, "i":I
    :cond_7
    :goto_2
    if-lez v2, :cond_9

    .line 1367
    add-int/lit8 v2, v2, -0x1

    .line 1368
    aget-object v6, v5, v2

    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1369
    .local v3, "j":I
    if-ge v3, p2, :cond_8

    move p2, v3

    .line 1370
    :cond_8
    aget-object v6, v5, v2

    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1371
    if-le v3, p3, :cond_7

    move p3, v3

    goto :goto_2

    .line 1374
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_9
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1375
    sub-int v6, p3, p4

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1377
    if-le p2, v0, :cond_b

    .line 1378
    move p2, v0

    .line 1382
    :cond_a
    :goto_3
    if-le p3, v0, :cond_c

    .line 1383
    move p3, v0

    goto :goto_0

    .line 1379
    :cond_b
    if-gez p2, :cond_a

    .line 1380
    const/4 p2, 0x0

    goto :goto_3

    .line 1384
    :cond_c
    if-gez p3, :cond_3

    .line 1385
    const/4 p3, 0x0

    goto :goto_0

    .line 1392
    :cond_d
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1396
    .end local v0    # "N":I
    :cond_e
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1397
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1398
    const-string/jumbo v6, ""

    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getActiveLayout()Landroid/text/Layout;
    .locals 3

    .prologue
    .line 3866
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 3867
    .local v1, "layout":Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v0

    .line 3868
    .local v0, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 3869
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3872
    :cond_0
    :goto_0
    return-object v1

    .line 3870
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 6
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .prologue
    .line 1614
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v3, v4

    .line 1615
    .local v3, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 1618
    aget v4, p1, v2

    if-ne v4, v1, :cond_1

    .line 1619
    const/4 v0, 0x1

    .line 1623
    :cond_0
    if-eqz v0, :cond_2

    .line 1615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1617
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1624
    :cond_2
    return v1

    .line 1628
    .end local v0    # "blockIndexFound":Z
    .end local v2    # "j":I
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    iput-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 1629
    return v3
.end method

.method private getCharClusterRange(I)J
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 883
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 884
    .local v0, "textLength":I
    if-ge p1, v0, :cond_0

    .line 885
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 887
    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    .line 888
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 890
    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 14
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .prologue
    .line 4534
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v8

    .line 4535
    .local v8, "trueLine":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    move/from16 v0, p2

    if-le v0, v12, :cond_1

    .line 4538
    :cond_0
    return v8

    .line 4536
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    if-lez v12, :cond_0

    if-ltz p2, :cond_0

    .line 4541
    sub-int v12, v8, p2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_2

    .line 4543
    return v8

    .line 4546
    :cond_2
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v12

    int-to-float v9, v12

    .line 4547
    .local v9, "verticalOffset":F
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    .line 4548
    .local v4, "lineCount":I
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v7, v12, v13

    .line 4550
    .local v7, "slop":F
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v2, v12, v9

    .line 4551
    .local v2, "firstLineTop":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v6, v12, v9

    .line 4552
    .local v6, "prevLineTop":F
    sub-float v12, v6, v7

    add-float v13, v2, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 4554
    .local v11, "yTopBound":F
    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v3, v12, v9

    .line 4555
    .local v3, "lastLineBottom":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v5, v12, v9

    .line 4556
    .local v5, "prevLineBottom":F
    add-float v12, v5, v7

    sub-float v13, v3, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 4560
    .local v10, "yBottomBound":F
    cmpg-float v12, p3, v11

    if-gtz v12, :cond_3

    .line 4561
    add-int/lit8 v12, p2, -0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4567
    .local v1, "currLine":I
    :goto_0
    return v1

    .line 4562
    .end local v1    # "currLine":I
    :cond_3
    cmpl-float v12, p3, v10

    if-ltz v12, :cond_4

    .line 4563
    add-int/lit8 v12, p2, 0x1

    add-int/lit8 v13, v4, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "currLine":I
    goto :goto_0

    .line 4565
    .end local v1    # "currLine":I
    :cond_4
    move/from16 v1, p2

    .restart local v1    # "currLine":I
    goto :goto_0
.end method

.method private getErrorX()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 502
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 504
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 506
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 509
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    .line 512
    :pswitch_0
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 513
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 514
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 513
    sub-int/2addr v5, v6

    add-int v1, v5, v3

    .line 521
    .local v1, "errorX":I
    :goto_0
    return v1

    .line 517
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_1
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_1
    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 518
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v3

    .line 519
    .restart local v1    # "errorX":I
    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getErrorY()I
    .locals 10

    .prologue
    .line 533
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 534
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 535
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    .line 534
    sub-int/2addr v7, v8

    sub-int v6, v7, v0

    .line 537
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 539
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    .line 541
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    .line 544
    :pswitch_0
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 551
    .local v2, "height":I
    :goto_0
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v0, v7

    .line 557
    .local v3, "icontop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 558
    .local v5, "scale":F
    add-int v7, v3, v2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    .line 544
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "height":I
    goto :goto_0

    .line 547
    .end local v2    # "height":I
    :pswitch_1
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .restart local v2    # "height":I
    goto :goto_0

    .end local v2    # "height":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "height":I
    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1172
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1173
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1174
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1176
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1177
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1179
    :cond_0
    return v0

    .line 1183
    .end local v0    # "lastTapPosition":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getLastTouchOffsets()J
    .locals 6

    .prologue
    .line 1033
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1034
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1035
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1036
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method private getNextCursorOffset(IZ)I
    .locals 9
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .prologue
    const/4 v2, 0x0

    .line 873
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 874
    .local v7, "layout":Landroid/text/Layout;
    if-nez v7, :cond_0

    return p1

    .line 875
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 876
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 877
    invoke-virtual {v7, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 878
    :goto_0
    if-eqz p2, :cond_2

    move v6, v2

    :goto_1
    move v5, p1

    .line 876
    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v8

    .line 879
    .local v8, "nextOffset":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_3

    .end local p1    # "offset":I
    :goto_2
    return p1

    .end local v8    # "nextOffset":I
    .restart local p1    # "offset":I
    :cond_1
    move v4, v2

    .line 877
    goto :goto_0

    .line 878
    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    .restart local v8    # "nextOffset":I
    :cond_3
    move p1, v8

    .line 879
    goto :goto_2
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 916
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Landroid/widget/Editor$PositionListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 919
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #android:layout@text_drag_thumbnail#t

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "shadowView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 2120
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2122
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2123
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2125
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2126
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2128
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2131
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2132
    .local v1, "size":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2134
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 2135
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 2136
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getWordEnd(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 755
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 756
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    .line 763
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 764
    return p1

    .line 761
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    goto :goto_0

    .line 766
    :cond_1
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 856
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v1, :cond_0

    .line 857
    new-instance v1, Landroid/text/method/WordIterator;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 858
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 860
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v1, :cond_1

    .line 865
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 866
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 867
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 869
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v1
.end method

.method private getWordStart(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 740
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 741
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    .line 748
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 749
    return p1

    .line 746
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    goto :goto_0

    .line 751
    :cond_1
    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 629
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_0
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 490
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 483
    return-void
.end method

.method private hideFloatingToolbar()V
    .locals 4

    .prologue
    .line 1256
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1258
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    .line 1255
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 623
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1906
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1907
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 1908
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    .line 1907
    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1909
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1910
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1911
    const/4 v3, 0x1

    return v3

    .line 1909
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1914
    :cond_1
    return v6
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 968
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 969
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    return v4

    .line 971
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 972
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 973
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 974
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    .line 975
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    .line 974
    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v4

    return v4
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 982
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 983
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    return v3

    .line 985
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 986
    .local v1, "line":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 988
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    return v3

    .line 989
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    return v3

    .line 990
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private isPositionVisible(FF)Z
    .locals 11
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 928
    sget-object v5, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v5

    .line 929
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 930
    .local v2, "position":[F
    const/4 v4, 0x0

    aput p1, v2, v4

    .line 931
    const/4 v4, 0x1

    aput p2, v2, v4

    .line 932
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 934
    :goto_0
    if-eqz v3, :cond_5

    .line 935
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 937
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 938
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 941
    :cond_0
    const/4 v4, 0x0

    aget v4, v2, v4

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v4, v4, v10

    if-gez v4, :cond_2

    :cond_1
    monitor-exit v5

    .line 943
    return v8

    .line 942
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    .line 946
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_3

    .line 947
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 950
    :cond_3
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 951
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 953
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 954
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 955
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .line 958
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    monitor-exit v5

    .line 964
    return v9

    .line 928
    .end local v2    # "position":[F
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 5107
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 681
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 678
    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 18

    .prologue
    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->canSelectText()Z

    move-result v16

    if-nez v16, :cond_0

    .line 775
    const/16 v16, 0x0

    return v16

    .line 778
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    move-result v16

    return v16

    .line 785
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 786
    .local v2, "inputType":I
    and-int/lit8 v3, v2, 0xf

    .line 787
    .local v3, "klass":I
    and-int/lit16 v14, v2, 0xff0

    .line 790
    .local v14, "variation":I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    .line 791
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v3, v0, :cond_3

    .line 797
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    move-result v16

    return v16

    .line 792
    :cond_3
    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    .line 793
    const/16 v16, 0x10

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 794
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 795
    const/16 v16, 0xd0

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 796
    const/16 v16, 0xb0

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 800
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v4

    .line 801
    .local v4, "lastTouchOffsets":J
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 802
    .local v7, "minOffset":I
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 805
    .local v6, "maxOffset":I
    if-ltz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v7, v0, :cond_5

    :cond_4
    const/16 v16, 0x0

    return v16

    .line 806
    :cond_5
    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v6, v0, :cond_7

    :cond_6
    const/16 v16, 0x0

    return v16

    .line 811
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    .line 812
    const-class v17, Landroid/text/style/URLSpan;

    .line 811
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 813
    .local v13, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_9

    .line 814
    const/16 v16, 0x0

    aget-object v12, v13, v16

    .line 815
    .local v12, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 816
    .local v11, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 835
    .end local v12    # "urlSpan":Landroid/text/style/URLSpan;
    .local v10, "selectionEnd":I
    :cond_8
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spannable;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 836
    if-le v10, v11, :cond_c

    const/16 v16, 0x1

    :goto_1
    return v16

    .line 820
    .end local v10    # "selectionEnd":I
    .end local v11    # "selectionStart":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v15

    .line 821
    .local v15, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 823
    invoke-virtual {v15, v7}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v11

    .line 824
    .restart local v11    # "selectionStart":I
    invoke-virtual {v15, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v10

    .line 826
    .restart local v10    # "selectionEnd":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_a

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_b

    .line 829
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v8

    .line 830
    .local v8, "range":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v11

    .line 831
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    goto :goto_0

    .line 827
    .end local v8    # "range":J
    :cond_b
    if-ne v11, v10, :cond_8

    goto :goto_2

    .line 836
    .end local v15    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_c
    const/16 v16, 0x0

    goto :goto_1
.end method

.method private selectCurrentWordAndStartDrag()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1755
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1758
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    return v2

    .line 1761
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1762
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1764
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1765
    return v2

    .line 1769
    :cond_3
    iput-boolean v3, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1770
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1771
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1773
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag()V

    .line 1774
    return v3
.end method

.method private sendUpdateSelection()V
    .locals 7

    .prologue
    .line 1454
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v1, :cond_1

    .line 1455
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1456
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1457
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1458
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1459
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    .line 1460
    .local v4, "candStart":I
    const/4 v5, -0x1

    .line 1461
    .local v5, "candEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1462
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1463
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 1464
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 1468
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1453
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 472
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 473
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 474
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 476
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 478
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 479
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 480
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 471
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->isFlymeCursorVisible(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, "start":I
    if-gez v1, :cond_1

    return v2

    .end local v1    # "start":I
    :cond_0
    return v2

    .restart local v1    # "start":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    if-gez v0, :cond_2

    return v2

    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 14

    .prologue
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "text":Ljava/lang/CharSequence;
    instance-of v13, v10, Landroid/text/Spannable;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return v13

    :cond_0
    move-object v8, v10

    check-cast v8, Landroid/text/Spannable;

    .local v8, "spannable":Landroid/text/Spannable;
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .local v5, "selectionStart":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .local v4, "selectionEnd":I
    const-class v13, Landroid/text/style/SuggestionSpan;

    invoke-interface {v8, v5, v4, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/SuggestionSpan;

    .local v9, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v13, v9

    if-nez v13, :cond_1

    const/4 v13, 0x0

    return v13

    :cond_1
    if-ne v5, v4, :cond_4

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v13, v9

    if-ge v1, v13, :cond_3

    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_2

    const/4 v13, 0x1

    return v13

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    return v13

    .end local v1    # "i":I
    :cond_4
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, "minSpanStart":I
    const/4 v2, 0x0

    .local v2, "maxSpanEnd":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .local v12, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v0, 0x0

    .local v0, "hasValidSuggestions":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v13, v9

    if-ge v1, v13, :cond_9

    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .local v7, "spanStart":I
    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .local v6, "spanEnd":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v5, v7, :cond_5

    if-le v5, v6, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_8

    :cond_7
    const/4 v0, 0x1

    :goto_3
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .end local v6    # "spanEnd":I
    .end local v7    # "spanStart":I
    :cond_9
    if-nez v0, :cond_a

    const/4 v13, 0x0

    return v13

    :cond_a
    if-lt v12, v11, :cond_b

    const/4 v13, 0x0

    return v13

    :cond_b
    if-lt v3, v12, :cond_c

    if-le v2, v11, :cond_d

    :cond_c
    const/4 v13, 0x0

    return v13

    :cond_d
    const/4 v13, 0x1

    return v13
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, #android:layout@textview_hint#t

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "err":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    return-void
.end method

.method private showFloatingToolbar()V
    .locals 6

    .prologue
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private startSelectionActionModeInternal()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    move-result v4

    if-nez v4, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    .local v3, "willExtract":Z
    if-nez v3, :cond_2

    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v0, p0, v7}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v7}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_4

    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 v2, 0x1

    .local v2, "selectionStarted":Z
    goto :goto_0

    .end local v2    # "selectionStarted":Z
    :cond_5
    iget-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_1
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    return v7

    :cond_0
    if-le v4, v3, :cond_1

    move v5, v4

    .local v5, "tmp":I
    move v4, v3

    move v3, v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .local v1, "width":I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .local v0, "left":I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideFloatingToolbar()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    goto :goto_0
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .prologue
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    if-eqz p3, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p4, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .end local v1    # "nesting":I
    :cond_0
    return-void

    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method canRedo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method canUndo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method checkFieldAndSelectCurrentWord()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .local v1, "nesting":I
    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    :cond_0
    return v1

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void

    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method forgetUndoRedo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$InsertionPointCursorController;)V

    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v1
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v1
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideCursorAndSpanControllers()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    :cond_0
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, "lastLine":I
    move-object v3, p1

    check-cast v3, Landroid/text/DynamicLayout;

    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    aget v1, v2, v5

    .local v1, "blockIndex":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_2
    return-void

    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v1    # "blockIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeBlink()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v3, v1, v4}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v4}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-wrap0(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/Editor;->destroyDisplayListsData()V

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    iput-object v2, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iput-boolean v3, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .local v3, "selectionStart":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .local v2, "selectionEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1

    iget v4, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v4, :cond_0

    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v4, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    :cond_2
    if-eqz p3, :cond_3

    if-ne v3, v2, :cond_3

    iget v4, p0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v4, :cond_3

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->isFlymeCursorVisible(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_flyme_0

    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    :cond_flyme_0

    const/4 p3, 0x0

    .end local p3    # "highlight":Landroid/graphics/Path;
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .local v11, "itemCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v10    # "item":Landroid/content/ClipData$Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object v6, v12

    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .end local v6    # "dragLocalState":Landroid/widget/Editor$DragLocalState;
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    .local v5, "dragDropIntoItself":Z
    :goto_1
    if-eqz v5, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    return-void

    .end local v5    # "dragDropIntoItself":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "dragDropIntoItself":Z
    goto :goto_1

    .end local v5    # "dragDropIntoItself":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "dragDropIntoItself":Z
    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .local v17, "originalLength":I
    move/from16 v14, v16

    .local v14, "min":I
    move/from16 v13, v16

    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Landroid/text/Spannable;

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    if-eqz v5, :cond_6

    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .local v7, "dragSourceEnd":I
    if-gt v13, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v19, v21, v17

    .local v19, "shift":I
    add-int v8, v8, v19

    add-int v7, v7, v19

    .end local v19    # "shift":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    add-int/lit8 v21, v8, -0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .local v18, "prevCharIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    add-int/lit8 v22, v8, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v15

    .local v15, "nextCharIdx":I
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v20

    .local v20, "t":Ljava/lang/CharSequence;
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .end local v7    # "dragSourceEnd":I
    .end local v8    # "dragSourceStart":I
    .end local v15    # "nextCharIdx":I
    .end local v18    # "prevCharIdx":I
    .end local v20    # "t":Ljava/lang/CharSequence;
    :cond_6
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    if-eqz p1, :cond_d

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_9

    const/4 v0, 0x1

    .local v0, "isFocusHighlighted":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v0, :cond_b

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    :cond_5
    iput-boolean v7, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v6, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    iput-boolean v6, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_8
    :goto_2
    return-void

    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    .end local v0    # "isFocusHighlighted":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    :cond_b
    move v5, v7

    goto :goto_1

    :cond_c
    move v5, v6

    goto :goto_1

    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_e

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_e
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .restart local v4    # "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .restart local v3    # "selEnd":I
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_2

    :cond_f
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_10

    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_11

    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    :cond_11
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_2
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v3, Landroid/widget/Editor$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "offset":I
    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x0

    .local v1, "selectAllGotFocus":Z
    goto :goto_0

    .end local v1    # "selectAllGotFocus":Z
    .restart local v0    # "offset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    if-eqz p1, :cond_4

    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v2}, Landroid/widget/Editor$Blink;->uncancel()V

    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/4 v1, 0x0

    .local v1, "immFullScreen":Z
    goto :goto_0

    .end local v1    # "immFullScreen":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto :goto_1

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v2}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_5
    iget-object v2, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_7
    iget-object v2, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v2}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    goto :goto_1
.end method

.method public performLongClick(Z)Z
    .locals 11
    .param p1, "handled"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_0

    iget v6, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v6, v7}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .end local p1    # "handled":Z
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v6, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .local v5, "start":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .local v1, "end":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-static {v10, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v2, v6, v5, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .local v2, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    invoke-virtual {v6, v0, v7, v2, v9}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "end":I
    .end local v2    # "localState":Landroid/widget/Editor$DragLocalState;
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    .end local v5    # "start":I
    :goto_1
    const/4 p1, 0x1

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    :cond_2
    return p1

    .restart local p1    # "handled":Z
    :cond_3
    iget-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .local v3, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    iput-boolean v9, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    const/4 p1, 0x1

    .local p1, "handled":Z
    goto :goto_0

    .end local v3    # "offset":I
    .end local p1    # "handled":Z
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    goto :goto_1
.end method

.method prepareCursorControllers()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    .local v3, "windowSupportsHandles":Z
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v4, v6, :cond_5

    const/4 v3, 0x1

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_7

    .line 2058
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v4

    :goto_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_1

    .line 423
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    :cond_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    iput-object v7, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    :cond_2
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    iput-object v7, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    :cond_3

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->updateBackground(Landroid/widget/Editor;)V

    return-void

    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method redo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method replace()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .local v0, "middle":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/Editor;->showSuggestions()V

    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_3

    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_3

    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_3

    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    goto :goto_0

    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return v9
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    .prologue
    new-instance v1, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Landroid/widget/Editor;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .local v1, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v0}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v0}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    return-object v1
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    .prologue
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->stopDragSelectionMode(Landroid/widget/Editor;)V

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    .line 446
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 422
    return-void
.end method

.method startInsertionActionMode()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    :cond_2
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 2

    .prologue

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_flyme_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->startSelectionActionModeMz()Z

    move-result v0

    return v0

    :cond_flyme_0

    invoke-direct {p0}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    move-result v0

    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_0
.end method

.method protected stopTextActionMode()V
    .locals 1

    .prologue

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->removeSelectonActionModeRunnable(Landroid/widget/Editor;)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->hideSelectionModifierCursorController(Landroid/widget/Editor;)V

    return-void
.end method

.method undo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method updateCursorsPositions()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x0

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v7, :cond_0

    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, "layout":Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .local v5, "offset":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .local v6, "top":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    .line 1820
    :goto_0
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    move v4, v0

    .local v4, "middle":I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_1

    add-int v7, v6, v0

    shr-int/lit8 v4, v7, 0x1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v1

    .local v1, "clamped":Z
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPositionMz(IIIF)V

    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPositionMz(IIIF)V

    :cond_2
    return-void

    .end local v1    # "clamped":Z
    .end local v4    # "middle":I
    :cond_3
    move v7, v9

    goto :goto_0
.end method

.method private setSelectionOnTouchUpEvent(Landroid/text/Spannable;IZ)V
    .locals 10
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "offset"    # I
    .param p3, "optionVisibleBeforeTouch"    # Z

    .prologue
    const/4 v7, 0x0

    .local v7, "windowSupportsHandles":Z
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v8, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .local v6, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_3

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7cf

    if-le v8, v9, :cond_4

    const/4 v7, 0x1

    .end local v6    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v7, :cond_5

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    .local v1, "enabled":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v3

    :goto_3
    if-nez p3, :cond_1

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2010
    :cond_1
    const/4 v0, 0x0

    .local v0, "canStartSelectionActionMode":Z
    :goto_4
    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_2
    return-void

    .end local v0    # "canStartSelectionActionMode":Z
    .end local v1    # "enabled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v6    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .end local v6    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .local v4, "mShowEnabled":Z
    goto :goto_2

    .end local v4    # "mShowEnabled":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    const/4 v3, 0x0

    .local v3, "isSoftInputShown":Z
    goto :goto_3

    .end local v3    # "isSoftInputShown":Z
    :cond_8
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-ltz p2, :cond_1

    instance-of v8, p1, Landroid/text/Editable;

    if-eqz v8, :cond_1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v8

    if-ne p2, v8, :cond_1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    if-ne p2, v8, :cond_9

    const/4 v0, 0x1

    .restart local v0    # "canStartSelectionActionMode":Z
    goto :goto_4

    .end local v0    # "canStartSelectionActionMode":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "canStartSelectionActionMode":Z
    goto :goto_4
.end method

.method private updateCursorPositionMz(IIIF)V
    .locals 14
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .local v8, "offset":I
    const/4 v5, 0x0

    .local v5, "layout":Landroid/text/Layout;
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v5

    .local v5, "layout":Landroid/text/Layout;
    :goto_0
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .local v7, "line":I
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .local v4, "fi":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v10

    sub-int v1, p3, v10

    .local v1, "baseLine":I
    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int v3, v1, v10

    .local v3, "charTop":I
    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int v2, v1, v10

    .local v2, "charBottom":I
    if-gez v3, :cond_3

    const/16 p2, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v10

    if-le v2, v10, :cond_4

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result p3

    :goto_2
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    if-nez v10, :cond_0

    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v12, v12, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v10, p1

    :cond_0
    iget-object v10, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v10, :cond_1

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    :cond_1
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .local v9, "width":I
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, p4, v10

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result p4

    move/from16 v0, p4

    float-to-int v10, v0

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    .local v6, "left":I
    iget-object v10, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, p1

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, p2, v11

    add-int v12, v6, v9

    iget-object v13, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int v13, v13, p3

    invoke-virtual {v10, v6, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    .end local v1    # "baseLine":I
    .end local v2    # "charBottom":I
    .end local v3    # "charTop":I
    .end local v4    # "fi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v6    # "left":I
    .end local v7    # "line":I
    .end local v9    # "width":I
    .local v5, "layout":Landroid/text/Layout;
    :cond_2
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .local v5, "layout":Landroid/text/Layout;
    goto/16 :goto_0

    .restart local v1    # "baseLine":I
    .restart local v2    # "charBottom":I
    .restart local v3    # "charTop":I
    .restart local v4    # "fi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v7    # "line":I
    :cond_3
    move/from16 p2, v3

    goto :goto_1

    :cond_4
    move/from16 p3, v2

    goto :goto_2
.end method

.method flymeGetFieldTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method flymeInvokeMethodGetPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method public getActiveBound(Landroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "autoclip"    # Z

    .prologue
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .local v1, "clipLeft":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    .local v3, "clipTop":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .local v2, "clipRight":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .local v0, "clipBottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v1, :cond_1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v3, :cond_2

    iput v3, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v2, :cond_3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v0, :cond_4

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_5

    iget v4, p1, Landroid/graphics/Rect;->left:I

    .local v4, "tmp":I
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, p1, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .end local v4    # "tmp":I
    :cond_5
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->top:I

    .restart local v4    # "tmp":I
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .end local v4    # "tmp":I
    :cond_6
    return-void
.end method

.method final hasComposingSpan(Landroid/text/Spannable;)Z
    .locals 6
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/UnderlineSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .local v0, "spans":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .end local v0    # "spans":[Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "st":I
    if-ltz v1, :cond_3

    invoke-static {p1}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v4

    if-eq v1, v4, :cond_3

    move v3, v2

    :cond_3
    return v3
.end method

.method public isAttached()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_1

    return v3

    :cond_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .local v1, "view":Landroid/view/View;
    goto :goto_0

    .end local v1    # "view":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    .local v1, "view":Landroid/view/View;
    goto :goto_0

    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public isInDragSelectionMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    return v0
.end method

.method mzCanSelectText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method onCursorVisbilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    goto :goto_0
.end method

.method onPreDraw()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onPreDraw()Z

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0
.end method

.method onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    if-ltz p1, :cond_0

    if-ne p1, p2, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$TextActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$TextActionModeCallback;

    iget-boolean v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mInSelectionMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_0
    return-void
.end method

.method onTouchEventMz(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$FlymeInsertionPointCursorController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1790
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->onEditorTouchDown()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return v2
.end method

.method onTouchUpEventMz(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v2

    :goto_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v4}, Landroid/widget/Editor$OptionWrapper;->isVisibleBeforeTouch()Z

    move-result v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    if-eqz v2, :cond_4

    return-void

    :cond_0
    const/4 v2, 0x0

    .local v2, "selectAllGotFocus":Z
    goto :goto_0

    .end local v2    # "selectAllGotFocus":Z
    :cond_1
    const/4 v1, 0x1

    .local v1, "optionVisibleBeforeTouch":Z
    goto :goto_1

    .end local v1    # "optionVisibleBeforeTouch":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "optionVisibleBeforeTouch":Z
    goto :goto_1

    .end local v1    # "optionVisibleBeforeTouch":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "optionVisibleBeforeTouch":Z
    goto :goto_1

    .end local v1    # "optionVisibleBeforeTouch":Z
    :cond_4
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    check-cast v3, Landroid/text/Spannable;

    .end local v3    # "text":Ljava/lang/CharSequence;
    invoke-direct {p0, v3, v5, v1}, Landroid/widget/Editor;->setSelectionOnTouchUpEvent(Landroid/text/Spannable;IZ)V

    :cond_5
    :goto_2
    return-void

    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    check-cast v3, Landroid/text/Spannable;

    .end local v3    # "text":Ljava/lang/CharSequence;
    invoke-direct {p0, v3, v0, v1}, Landroid/widget/Editor;->setSelectionOnTouchUpEvent(Landroid/text/Spannable;IZ)V

    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v4}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Landroid/widget/Editor$FlymeShowSuggestionsRunnable;

    invoke-direct {v4, p0}, Landroid/widget/Editor$FlymeShowSuggestionsRunnable;-><init>(Landroid/widget/Editor;)V

    iput-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public performLongClickMz(Z)Z
    .locals 5
    .param p1, "handled"    # Z

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/Editor;->hasComposingSpan(Landroid/text/Spannable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v2

    return v2

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v2, :cond_5

    .end local v1    # "res":Z
    :cond_3
    :goto_0
    if-nez p1, :cond_4

    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v2, :cond_7

    :cond_4
    :goto_1
    return v1

    .restart local v1    # "res":Z
    :cond_5
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v4, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 1831
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .end local v0    # "offset":I
    .end local v1    # "res":Z
    :cond_7
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v4, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .restart local v0    # "offset":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 293
    const/4 v1, 0x1

    .local v1, "res":Z
    goto :goto_1
.end method

.method selectCurrentWordMz()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    return v0
.end method

.method public setEnableDragSelection(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/Editor;->mEnableDragSelection:Z

    return-void
.end method

.method startSelectionActionMode(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$FlymeStartSelectionActionModeRunnable;

    invoke-direct {v0, p0}, Landroid/widget/Editor$FlymeStartSelectionActionModeRunnable;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method startSelectionActionModeMz()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "TextView"

    const-string v1, "SelectionController is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 852
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->hasComposingSpan(Landroid/text/Spannable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor;->mzCanSelectText()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-nez v0, :cond_6

    new-instance v0, Landroid/widget/Editor$OptionWrapper;

    invoke-direct {v0, p0}, Landroid/widget/Editor$OptionWrapper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    :cond_6
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    .line 351
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$TextActionModeCallback;

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$TextActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$OptionWrapper;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    move-result v0

    return v0

    :cond_7
    return v2
.end method
