.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$FlymeInjector;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$ChangeWatcher;
    }
.end annotation


# static fields
.field mFlymeAutoLinkMaskIncludeDateTime:Z

.field private mFlymeCurrentCursorVisible:Z

.field mFlymeCursorWidth:I

.field mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field mFlymeTempCoords:[I

.field mFlymeTouching:Z

.field private mTempCurosrRect:Landroid/graphics/Rect;

.field private static synthetic -android_text_Layout$AlignmentSwitchesValues:[I = null

.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field static final ID_COPY:I = #android:id@copy#t

.field static final ID_CUT:I = #android:id@cut#t

.field static final ID_PASTE:I = #android:id@paste#t

.field static final ID_PASTE_AS_PLAIN_TEXT:I = #android:id@pasteAsPlainText#t

.field static final ID_REDO:I = #android:id@redo#t

.field static final ID_REPLACE:I = #android:id@replaceText#t

.field static final ID_SELECT_ALL:I = #android:id@selectAll#t

.field static final ID_SHARE:I = #android:id@shareText#t

.field static final ID_UNDO:I = #android:id@undo#t

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstTouch:Z

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastTouchUpTime:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static synthetic -get0(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method private static synthetic -getandroid_text_Layout$AlignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "inputType"    # I

    .prologue
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 287
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 288
    new-instance v1, Landroid/text/SpannedString;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 293
    new-array v1, v4, [I

    const v2, #android:attr@state_multiline#t

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 636
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 637
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 639
    const-string/jumbo v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 6844
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 663
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 662
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@textViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 670
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 76
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 677
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 324
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 325
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 518
    const/16 v73, 0x3

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 520
    const/16 v73, -0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 527
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 538
    sget-object v73, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 555
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLocaleChanged:Z

    .line 558
    const v73, 0x800033

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 562
    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 564
    const/high16 v73, 0x3f800000    # 1.0f

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 565
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 570
    const v73, 0x7fffffff

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 571
    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 572
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 573
    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 575
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v73, v0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 576
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v73, v0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 578
    const v73, 0x7fffffff

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 579
    const/16 v73, 0x2

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 580
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 581
    const/16 v73, 0x2

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 584
    const/16 v73, -0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 585
    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 586
    const/16 v73, -0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 598
    sget-object v73, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 604
    const v73, 0x6633b5e5

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 607
    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 609
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFirstTouch:Z

    .line 610
    const-wide/16 v74, 0x0

    move-wide/from16 v0, v74

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastTouchUpTime:J

    .line 679
    const-string/jumbo v73, ""

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v58

    .line 682
    .local v58, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v58 .. v58}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v18

    .line 684
    .local v18, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v73, Landroid/text/TextPaint;

    const/16 v74, 0x1

    invoke-direct/range {v73 .. v74}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v73, v0

    invoke-virtual/range {v58 .. v58}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v74

    move-object/from16 v0, v74

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v74, v0

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v73, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v74, v0

    invoke-virtual/range {v73 .. v74}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 688
    new-instance v73, Landroid/graphics/Paint;

    const/16 v74, 0x1

    invoke-direct/range {v73 .. v74}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v73, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v74, v0

    invoke-virtual/range {v73 .. v74}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 691
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 693
    const/16 v73, 0x0

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 695
    const/16 v65, 0x0

    .line 696
    .local v65, "textColorHighlight":I
    const/16 v64, 0x0

    .line 697
    .local v64, "textColor":Landroid/content/res/ColorStateList;
    const/16 v66, 0x0

    .line 698
    .local v66, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v67, 0x0

    .line 699
    .local v67, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v68, 0xf

    .line 700
    .local v68, "textSize":I
    const/16 v41, 0x0

    .line 701
    .local v41, "fontFamily":Ljava/lang/String;
    const/16 v42, 0x0

    .line 702
    .local v42, "fontFamilyExplicit":Z
    const/16 v70, -0x1

    .line 703
    .local v70, "typefaceIndex":I
    const/16 v62, -0x1

    .line 704
    .local v62, "styleIndex":I
    const/4 v7, 0x0

    .line 705
    .local v7, "allCaps":Z
    const/16 v60, 0x0

    .line 706
    .local v60, "shadowcolor":I
    const/16 v29, 0x0

    .local v29, "dx":F
    const/16 v30, 0x0

    .local v30, "dy":F
    const/16 v57, 0x0

    .line 707
    .local v57, "r":F
    const/16 v35, 0x0

    .line 708
    .local v35, "elegant":Z
    const/16 v48, 0x0

    .line 709
    .local v48, "letterSpacing":F
    const/16 v43, 0x0

    .line 710
    .local v43, "fontFeatureSettings":Ljava/lang/String;
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    .line 711
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v69

    .line 722
    .local v69, "theme":Landroid/content/res/Resources$Theme;
    sget-object v73, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    .line 721
    move-object/from16 v0, v69

    move-object/from16 v1, p2

    move-object/from16 v2, v73

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 723
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 725
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/16 v73, 0x0

    const/16 v74, -0x1

    .line 724
    move/from16 v0, v73

    move/from16 v1, v74

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 726
    .local v8, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 727
    const/16 v73, -0x1

    move/from16 v0, v73

    if-eq v8, v0, :cond_0

    .line 729
    sget-object v73, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 728
    move-object/from16 v0, v69

    move-object/from16 v1, v73

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 731
    .end local v9    # "appearance":Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v9, :cond_2

    .line 732
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v51

    .line 733
    .local v51, "n":I
    const/16 v45, 0x0

    .end local v7    # "allCaps":Z
    .end local v35    # "elegant":Z
    .end local v41    # "fontFamily":Ljava/lang/String;
    .end local v43    # "fontFeatureSettings":Ljava/lang/String;
    .end local v64    # "textColor":Landroid/content/res/ColorStateList;
    .end local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v45, "i":I
    :goto_0
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_1

    .line 734
    move/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 736
    .local v10, "attr":I
    packed-switch v10, :pswitch_data_0

    .line 733
    :goto_1
    add-int/lit8 v45, v45, 0x1

    goto :goto_0

    .line 738
    :pswitch_0
    move/from16 v0, v65

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v65

    goto :goto_1

    .line 742
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v64

    .local v64, "textColor":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 746
    .end local v64    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v66

    .local v66, "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 750
    .end local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v67

    .local v67, "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 754
    .end local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_4
    move/from16 v0, v68

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v68

    goto :goto_1

    .line 758
    :pswitch_5
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    goto :goto_1

    .line 762
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    .local v41, "fontFamily":Ljava/lang/String;
    goto :goto_1

    .line 766
    .end local v41    # "fontFamily":Ljava/lang/String;
    :pswitch_7
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    goto :goto_1

    .line 770
    :pswitch_8
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .local v7, "allCaps":Z
    goto :goto_1

    .line 774
    .end local v7    # "allCaps":Z
    :pswitch_9
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v60

    goto :goto_1

    .line 778
    :pswitch_a
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    goto :goto_1

    .line 782
    :pswitch_b
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    goto :goto_1

    .line 786
    :pswitch_c
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v57

    goto :goto_1

    .line 790
    :pswitch_d
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    .local v35, "elegant":Z
    goto :goto_1

    .line 794
    .end local v35    # "elegant":Z
    :pswitch_e
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v48

    goto :goto_1

    .line 798
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v43

    .local v43, "fontFeatureSettings":Ljava/lang/String;
    goto :goto_1

    .line 803
    .end local v10    # "attr":I
    .end local v43    # "fontFeatureSettings":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 806
    .end local v45    # "i":I
    .end local v51    # "n":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v34

    .line 807
    .local v34, "editable":Z
    const/16 v46, 0x0

    .line 808
    .local v46, "inputMethod":Ljava/lang/CharSequence;
    const/16 v53, 0x0

    .line 809
    .local v53, "numeric":I
    const/16 v19, 0x0

    .line 810
    .local v19, "digits":Ljava/lang/CharSequence;
    const/16 v56, 0x0

    .line 811
    .local v56, "phone":Z
    const/4 v12, 0x0

    .line 812
    .local v12, "autotext":Z
    const/4 v11, -0x1

    .line 813
    .local v11, "autocap":I
    const/4 v14, 0x0

    .line 814
    .local v14, "buffertype":I
    const/16 v59, 0x0

    .line 815
    .local v59, "selectallonfocus":Z
    const/16 v22, 0x0

    .local v22, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x0

    .local v28, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 816
    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .local v25, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .line 817
    .local v21, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    .line 818
    .local v26, "drawableTint":Landroid/content/res/ColorStateList;
    const/16 v27, 0x0

    .line 819
    .local v27, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    const/16 v23, 0x0

    .line 820
    .local v23, "drawablePadding":I
    const/16 v36, -0x1

    .line 821
    .local v36, "ellipsize":I
    const/16 v61, 0x0

    .line 822
    .local v61, "singleLine":Z
    const/16 v50, -0x1

    .line 823
    .local v50, "maxlength":I
    const-string/jumbo v63, ""

    .line 824
    .local v63, "text":Ljava/lang/CharSequence;
    const/16 v44, 0x0

    .line 825
    .local v44, "hint":Ljava/lang/CharSequence;
    const/16 v54, 0x0

    .line 826
    .local v54, "password":Z
    const/16 v47, 0x0

    .line 829
    .local v47, "inputType":I
    sget-object v73, Lcom/android/internal/R$styleable;->TextView:[I

    .line 828
    move-object/from16 v0, v69

    move-object/from16 v1, p2

    move-object/from16 v2, v73

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 831
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v51

    .line 832
    .restart local v51    # "n":I
    const/16 v45, 0x0

    .end local v12    # "autotext":Z
    .end local v19    # "digits":Ljava/lang/CharSequence;
    .end local v20    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v21    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    .end local v22    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v24    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .end local v25    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .end local v26    # "drawableTint":Landroid/content/res/ColorStateList;
    .end local v27    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    .end local v28    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .end local v44    # "hint":Ljava/lang/CharSequence;
    .end local v46    # "inputMethod":Ljava/lang/CharSequence;
    .end local v54    # "password":Z
    .end local v56    # "phone":Z
    .end local v59    # "selectallonfocus":Z
    .end local v61    # "singleLine":Z
    .restart local v45    # "i":I
    :goto_2
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_4

    .line 833
    move/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 835
    .restart local v10    # "attr":I
    packed-switch v10, :pswitch_data_1

    .line 832
    :cond_3
    :goto_3
    :pswitch_10
    add-int/lit8 v45, v45, 0x1

    goto :goto_2

    .line 837
    :pswitch_11
    move/from16 v0, v34

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    goto :goto_3

    .line 841
    :pswitch_12
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    .local v46, "inputMethod":Ljava/lang/CharSequence;
    goto :goto_3

    .line 845
    .end local v46    # "inputMethod":Ljava/lang/CharSequence;
    :pswitch_13
    move/from16 v0, v53

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    goto :goto_3

    .line 849
    :pswitch_14
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .local v19, "digits":Ljava/lang/CharSequence;
    goto :goto_3

    .line 853
    .end local v19    # "digits":Ljava/lang/CharSequence;
    :pswitch_15
    move/from16 v0, v56

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v56

    .local v56, "phone":Z
    goto :goto_3

    .line 857
    .end local v56    # "phone":Z
    :pswitch_16
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .local v12, "autotext":Z
    goto :goto_3

    .line 861
    .end local v12    # "autotext":Z
    :pswitch_17
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    goto :goto_3

    .line 865
    :pswitch_18
    invoke-virtual {v6, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    goto :goto_3

    .line 869
    :pswitch_19
    move/from16 v0, v59

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v59

    .local v59, "selectallonfocus":Z
    goto :goto_3

    .line 873
    .end local v59    # "selectallonfocus":Z
    :pswitch_1a
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 877
    :pswitch_1b
    const/16 v73, 0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 881
    :pswitch_1c
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .local v22, "drawableLeft":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 885
    .end local v22    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :pswitch_1d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .local v28, "drawableTop":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 889
    .end local v28    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :pswitch_1e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 893
    .end local v24    # "drawableRight":Landroid/graphics/drawable/Drawable;
    :pswitch_1f
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 897
    .end local v20    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    :pswitch_20
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .local v25, "drawableStart":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 901
    .end local v25    # "drawableStart":Landroid/graphics/drawable/Drawable;
    :pswitch_21
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .local v21, "drawableEnd":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 905
    .end local v21    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    :pswitch_22
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v26

    .local v26, "drawableTint":Landroid/content/res/ColorStateList;
    goto :goto_3

    .line 909
    .end local v26    # "drawableTint":Landroid/content/res/ColorStateList;
    :pswitch_23
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v27

    .local v27, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    goto/16 :goto_3

    .line 913
    .end local v27    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_24
    move/from16 v0, v23

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    goto/16 :goto_3

    .line 917
    :pswitch_25
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 921
    :pswitch_26
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 925
    :pswitch_27
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 929
    :pswitch_28
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 933
    :pswitch_29
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 937
    :pswitch_2a
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 941
    :pswitch_2b
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 945
    :pswitch_2c
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 949
    :pswitch_2d
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 953
    :pswitch_2e
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 957
    :pswitch_2f
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 961
    :pswitch_30
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 965
    :pswitch_31
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 969
    :pswitch_32
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v44

    .local v44, "hint":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 973
    .end local v44    # "hint":Ljava/lang/CharSequence;
    :pswitch_33
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v63

    goto/16 :goto_3

    .line 977
    :pswitch_34
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    if-eqz v73, :cond_3

    .line 978
    const/16 v73, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 983
    :pswitch_35
    move/from16 v0, v61

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v61

    .local v61, "singleLine":Z
    goto/16 :goto_3

    .line 987
    .end local v61    # "singleLine":Z
    :pswitch_36
    move/from16 v0, v36

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    goto/16 :goto_3

    .line 991
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v73, v0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 995
    :pswitch_38
    const/16 v73, 0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    if-nez v73, :cond_3

    .line 996
    const/16 v73, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 1001
    :pswitch_39
    const/16 v73, 0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    if-nez v73, :cond_3

    .line 1002
    const/16 v73, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 1007
    :pswitch_3a
    const/16 v73, -0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    goto/16 :goto_3

    .line 1011
    :pswitch_3b
    const/high16 v73, 0x3f800000    # 1.0f

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 1015
    :pswitch_3c
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 1019
    :pswitch_3d
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v60

    goto/16 :goto_3

    .line 1023
    :pswitch_3e
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    goto/16 :goto_3

    .line 1027
    :pswitch_3f
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    goto/16 :goto_3

    .line 1031
    :pswitch_40
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v57

    goto/16 :goto_3

    .line 1035
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v73

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1039
    :pswitch_42
    move/from16 v0, v65

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v65

    goto/16 :goto_3

    .line 1043
    :pswitch_43
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v64

    .restart local v64    # "textColor":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    .line 1047
    .end local v64    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_44
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v66

    .restart local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    .line 1051
    .end local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_45
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v67

    .restart local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    .line 1055
    .end local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_46
    move/from16 v0, v68

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v68

    goto/16 :goto_3

    .line 1059
    :pswitch_47
    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    goto/16 :goto_3

    .line 1063
    :pswitch_48
    move/from16 v0, v62

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    goto/16 :goto_3

    .line 1067
    :pswitch_49
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1068
    .restart local v41    # "fontFamily":Ljava/lang/String;
    const/16 v42, 0x1

    .line 1069
    goto/16 :goto_3

    .line 1072
    .end local v41    # "fontFamily":Ljava/lang/String;
    :pswitch_4a
    move/from16 v0, v54

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v54

    .local v54, "password":Z
    goto/16 :goto_3

    .line 1076
    .end local v54    # "password":Z
    :pswitch_4b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v73, v0

    move/from16 v0, v73

    float-to-int v0, v0

    move/from16 v73, v0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v73

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 1080
    :pswitch_4c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v73, v0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 1084
    :pswitch_4d
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v47

    goto/16 :goto_3

    .line 1088
    :pswitch_4e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v74, 0x1

    move/from16 v0, v74

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v74

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_3

    .line 1093
    :pswitch_4f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v73, v0

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move/from16 v74, v0

    .line 1095
    move/from16 v0, v74

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v74

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 1100
    :pswitch_50
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v73, v0

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v74

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1106
    :pswitch_51
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v73, v0

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move/from16 v74, v0

    .line 1108
    move/from16 v0, v74

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v74

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 1113
    :pswitch_52
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1118
    :pswitch_53
    const/16 v73, 0x0

    :try_start_0
    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1119
    :catch_0
    move-exception v33

    .line 1120
    .local v33, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v73, "TextView"

    const-string/jumbo v74, "Failure reading input extras"

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1121
    .end local v33    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v31

    .line 1122
    .local v31, "e":Ljava/io/IOException;
    const-string/jumbo v73, "TextView"

    const-string/jumbo v74, "Failure reading input extras"

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1127
    .end local v31    # "e":Ljava/io/IOException;
    :pswitch_54
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    .line 1131
    :pswitch_55
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 1135
    :pswitch_56
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 1139
    :pswitch_57
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 1143
    :pswitch_58
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    .line 1147
    :pswitch_59
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_3

    .line 1151
    :pswitch_5a
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .restart local v7    # "allCaps":Z
    goto/16 :goto_3

    .line 1155
    .end local v7    # "allCaps":Z
    :pswitch_5b
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    .restart local v35    # "elegant":Z
    goto/16 :goto_3

    .line 1159
    .end local v35    # "elegant":Z
    :pswitch_5c
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v48

    goto/16 :goto_3

    .line 1163
    :pswitch_5d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v43

    .restart local v43    # "fontFeatureSettings":Ljava/lang/String;
    goto/16 :goto_3

    .line 1167
    .end local v43    # "fontFeatureSettings":Ljava/lang/String;
    :pswitch_5e
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    goto/16 :goto_3

    .line 1171
    :pswitch_5f
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    goto/16 :goto_3

    .line 1175
    .end local v10    # "attr":I
    :cond_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1177
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 1180
    .local v13, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v47

    and-int/lit16 v0, v0, 0xfff

    move/from16 v71, v0

    .line 1182
    .local v71, "variation":I
    const/16 v73, 0x81

    .line 1181
    move/from16 v0, v71

    move/from16 v1, v73

    if-ne v0, v1, :cond_14

    const/16 v55, 0x1

    .line 1184
    .local v55, "passwordInputType":Z
    :goto_4
    const/16 v73, 0xe1

    .line 1183
    move/from16 v0, v71

    move/from16 v1, v73

    if-ne v0, v1, :cond_15

    const/16 v72, 0x1

    .line 1186
    .local v72, "webPasswordInputType":Z
    :goto_5
    const/16 v73, 0x12

    .line 1185
    move/from16 v0, v71

    move/from16 v1, v73

    if-ne v0, v1, :cond_16

    const/16 v52, 0x1

    .line 1188
    .local v52, "numberPasswordInputType":Z
    :goto_6
    if-eqz v46, :cond_18

    .line 1192
    :try_start_1
    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 1198
    .local v15, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v74, v0

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/text/method/KeyListener;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1206
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v74, v0

    if-eqz v47, :cond_17

    move/from16 v73, v47

    :goto_7
    move/from16 v0, v73

    move-object/from16 v1, v74

    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1298
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    if-eqz v73, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    move/from16 v1, v54

    move/from16 v2, v55

    move/from16 v3, v72

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    .line 1301
    :cond_5
    if-eqz v59, :cond_6

    .line 1302
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1305
    sget-object v73, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v73

    if-ne v13, v0, :cond_6

    .line 1306
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1311
    :cond_6
    if-nez v26, :cond_7

    if-eqz v27, :cond_a

    .line 1312
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v73, v0

    if-nez v73, :cond_8

    .line 1313
    new-instance v73, Landroid/widget/TextView$Drawables;

    move-object/from16 v0, v73

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v73

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1315
    :cond_8
    if-eqz v26, :cond_9

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v73, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v73, v0

    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 1319
    :cond_9
    if-eqz v27, :cond_a

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v73, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v73, v0

    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 1326
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1328
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1329
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1333
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1334
    move-object/from16 v0, p0

    move/from16 v1, v61

    move/from16 v2, v61

    move/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1336
    if-eqz v61, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v73

    if-nez v73, :cond_b

    if-gez v36, :cond_b

    .line 1337
    const/16 v36, 0x3

    .line 1340
    :cond_b
    packed-switch v36, :pswitch_data_2

    .line 1362
    :goto_9
    if-eqz v64, :cond_2a

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1363
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1364
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1365
    if-eqz v65, :cond_c

    .line 1366
    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1368
    :cond_c
    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v73, v0

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1369
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1370
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1371
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 1373
    if-eqz v7, :cond_d

    .line 1374
    new-instance v73, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v74

    invoke-direct/range {v73 .. v74}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1377
    :cond_d

    invoke-static/range {p0 .. p1}, Landroid/widget/TextView$FlymeInjector;->initFlymeExtraFields(Landroid/widget/TextView;Landroid/content/Context;)V

    if-nez v54, :cond_e

    if-nez v55, :cond_e

    if-nez v72, :cond_e

    if-eqz v52, :cond_2b

    .line 1378
    :cond_e
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1379
    const/16 v70, 0x3

    .line 1386
    :cond_f
    :goto_b
    const/16 v73, -0x1

    move/from16 v0, v70

    move/from16 v1, v73

    if-eq v0, v1, :cond_10

    if-eqz v42, :cond_2c

    .line 1389
    :cond_10
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v70

    move/from16 v3, v62

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 1391
    if-eqz v60, :cond_11

    .line 1392
    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1395
    :cond_11
    if-ltz v50, :cond_2d

    .line 1396
    const/16 v73, 0x1

    move/from16 v0, v73

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v73, v0

    new-instance v74, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v74

    move/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v75, 0x0

    aput-object v74, v73, v75

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1401
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1402
    if-eqz v44, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1410
    :cond_12
    sget-object v73, Lcom/android/internal/R$styleable;->View:[I

    .line 1409
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v73

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v73, v0

    if-nez v73, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v73

    if-eqz v73, :cond_2e

    :cond_13
    const/16 v40, 0x1

    .line 1413
    .local v40, "focusable":Z
    :goto_e
    if-nez v40, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v17

    .line 1414
    :goto_f
    if-nez v40, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v49

    .line 1416
    :goto_10
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v51

    .line 1417
    const/16 v45, 0x0

    .end local v40    # "focusable":Z
    :goto_11
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_31

    .line 1418
    move/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1420
    .restart local v10    # "attr":I
    sparse-switch v10, :sswitch_data_0

    .line 1417
    :goto_12
    add-int/lit8 v45, v45, 0x1

    goto :goto_11

    .line 1181
    .end local v10    # "attr":I
    .end local v52    # "numberPasswordInputType":Z
    .end local v55    # "passwordInputType":Z
    .end local v72    # "webPasswordInputType":Z
    :cond_14
    const/16 v55, 0x0

    .restart local v55    # "passwordInputType":Z
    goto/16 :goto_4

    .line 1183
    :cond_15
    const/16 v72, 0x0

    .restart local v72    # "webPasswordInputType":Z
    goto/16 :goto_5

    .line 1185
    :cond_16
    const/16 v52, 0x0

    .restart local v52    # "numberPasswordInputType":Z
    goto/16 :goto_6

    .line 1193
    :catch_2
    move-exception v37

    .line 1194
    .local v37, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v73, Ljava/lang/RuntimeException;

    move-object/from16 v0, v73

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v73

    .line 1202
    .end local v37    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v38

    .line 1203
    .local v38, "ex":Ljava/lang/IllegalAccessException;
    new-instance v73, Ljava/lang/RuntimeException;

    move-object/from16 v0, v73

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v73

    .line 1200
    .end local v38    # "ex":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v39

    .line 1201
    .local v39, "ex":Ljava/lang/InstantiationException;
    new-instance v73, Ljava/lang/RuntimeException;

    move-object/from16 v0, v73

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v73

    .line 1208
    .end local v39    # "ex":Ljava/lang/InstantiationException;
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v73, v0

    invoke-interface/range {v73 .. v73}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v73

    goto/16 :goto_7

    .line 1209
    :catch_5
    move-exception v32

    .line 1210
    .local v32, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1212
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v32    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_18
    if-eqz v19, :cond_1a

    .line 1213
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v74

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v74, v0

    if-eqz v47, :cond_19

    move/from16 v73, v47

    :goto_13
    move/from16 v0, v73

    move-object/from16 v1, v74

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1219
    :cond_19
    const/16 v73, 0x1

    goto :goto_13

    .line 1220
    :cond_1a
    if-eqz v47, :cond_1c

    .line 1221
    const/16 v73, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v73

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1223
    invoke-static/range {v47 .. v47}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v73

    if-eqz v73, :cond_1b

    const/16 v61, 0x0

    .local v61, "singleLine":Z
    goto/16 :goto_8

    .end local v61    # "singleLine":Z
    :cond_1b
    const/16 v61, 0x1

    .restart local v61    # "singleLine":Z
    goto/16 :goto_8

    .line 1224
    .end local v61    # "singleLine":Z
    :cond_1c
    if-eqz v56, :cond_1d

    .line 1225
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v74

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v47, 0x3

    const/16 v74, 0x3

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1228
    :cond_1d
    if-eqz v53, :cond_22

    .line 1229
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    and-int/lit8 v73, v53, 0x2

    if-eqz v73, :cond_20

    const/16 v73, 0x1

    move/from16 v74, v73

    .line 1231
    :goto_14
    and-int/lit8 v73, v53, 0x4

    if-eqz v73, :cond_21

    const/16 v73, 0x1

    .line 1230
    :goto_15
    move/from16 v0, v74

    move/from16 v1, v73

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1232
    const/16 v47, 0x2

    .line 1233
    and-int/lit8 v73, v53, 0x2

    if-eqz v73, :cond_1e

    .line 1234
    const/16 v47, 0x1002

    .line 1236
    :cond_1e
    and-int/lit8 v73, v53, 0x4

    if-eqz v73, :cond_1f

    .line 1237
    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x2000

    move/from16 v47, v0

    .line 1239
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move/from16 v0, v47

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1230
    :cond_20
    const/16 v73, 0x0

    move/from16 v74, v73

    goto :goto_14

    .line 1231
    :cond_21
    const/16 v73, 0x0

    goto :goto_15

    .line 1240
    :cond_22
    if-nez v12, :cond_23

    const/16 v73, -0x1

    move/from16 v0, v73

    if-eq v11, v0, :cond_24

    .line 1243
    :cond_23
    const/16 v47, 0x1

    .line 1245
    packed-switch v11, :pswitch_data_3

    .line 1262
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1266
    .local v16, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v74

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move/from16 v0, v47

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1247
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_60
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1248
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v47, 0x4001

    .line 1249
    goto :goto_16

    .line 1252
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_61
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1253
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v47, 0x2001

    .line 1254
    goto :goto_16

    .line 1257
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_62
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1258
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v47, 0x1001

    .line 1259
    goto :goto_16

    .line 1269
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v73

    if-eqz v73, :cond_26

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    if-eqz v73, :cond_25

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    .line 1275
    :cond_25
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1277
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    .line 1278
    :cond_26
    if-eqz v34, :cond_27

    .line 1279
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v74

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1283
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    if-eqz v73, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1285
    :cond_28
    packed-switch v14, :pswitch_data_4

    goto/16 :goto_8

    .line 1287
    :pswitch_63
    sget-object v13, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1290
    :pswitch_64
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1293
    :pswitch_65
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1342
    :pswitch_66
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1345
    :pswitch_67
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1348
    :pswitch_68
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1351
    :pswitch_69
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v73

    invoke-virtual/range {v73 .. v73}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v73

    if-eqz v73, :cond_29

    .line 1352
    const/16 v73, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1353
    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1358
    :goto_17
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1355
    :cond_29
    const/16 v73, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1356
    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_17

    .line 1362
    :cond_2a
    const/high16 v73, -0x1000000

    invoke-static/range {v73 .. v73}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v64

    goto/16 :goto_a

    .line 1380
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    if-eqz v73, :cond_f

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v73, v0

    move/from16 v0, v73

    and-int/lit16 v0, v0, 0xfff

    move/from16 v73, v0

    .line 1382
    const/16 v74, 0x81

    .line 1381
    move/from16 v0, v73

    move/from16 v1, v74

    if-ne v0, v1, :cond_f

    .line 1383
    const/16 v70, 0x3

    goto/16 :goto_b

    .line 1387
    :cond_2c
    const/16 v41, 0x0

    .local v41, "fontFamily":Ljava/lang/String;
    goto/16 :goto_c

    .line 1398
    .end local v41    # "fontFamily":Ljava/lang/String;
    :cond_2d
    sget-object v73, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_d

    .line 1412
    :cond_2e
    const/16 v40, 0x0

    .restart local v40    # "focusable":Z
    goto/16 :goto_e

    .line 1413
    :cond_2f
    const/16 v17, 0x1

    .local v17, "clickable":Z
    goto/16 :goto_f

    .line 1414
    .end local v17    # "clickable":Z
    :cond_30
    const/16 v49, 0x1

    .local v49, "longClickable":Z
    goto/16 :goto_10

    .line 1422
    .end local v40    # "focusable":Z
    .end local v49    # "longClickable":Z
    .restart local v10    # "attr":I
    :sswitch_0
    move/from16 v0, v40

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v40

    .local v40, "focusable":Z
    goto/16 :goto_12

    .line 1426
    .end local v40    # "focusable":Z
    :sswitch_1
    move/from16 v0, v17

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .local v17, "clickable":Z
    goto/16 :goto_12

    .line 1430
    .end local v17    # "clickable":Z
    :sswitch_2
    move/from16 v0, v49

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v49

    .local v49, "longClickable":Z
    goto/16 :goto_12

    .line 1434
    .end local v10    # "attr":I
    .end local v49    # "longClickable":Z
    :cond_31
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1436
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1437
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1438
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    if-eqz v73, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1443
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v73

    if-nez v73, :cond_33

    .line 1444
    const/16 v73, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 676
    :cond_33
    return-void

    .line 736
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 835
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_41
        :pswitch_10
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_43
        :pswitch_42
        :pswitch_44
        :pswitch_45
        :pswitch_36
        :pswitch_31
        :pswitch_1a
        :pswitch_1b
        :pswitch_2c
        :pswitch_26
        :pswitch_30
        :pswitch_2a
        :pswitch_18
        :pswitch_33
        :pswitch_32
        :pswitch_3b
        :pswitch_39
        :pswitch_25
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_34
        :pswitch_4a
        :pswitch_35
        :pswitch_19
        :pswitch_38
        :pswitch_3a
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_3c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1e
        :pswitch_24
        :pswitch_4b
        :pswitch_4c
        :pswitch_37
        :pswitch_4d
        :pswitch_52
        :pswitch_53
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_10
        :pswitch_10
        :pswitch_59
        :pswitch_10
        :pswitch_10
        :pswitch_54
        :pswitch_58
        :pswitch_5a
        :pswitch_20
        :pswitch_21
        :pswitch_49
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_22
        :pswitch_23
        :pswitch_5e
        :pswitch_5f
        :pswitch_4e
    .end packed-switch

    .line 1340
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
    .end packed-switch

    .line 1420
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 1245
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_60
        :pswitch_61
        :pswitch_62
    .end packed-switch

    .line 1285
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_63
        :pswitch_64
        :pswitch_65
    .end packed-switch
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    .prologue
    .line 2644
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v6, :cond_0

    .line 2645
    return-void

    .line 2648
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v6, v6, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v6, v6, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v6, :cond_6

    .line 2649
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v4, v6, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2650
    .local v4, "tintList":Landroid/content/res/ColorStateList;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v5, v6, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2651
    .local v5, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v1, v6, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2652
    .local v1, "hasTint":Z
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v6, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2653
    .local v2, "hasTintMode":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 2655
    .local v3, "state":[I
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v7, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_6

    aget-object v0, v7, v6

    .line 2656
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 2655
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2660
    :cond_3
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, v9, :cond_2

    .line 2667
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2669
    if-eqz v1, :cond_4

    .line 2670
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2673
    :cond_4
    if-eqz v2, :cond_5

    .line 2674
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2679
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2680
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 2643
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    .end local v2    # "hasTintMode":Z
    .end local v3    # "state":[I
    .end local v4    # "tintList":Landroid/content/res/ColorStateList;
    .end local v5    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_6
    return-void
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    .prologue
    const/4 v0, 0x1

    .line 7680
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 7681
    if-eqz p1, :cond_1

    .line 7682
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 7683
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7684
    if-eqz p2, :cond_0

    .line 7685
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7679
    :cond_0
    :goto_0
    return-void

    .line 7688
    :cond_1
    if-eqz p3, :cond_2

    .line 7689
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7691
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7692
    if-eqz p2, :cond_0

    .line 7693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 6496
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 6498
    .local v1, "width":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 6499
    const/4 v1, 0x0

    .line 6502
    :cond_0
    move v2, v1

    .line 6504
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 6505
    const/high16 v1, 0x100000

    .line 6508
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6509
    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    .line 6508
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6495
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    .prologue
    .line 7192
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7193
    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    .line 7194
    .local v6, "line":I
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    .line 7195
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 7198
    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 7199
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 7200
    .local v1, "dir":I
    iget v11, p0, Landroid/widget/TextView;->mRight:I

    iget v12, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v2, v11, v12

    .line 7201
    .local v2, "hspace":I
    iget v11, p0, Landroid/widget/TextView;->mBottom:I

    iget v12, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v12

    sub-int v10, v11, v12

    .line 7202
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 7207
    .local v3, "ht":I
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_5

    .line 7208
    const/4 v11, 0x1

    if-ne v1, v11, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7215
    :cond_1
    :goto_1
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_9

    .line 7221
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    .line 7222
    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 7224
    .local v7, "right":I
    sub-int v11, v7, v5

    if-ge v11, v2, :cond_7

    .line 7225
    add-int v11, v7, v5

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v2, 0x2

    sub-int v8, v11, v12

    .line 7240
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    .line 7241
    const/4 v9, 0x0

    .line 7250
    .local v9, "scrolly":I
    :goto_3
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v8, v11, :cond_2

    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v9, v11, :cond_d

    .line 7251
    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7252
    const/4 v11, 0x1

    return v11

    .line 7192
    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .restart local v4    # "layout":Landroid/text/Layout;
    goto :goto_0

    .line 7209
    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7210
    :cond_5
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_1

    .line 7211
    const/4 v11, 0x1

    if-ne v1, v11, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7212
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7227
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    .line 7228
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7230
    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7233
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_a

    .line 7234
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 7235
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7237
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v8, v12

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7243
    :cond_b
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x50

    if-ne v11, v12, :cond_c

    .line 7244
    sub-int v9, v3, v10

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 7246
    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 7254
    :cond_d
    const/4 v11, 0x0

    return v11
.end method

.method private canMarquee()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7813
    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 7814
    .local v0, "width":I
    if-lez v0, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 7815
    iget v3, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v3, :cond_2

    .line 7816
    iget-object v3, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 7814
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 7816
    goto :goto_0

    :cond_2
    move v1, v2

    .line 7815
    goto :goto_0

    :cond_3
    move v1, v2

    .line 7814
    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 7125
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    .line 7126
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    .line 7127
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    .line 7128
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 7131
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 7132
    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 7133
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    const/4 v2, 0x0

    .line 7140
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7141
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    .line 7140
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7144
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 7146
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    .line 7147
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 7148
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7149
    return-void

    .line 7133
    .end local v2    # "hintWant":I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    .restart local v2    # "hintWant":I
    goto :goto_0

    .line 7154
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 7155
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 7156
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7157
    return-void

    .line 7163
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7164
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7121
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    .line 7168
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7169
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7170
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 7084
    const/4 v1, 0x0

    .line 7086
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 7088
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 7089
    const/4 v1, 0x1

    .line 7090
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7094
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 7095
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7097
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 7098
    const/4 v1, 0x1

    .line 7111
    .end local v0    # "desiredHeight":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 7112
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7083
    :cond_2
    return-void

    .line 7100
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 7101
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    .line 7102
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7104
    .restart local v0    # "desiredHeight":I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    .line 7105
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1, "width"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 6770
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    .line 6773
    :cond_0
    cmpl-float v2, p1, v5

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-eqz v2, :cond_2

    .line 6788
    :cond_1
    return v4

    .line 6774
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 6775
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 6776
    .local v1, "textWidth":F
    add-float v2, v1, v3

    sub-float/2addr v2, p1

    div-float v0, v2, p1

    .line 6777
    .local v0, "overflow":F
    cmpl-float v2, v0, v5

    if-lez v2, :cond_1

    const v2, 0x3d8f5c29    # 0.07f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 6778
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v3, v0

    const v4, 0x3ba3d70a    # 0.005f

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 6779
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 6784
    return v6
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 7535
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 7536
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 7537
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 7539
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 7540
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 7541
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 7534
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .prologue
    .line 9707
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 9708
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 9706
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 6792
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 6793
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 6794
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 6799
    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 6800
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 6801
    const/4 v4, -0x1

    return v4

    .line 6799
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6804
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 6805
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 6804
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6808
    :cond_2
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 6003
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6004
    return v5

    .line 6012
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6016
    :cond_1
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 6073
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v3, :cond_a

    .line 6074
    const/4 v0, 0x1

    .line 6075
    .local v0, "doDown":Z
    if-eqz p3, :cond_9

    .line 6077
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6078
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v6, p0, v3, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 6080
    .local v2, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6081
    const/4 v0, 0x0

    .line 6082
    if-eqz v2, :cond_8

    .line 6089
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6083
    return v4

    .line 6013
    .end local v0    # "doDown":Z
    .end local v2    # "handled":Z
    :cond_3
    iput-boolean v5, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    goto :goto_0

    .line 6018
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6023
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v3, :cond_4

    .line 6026
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_4

    .line 6027
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v3, p0, v5, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6026
    if-eqz v3, :cond_4

    .line 6029
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v3, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 6031
    return v4

    .line 6038
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_5

    .line 6039
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v3

    .line 6038
    if-eqz v3, :cond_2

    .line 6040
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6041
    return v5

    .line 6043
    :cond_6
    return v4

    .line 6049
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6050
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6051
    return v5

    .line 6057
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6058
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6059
    return v5

    .line 6066
    :sswitch_3
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    .line 6067
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 6068
    return v4

    .line 6089
    .restart local v0    # "doDown":Z
    .restart local v2    # "handled":Z
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6093
    .end local v2    # "handled":Z
    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    .line 6094
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6095
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6097
    .restart local v2    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6098
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 6099
    if-eqz v2, :cond_a

    return v7

    .line 6085
    .end local v2    # "handled":Z
    :catch_0
    move-exception v1

    .line 6089
    .local v1, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_1

    .line 6088
    .end local v1    # "e":Ljava/lang/AbstractMethodError;
    :catchall_0
    move-exception v3

    .line 6089
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6088
    throw v3

    .line 6106
    .end local v0    # "doDown":Z
    :cond_a
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_e

    .line 6107
    const/4 v0, 0x1

    .line 6108
    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_b

    .line 6110
    :try_start_1
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v6, p0, v3, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 6112
    .restart local v2    # "handled":Z
    const/4 v0, 0x0

    .line 6113
    if-eqz v2, :cond_b

    .line 6114
    return v4

    .line 6116
    .end local v2    # "handled":Z
    :catch_1
    move-exception v1

    .line 6121
    :cond_b
    if-eqz v0, :cond_e

    .line 6122
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 6123
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_c

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6126
    :cond_c
    :goto_2
    const/4 v3, 0x2

    return v3

    .line 6124
    :cond_d
    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    goto :goto_2

    .line 6131
    .end local v0    # "doDown":Z
    :cond_e
    iget-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v3, :cond_f

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    move v3, v5

    :goto_3
    return v3

    :cond_10
    move v3, v4

    goto :goto_3

    .line 6016
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    .prologue
    .line 9721
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 9722
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 9720
    :cond_0
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1835
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 1836
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1837
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1838
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1834
    :goto_0
    return-void

    .line 1840
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1841
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1842
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5053
    const/4 v4, 0x0

    .line 5054
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5056
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5057
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5058
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5061
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 5062
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5063
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5065
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    .line 5066
    const/16 v5, 0x30

    if-ne v1, v5, :cond_2

    .line 5067
    sub-int v4, v0, v3

    .line 5072
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .line 5069
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    .line 5022
    iget-object v2, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 5023
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_1

    .line 5024
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 5026
    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .line 5022
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    goto :goto_0

    .line 5025
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "padding":I
    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 7022
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    .line 7023
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    .line 7021
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 7023
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    .prologue
    const/4 v6, 0x1

    .line 7027
    if-nez p1, :cond_0

    .line 7028
    const/4 v4, 0x0

    return v4

    .line 7031
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7032
    .local v2, "linecount":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 7033
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7035
    .local v0, "desired":I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7036
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 7037
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7038
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7041
    :cond_1
    add-int/2addr v0, v3

    .line 7043
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 7048
    if-eqz p2, :cond_3

    .line 7049
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 7050
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7052
    if-eqz v1, :cond_2

    .line 7053
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7054
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7057
    :cond_2
    add-int/2addr v0, v3

    .line 7058
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 7065
    :cond_3
    :goto_0
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 7066
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 7067
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 7074
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7076
    return v0

    .line 7062
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 7070
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method private getFudgedPaddingRight()I
    .locals 3

    .prologue
    .line 5314
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 5315
    .local v0, "cursorWidth":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    .prologue
    .line 7525
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 7530
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 7531
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7524
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6514
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6558
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6561
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    .line 6516
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 6533
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6518
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6521
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6524
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6527
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6530
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6538
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6541
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6544
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6547
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6548
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6551
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 6552
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6516
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    .prologue
    .line 8575
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 8576
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 8577
    return p2

    .line 8579
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x0

    .line 8541
    if-nez p1, :cond_0

    .line 8543
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 8550
    :cond_0
    sget-object v4, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 8551
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 8552
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_1

    .line 8553
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 8554
    .local v1, "ap":I
    if-eqz v1, :cond_1

    .line 8556
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    .line 8555
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 8557
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 8558
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 8561
    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 8563
    return-object v3
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    .prologue
    .line 8658
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    .line 8661
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 8662
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 8661
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5509
    const/4 v0, 0x0

    .line 5510
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 5512
    .local v1, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 5513
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 5514
    .local v2, "selEnd":I
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    if-ltz v3, :cond_3

    .line 5515
    if-ne v3, v2, :cond_4

    .line 5516
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v6, v6, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v4, v6

    .line 5518
    const-wide/16 v6, 0x3e8

    .line 5517
    rem-long/2addr v4, v6

    .line 5518
    const-wide/16 v6, 0x1f4

    .line 5517
    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 5519
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_2

    .line 5520
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5521
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 5522
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3, v5, v6}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 5523
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 5524
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5528
    :cond_2
    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5529
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5530
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5547
    .end local v0    # "highlight":Landroid/graphics/Path;
    :cond_3
    :goto_0
    return-object v0

    .line 5533
    .restart local v0    # "highlight":Landroid/graphics/Path;
    :cond_4
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_6

    .line 5534
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_5

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5535
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 5536
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5537
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5541
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5542
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5544
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .local v0, "highlight":Landroid/graphics/Path;
    goto :goto_0
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 5125
    if-gez p1, :cond_0

    if-ltz p2, :cond_2

    .line 5126
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5127
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5128
    .local v0, "end":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 5124
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void

    .line 5125
    :cond_2
    if-ltz p3, :cond_1

    goto :goto_0
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 4481
    const v0, 0x2000f

    and-int/2addr v0, p0

    .line 4482
    const v1, 0x20001

    .line 4481
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 3
    .param p0, "inputType"    # I

    .prologue
    const/4 v1, 0x1

    .line 4583
    and-int/lit16 v0, p0, 0xfff

    .line 4585
    .local v0, "variation":I
    const/16 v2, 0x81

    .line 4584
    if-eq v0, v2, :cond_0

    .line 4587
    const/16 v2, 0xe1

    .line 4586
    if-ne v0, v2, :cond_1

    .line 4584
    :cond_0
    :goto_0
    return v1

    .line 4589
    :cond_1
    const/16 v2, 0x12

    .line 4588
    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowingHint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7185
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 4594
    and-int/lit16 v0, p0, 0xfff

    .line 4596
    .local v0, "variation":I
    const/16 v1, 0x91

    .line 4595
    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 17
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    .line 6704
    const/4 v2, 0x0

    .line 6705
    .local v2, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_4

    .line 6706
    new-instance v2, Landroid/text/DynamicLayout;

    .end local v2    # "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6707
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6708
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBreakStrategy:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 6709
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v6

    if-nez v6, :cond_3

    move-object/from16 v14, p6

    :goto_0
    move/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v15, p3

    .line 6706
    invoke-direct/range {v2 .. v15}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    .line 6749
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 6750
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 6751
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    .line 6750
    move/from16 v0, p1

    invoke-static {v3, v6, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6753
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 6750
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6754
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 6750
    invoke-virtual {v3, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6755
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6750
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6756
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 6750
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6757
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 6750
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v16

    .line 6758
    .local v16, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz p5, :cond_1

    .line 6759
    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 6761
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mMaximum:I

    .line 6759
    :goto_2
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 6764
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 6766
    .end local v16    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_2
    return-object v2

    .line 6709
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 6711
    .restart local v2    # "result":Landroid/text/Layout;
    :cond_4
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 6712
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v3, v4, v5, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 6713
    if-eqz p2, :cond_5

    .line 6714
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6718
    :cond_5
    if-eqz p2, :cond_0

    .line 6719
    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_8

    .line 6720
    if-eqz p6, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v3, v0, :cond_8

    .line 6721
    :cond_6
    if-eqz p7, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v3, :cond_7

    .line 6722
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6723
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 6724
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p2

    .line 6722
    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    .line 6731
    .local v2, "result":Landroid/text/Layout;
    :goto_3
    if-eqz p7, :cond_0

    move-object v3, v2

    .line 6732
    check-cast v3, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_1

    .line 6726
    .local v2, "result":Landroid/text/Layout;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6727
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 6728
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    .line 6726
    invoke-static/range {v3 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    .local v2, "result":Landroid/text/Layout;
    goto :goto_3

    .line 6734
    .local v2, "result":Landroid/text/Layout;
    :cond_8
    if-eqz p5, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_0

    .line 6735
    if-eqz p7, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v3, :cond_9

    .line 6736
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6737
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 6738
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p2

    move-object/from16 v12, p6

    move/from16 v13, p3

    .line 6736
    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    .line 6741
    .local v2, "result":Landroid/text/Layout;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6742
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 6743
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move/from16 v12, p3

    .line 6741
    invoke-static/range {v3 .. v12}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    .line 6761
    .end local v2    # "result":Landroid/text/Layout;
    .restart local v16    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_a
    const v3, 0x7fffffff

    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6476
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 6477
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 6479
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 6480
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6483
    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6485
    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6488
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6475
    :cond_2
    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 3
    .param p1, "dimens"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 1449
    if-nez p1, :cond_0

    .line 1450
    return-object v2

    .line 1452
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 1453
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1454
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v1, v0

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    return-object v1
.end method

.method private paste(IIZ)V
    .locals 9
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "withFormatting"    # Z

    .prologue
    .line 9457
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 9458
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 9459
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_5

    .line 9460
    const/4 v2, 0x0

    .line 9461
    .local v2, "didFirst":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 9463
    if-eqz p3, :cond_1

    .line 9464
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 9470
    .local v4, "paste":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v4, :cond_0

    .line 9471
    if-nez v2, :cond_3

    .line 9472
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9473
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v6, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9474
    const/4 v2, 0x1

    .line 9461
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9467
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 9468
    .local v5, "text":Ljava/lang/CharSequence;
    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "paste":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_2
    move-object v4, v5

    .restart local v4    # "paste":Ljava/lang/CharSequence;
    goto :goto_1

    .line 9476
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    const-string/jumbo v8, "\n"

    invoke-interface {v6, v7, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9477
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-interface {v6, v7, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 9481
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 9482
    const-wide/16 v6, 0x0

    sput-wide v6, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 9455
    .end local v2    # "didFirst":Z
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private registerForPreDraw()V
    .locals 1

    .prologue
    .line 5191
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 5192
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5190
    :cond_0
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 7949
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_0

    return-void

    .line 7950
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 7952
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 7953
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .line 7954
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 7955
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 7956
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 7957
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    if-ne v3, p2, :cond_2

    .line 7948
    .end local v2    # "spanEnd":I
    .end local v3    # "spanStart":I
    :cond_1
    return-void

    .line 7958
    .restart local v2    # "spanEnd":I
    .restart local v3    # "spanStart":I
    :cond_2
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 7954
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 6333
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 6334
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    .line 6335
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 6336
    add-int/lit8 v0, v0, -0x1

    .line 6337
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 6332
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 4955
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 4956
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 4957
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 4954
    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 7934
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 7935
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7936
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7937
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7938
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 7937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7943
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 7944
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 7933
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v5, 0x0

    .line 4984
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_5

    .line 4985
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    .line 4986
    .local v3, "undoFilter":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v4, Landroid/text/InputFilter;

    .line 4987
    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    .line 4988
    .local v2, "num":I
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4989
    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 4990
    :cond_1
    if-lez v2, :cond_5

    .line 4991
    array-length v4, p2

    add-int/2addr v4, v2

    new-array v1, v4, [Landroid/text/InputFilter;

    .line 4993
    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v4, p2

    invoke-static {p2, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4994
    const/4 v2, 0x0

    .line 4995
    if-eqz v3, :cond_2

    .line 4996
    array-length v4, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v5, v1, v4

    .line 4997
    const/4 v2, 0x1

    .line 4999
    :cond_2
    if-eqz v0, :cond_3

    .line 5000
    array-length v4, p2

    add-int v5, v4, v2

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v1, v5

    .line 5003
    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 5004
    return-void

    .line 4985
    .end local v0    # "keyFilter":Z
    .end local v1    # "nf":[Landroid/text/InputFilter;
    .end local v2    # "num":I
    .end local v3    # "undoFilter":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "undoFilter":Z
    goto :goto_0

    .line 5007
    .end local v3    # "undoFilter":Z
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 4983
    return-void
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4613
    and-int/lit8 v2, p1, 0xf

    .line 4615
    .local v2, "cls":I
    if-ne v2, v4, :cond_4

    .line 4616
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 4618
    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    .line 4619
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 4627
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 4649
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 4650
    if-eqz p2, :cond_a

    .line 4651
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4652
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 4612
    :goto_3
    return-void

    .line 4616
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "autotext":Z
    goto :goto_0

    .line 4620
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    .line 4621
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4622
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    .line 4623
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4625
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4628
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 4630
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_5

    move v6, v4

    .line 4631
    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_6

    .line 4629
    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_5
    move v6, v5

    .line 4630
    goto :goto_4

    :cond_6
    move v4, v5

    .line 4631
    goto :goto_5

    .line 4632
    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 4633
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 4641
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4635
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4638
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4644
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 4645
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4647
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4654
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 4633
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    .line 7668
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 7669
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7670
    if-eqz p1, :cond_1

    .line 7671
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 7667
    :cond_0
    :goto_0
    return-void

    .line 7673
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 1786
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 1788
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1789
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_2

    .line 1790
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1791
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_3

    .line 1795
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1785
    :cond_2
    return-void

    .line 1792
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 9499
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9500
    const-string/jumbo v2, "clipboard"

    .line 9499
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 9501
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 9498
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 2910
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2911
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2913
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2914
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2915
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2916
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2909
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 1516
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1517
    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1518
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1519
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    .line 1520
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1522
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 1523
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1524
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1525
    .local v3, "state":[I
    if-eqz p1, :cond_4

    .line 1526
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1527
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1528
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1529
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1531
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1532
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1533
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1537
    :goto_1
    if-eqz p2, :cond_5

    .line 1538
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1539
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1540
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1541
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1543
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1544
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1545
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1549
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 1550
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1551
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 1515
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    .line 1516
    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hasRelativeDrawables":Z
    goto :goto_0

    .line 1535
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "state":[I
    :cond_4
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    .line 1547
    :cond_5
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    .prologue
    .line 4213
    if-nez p1, :cond_0

    .line 4214
    const-string/jumbo p1, ""

    .line 4218
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4219
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4222
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 4224
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    .line 4225
    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 4226
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4227
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4228
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 4233
    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4236
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 4237
    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_6

    .line 4238
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 4239
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    .line 4240
    move-object/from16 p1, v16

    .line 4237
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4230
    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4231
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    .line 4244
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_6
    if-eqz p3, :cond_7

    .line 4245
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_11

    .line 4246
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 4247
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v6, v1, v5}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4253
    :cond_7
    :goto_2
    const/4 v15, 0x0

    .line 4255
    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 4256
    const/4 v15, 0x1

    .line 4259
    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 4261
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4262
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    .line 4263
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 4264
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 4265
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4266
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 4267
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4274
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    .line 4277
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_15

    :cond_b
    move-object/from16 v17, p1

    .line 4278
    check-cast v17, Landroid/text/Spannable;

    .line 4283
    .local v17, "s2":Landroid/text/Spannable;
    :goto_4

    invoke-static/range {p0 .. p0}, Landroid/widget/TextView$FlymeInjector;->resetAutoLinkMask(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4284
    move-object/from16 p1, v17

    .line 4285
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_16

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 4292
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4296
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4302
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_c
    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 4303
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4305
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_18

    .line 4306
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 4311
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 4313
    .local v20, "textLength":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-eqz v4, :cond_19

    .line 4346
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_e

    .line 4347
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 4350
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 4351
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4353
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 4355
    if-eqz v15, :cond_f

    .line 4356
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 4360
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4212
    :cond_10
    return-void

    .line 4249
    .end local v15    # "needEditableForNotification":Z
    .end local v20    # "textLength":I
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_11
    const-string/jumbo v4, ""

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v5}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    .line 4259
    .restart local v15    # "needEditableForNotification":Z
    :cond_12
    if-nez v15, :cond_9

    .line 4268
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_14

    .line 4269
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    .line 4270
    :cond_14
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    .line 4271
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    .line 4280
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_4

    .line 4285
    :cond_16
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .line 4297
    :cond_17
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_6

    .line 4308
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_7

    .restart local v20    # "textLength":I
    :cond_19
    move-object/from16 v18, p1

    .line 4314
    check-cast v18, Landroid/text/Spannable;

    .line 4317
    .local v18, "sp":Landroid/text/Spannable;
    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 4318
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 4319
    .local v11, "count":I
    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_1a

    .line 4320
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4319
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 4323
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1b

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$ChangeWatcher;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 4325
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4328
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 4330
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_1d

    .line 4331
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4334
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_d

    .line 4335
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 4342
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    goto/16 :goto_8
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    .line 1490
    const/4 v0, 0x0

    .line 1491
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 1492
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1493
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1495
    return-void

    .line 1498
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1512
    :goto_0
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1489
    return-void

    .line 1500
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1504
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1508
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shareSelectedText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9487
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 9488
    .local v0, "selectedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9486
    :cond_0
    :goto_0
    return-void

    .line 9489
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9490
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9491
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9492
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9493
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9494
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5966
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5967
    return v3

    .line 5970
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_1

    .line 5971
    return v2

    .line 5974
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3

    .line 5975
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_3

    .line 5976
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 5977
    .local v0, "variation":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 5978
    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    .line 5979
    :cond_2
    return v2

    .line 5983
    .end local v0    # "variation":I
    :cond_3
    return v3
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5991
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_1

    .line 5999
    :cond_0
    return v2

    .line 5991
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 5992
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_0

    .line 5993
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 5994
    .local v0, "variation":I
    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_2

    .line 5995
    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    .line 5996
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8769
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8770
    const-string/jumbo v3, "speak_password"

    .line 8771
    const/4 v4, -0x3

    .line 8769
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7821
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 7823
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7824
    return-void

    .line 7827
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7828
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    .line 7827
    if-eqz v1, :cond_6

    .line 7830
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    .line 7831
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7832
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7833
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7834
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7835
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7836
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7837
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7840
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7841
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 7819
    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 7862
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 7863
    if-eqz p1, :cond_1

    .line 7864
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7861
    :cond_0
    :goto_0
    return-void

    .line 7866
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    .line 7846
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7850
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7851
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 7852
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7853
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7854
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7855
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 7856
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7857
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7845
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_1
    return-void

    .line 7847
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    goto :goto_0
.end method

.method private unregisterForPreDraw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5198
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5199
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5200
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5197
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3934
    const/4 v1, 0x0

    .line 3935
    .local v1, "inval":Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 3936
    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 3937
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 3938
    const/4 v1, 0x1

    .line 3940
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 3941
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 3942
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 3943
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 3944
    const/4 v1, 0x1

    .line 3947
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 3948
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 3949
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    .line 3950
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 3951
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 3952
    const/4 v1, 0x1

    .line 3956
    :cond_2
    if-eqz v1, :cond_4

    .line 3958
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 3959
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3933
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .prologue
    .line 8711
    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 8707
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    .prologue
    .line 8721
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 8720
    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 8722
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 8724
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 8725
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 8729
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 8719
    return-void

    .line 8727
    :cond_0
    const/4 v0, 0x0

    .local v0, "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 7911
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 7915
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7910
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3917
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 3916
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 3926
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 3927
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3930
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 3925
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 6438
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    .line 6437
    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 30
    .param p1, "offset"    # I

    .prologue
    .line 7263
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 7264
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 7265
    const/16 v25, 0x0

    return v25

    .line 7267
    :cond_0
    const/4 v5, 0x0

    .line 7269
    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    .line 7271
    .local v16, "layout":Landroid/text/Layout;
    :goto_0
    if-nez v16, :cond_2

    return v5

    .line 7269
    .end local v16    # "layout":Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    .restart local v16    # "layout":Landroid/text/Layout;
    goto :goto_0

    .line 7273
    :cond_2
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    .line 7277
    .local v18, "line":I
    invoke-static {}, Landroid/widget/TextView;->-getandroid_text_Layout$AlignmentSwitchesValues()[I

    move-result-object v25

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 7292
    const/4 v11, 0x0

    .line 7306
    .local v11, "grav":I
    :goto_1
    if-lez v11, :cond_12

    const/4 v6, 0x1

    .line 7308
    .local v6, "clamped":Z
    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 7309
    .local v24, "x":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 7310
    .local v20, "top":I
    add-int/lit8 v25, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 7312
    .local v4, "bottom":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v17, v0

    .line 7313
    .local v17, "left":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 7314
    .local v19, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 7316
    .local v15, "ht":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 7317
    .local v14, "hspace":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 7318
    .local v23, "vspace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    sub-int v25, v19, v17

    move/from16 v0, v25

    if-le v0, v14, :cond_3

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    .line 7320
    add-int v25, v17, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 7323
    :cond_3
    sub-int v25, v4, v20

    div-int/lit8 v13, v25, 0x2

    .line 7324
    .local v13, "hslack":I
    move/from16 v22, v13

    .line 7326
    .local v22, "vslack":I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 7327
    div-int/lit8 v22, v23, 0x4

    .line 7328
    :cond_4
    div-int/lit8 v25, v14, 0x4

    move/from16 v0, v25

    if-le v13, v0, :cond_5

    .line 7329
    div-int/lit8 v13, v14, 0x4

    .line 7331
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7332
    .local v12, "hs":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v21, v0

    .line 7334
    .local v21, "vs":I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 7335
    sub-int v21, v20, v22

    .line 7336
    :cond_6
    sub-int v25, v4, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 7337
    sub-int v25, v23, v22

    sub-int v21, v4, v25

    .line 7338
    :cond_7
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 7339
    sub-int v21, v15, v23

    .line 7340
    :cond_8
    rsub-int/lit8 v25, v21, 0x0

    if-lez v25, :cond_9

    .line 7341
    const/16 v21, 0x0

    .line 7343
    :cond_9
    if-eqz v11, :cond_b

    .line 7344
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_a

    .line 7345
    sub-int v12, v24, v13

    .line 7347
    :cond_a
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_b

    .line 7348
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 7352
    :cond_b
    if-gez v11, :cond_13

    .line 7353
    sub-int v25, v17, v12

    if-lez v25, :cond_c

    .line 7354
    move/from16 v12, v17

    .line 7355
    :cond_c
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_d

    .line 7356
    sub-int v12, v19, v14

    .line 7403
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v12, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 7404
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_1c

    .line 7405
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7426
    :goto_4
    const/4 v5, 0x1

    .line 7429
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 7437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-nez v25, :cond_10

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 7438
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    add-int/lit8 v26, v24, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 7440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    .line 7442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 7443
    const/4 v5, 0x1

    .line 7447
    :cond_11
    return v5

    .line 7279
    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v11    # "grav":I
    .end local v12    # "hs":I
    .end local v13    # "hslack":I
    .end local v14    # "hspace":I
    .end local v15    # "ht":I
    .end local v17    # "left":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    .end local v21    # "vs":I
    .end local v22    # "vslack":I
    .end local v23    # "vspace":I
    .end local v24    # "x":I
    :pswitch_0
    const/4 v11, 0x1

    .line 7280
    .restart local v11    # "grav":I
    goto/16 :goto_1

    .line 7282
    .end local v11    # "grav":I
    :pswitch_1
    const/4 v11, -0x1

    .line 7283
    .restart local v11    # "grav":I
    goto/16 :goto_1

    .line 7285
    .end local v11    # "grav":I
    :pswitch_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .restart local v11    # "grav":I
    goto/16 :goto_1

    .line 7288
    .end local v11    # "grav":I
    :pswitch_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    move/from16 v0, v25

    neg-int v11, v0

    .line 7289
    .restart local v11    # "grav":I
    goto/16 :goto_1

    .line 7306
    :cond_12
    const/4 v6, 0x0

    .restart local v6    # "clamped":Z
    goto/16 :goto_2

    .line 7357
    .restart local v4    # "bottom":I
    .restart local v12    # "hs":I
    .restart local v13    # "hslack":I
    .restart local v14    # "hspace":I
    .restart local v15    # "ht":I
    .restart local v17    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    .restart local v21    # "vs":I
    .restart local v22    # "vslack":I
    .restart local v23    # "vspace":I
    .restart local v24    # "x":I
    :cond_13
    if-lez v11, :cond_15

    .line 7358
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_14

    .line 7359
    sub-int v12, v19, v14

    .line 7360
    :cond_14
    sub-int v25, v17, v12

    if-lez v25, :cond_d

    .line 7361
    move/from16 v12, v17

    goto/16 :goto_3

    .line 7363
    :cond_15
    sub-int v25, v19, v17

    move/from16 v0, v25

    if-gt v0, v14, :cond_16

    .line 7367
    sub-int v25, v19, v17

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v17, v25

    goto/16 :goto_3

    .line 7368
    :cond_16
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_17

    .line 7373
    sub-int v12, v19, v14

    goto/16 :goto_3

    .line 7374
    :cond_17
    add-int v25, v17, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_18

    .line 7379
    move/from16 v12, v17

    goto/16 :goto_3

    .line 7380
    :cond_18
    move/from16 v0, v17

    if-le v0, v12, :cond_19

    .line 7384
    move/from16 v12, v17

    goto/16 :goto_3

    .line 7385
    :cond_19
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_1a

    .line 7389
    sub-int v12, v19, v14

    goto/16 :goto_3

    .line 7394
    :cond_1a
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_1b

    .line 7395
    sub-int v12, v24, v13

    .line 7397
    :cond_1b
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    .line 7398
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_3

    .line 7407
    :cond_1c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .line 7408
    .local v8, "duration":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    sub-int v7, v12, v25

    .line 7409
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 7411
    .local v10, "dy":I
    const-wide/16 v26, 0xfa

    cmp-long v25, v8, v26

    if-lez v25, :cond_1d

    .line 7412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 7413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 7414
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 7423
    :goto_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_4

    .line 7416
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_1e

    .line 7417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7420
    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_5

    .line 7277
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9394
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9395
    return v1

    .line 9398
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 9399
    const/4 v0, 0x1

    return v0

    .line 9402
    :cond_1
    return v1
.end method

.method canCut()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9381
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9382
    return v1

    .line 9385
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 9386
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 9387
    const/4 v0, 0x1

    return v0

    .line 9390
    :cond_1
    return v1
.end method

.method canPaste()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9410
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    .line 9411
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 9412
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_0

    .line 9413
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_0

    .line 9414
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    .line 9410
    :cond_0
    return v0
.end method

.method canProcessText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9419
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 9421
    :cond_0
    return v2

    .line 9420
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9419
    if-nez v0, :cond_0

    .line 9424
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    .line 9425
    const/4 v0, 0x1

    return v0

    .line 9428
    :cond_2
    return v2
.end method

.method canRedo()Z
    .locals 1

    .prologue
    .line 9377
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canSelectAllText()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9432
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 9433
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method canSelectText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8638
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    :cond_0
    return v0
.end method

.method canShare()Z
    .locals 1

    .prologue
    .line 9406
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method canUndo()Z
    .locals 1

    .prologue
    .line 9373
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 8400
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 8401
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 8399
    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 8251
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 8252
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 8250
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 8495
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 8496
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 8497
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 8496
    :goto_0
    return v0

    .line 8497
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 8500
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 7514
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 7515
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7516
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 7517
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 7518
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 7519
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 7513
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 8513
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 8505
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8506
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    .line 8508
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 9522
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 9524
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 9525
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 9526
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 9527
    return p1
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 7558
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 7560
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7561
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7562
    const-string/jumbo v2, ", "

    .line 7561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7562
    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    .line 7561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7562
    const-string/jumbo v2, "} scroll={"

    .line 7561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7562
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    .line 7561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7562
    const-string/jumbo v2, ", "

    .line 7561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7562
    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    .line 7561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7563
    const-string/jumbo v2, "} "

    .line 7561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7565
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 7567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7568
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 7569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7570
    const-string/jumbo v2, " height="

    .line 7569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7570
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 7569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7575
    :cond_0
    :goto_0
    const-string/jumbo v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7557
    return-void

    .line 7573
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 9667
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 9666
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 8395
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 8175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8176
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 8177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8174
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3984
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 3986
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v2, :cond_1

    .line 3987
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 3988
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 3989
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3990
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3988
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3983
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "state":[I
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 3965
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3966
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3967
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    .line 3966
    if-nez v2, :cond_2

    .line 3968
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    .line 3966
    if-eqz v2, :cond_3

    .line 3969
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3972
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v2, :cond_5

    .line 3973
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 3974
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    .line 3975
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3976
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3974
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3964
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "state":[I
    :cond_5
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 9804
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9806
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    .line 9807
    .local v0, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v3, "text:ellipsize"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9808
    const-string/jumbo v1, "text:textSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 9809
    const-string/jumbo v1, "text:scaledTextSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 9810
    const-string/jumbo v1, "text:typefaceStyle"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9811
    const-string/jumbo v1, "text:selectionStart"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9812
    const-string/jumbo v1, "text:selectionEnd"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9813
    const-string/jumbo v1, "text:curTextColor"

    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9814
    const-string/jumbo v1, "text:text"

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9815
    const-string/jumbo v1, "text:gravity"

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9803
    return-void

    .line 9807
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9814
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 6442
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 6441
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 6323
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6324
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 8518
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 8519
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 8520
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8517
    :cond_0
    :goto_0
    return-void

    .line 8520
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8521
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 8522
    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 8523
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8524
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 8776
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 9774
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 9759
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    invoke-static/range {p0 .. p0}, Landroid/widget/TextView$FlymeInjector;->mzGetAutoLinkMask(Landroid/widget/TextView;)I

    move-result v0

    return v0

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getBaselineOffset()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBreakStrategy()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    aput-object v2, v1, v3

    aput-object v2, v1, v6

    aput-object v2, v1, v4

    return-object v1
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    return v1
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    return v5

    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    return v5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    return v0

    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    add-int v5, v0, v4

    sub-int/2addr v5, v2

    return v5

    :cond_4
    const/16 v5, 0x50

    if-ne v1, v5, :cond_5

    return v0

    :cond_5
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    return v5
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    return v5

    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    return v5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    return v3

    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    return v3

    :cond_4
    const/16 v5, 0x50

    if-ne v1, v5, :cond_5

    add-int v5, v3, v4

    sub-int/2addr v5, v2

    return v5

    :cond_5
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    return v5
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1, "offsetRequired"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .local v6, "selEnd":I
    if-gez v6, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .local v7, "selStart":I
    if-ltz v7, :cond_2

    if-lt v7, v6, :cond_4

    :cond_2
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .local v0, "line":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .end local v0    # "line":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    .local v5, "paddingTop":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_3

    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v5, v8

    :cond_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, "lineStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .local v1, "lineEnd":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v1, :cond_5

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_5
    iget-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v8, :cond_6

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_7
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 4
    .param p1, "granularity"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v3

    return-object v3

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .local v2, "text":Landroid/text/Spannable;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    return-object v0

    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v2    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .restart local v2    # "text":Landroid/text/Spannable;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v1

    .local v1, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v5, v6, :cond_1

    iget v5, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v5, v9, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v5}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    if-ne v5, v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .local v1, "layoutDirection":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absoluteGravity":I
    and-int/lit8 v5, v0, 0x7

    packed-switch v5, :pswitch_data_0

    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    return v5

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    .local v3, "scroll":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    return v5

    .end local v3    # "scroll":F
    :cond_3
    return v7

    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_1
    return v7

    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    return v5

    :pswitch_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .local v4, "textDirection":I
    if-ne v4, v9, :cond_4

    return v7

    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLetterSpacing()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return v3

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    add-int v2, v0, v1

    return v2
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .local v0, "line":I
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .local v1, "offset":I
    return v1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v9, :cond_1

    iget v8, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v8, v12, :cond_1

    iget-object v8, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v8}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v8

    if-ne v8, v12, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .local v1, "layoutDirection":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v8, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absoluteGravity":I
    and-int/lit8 v8, v0, 0x7

    packed-switch v8, :pswitch_data_0

    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    return v8

    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    .local v4, "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    .local v5, "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    return v8

    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_1
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .local v7, "textWidth":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .local v2, "lineWidth":F
    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    return v8

    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_2
    return v11

    :pswitch_3
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .local v6, "textDirection":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    return v11

    :cond_3
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, Landroid/widget/TextView;->mRight:I

    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    if-le v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "defaultIsRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-object v1

    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "defaultIsRtl":Z
    goto :goto_0

    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    return-object v0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    const/4 v4, 0x0

    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    const/16 v5, 0x50

    if-ne v1, v5, :cond_2

    sub-int v4, v0, v3

    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    return v3

    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_6

    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    return v2

    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v3
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_4

    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    goto :goto_0

    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_4
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method invalidateCursor()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method invalidateCursorPath()V
    .locals 12

    .prologue
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_3

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v3, v8

    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    goto :goto_0

    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mScrollX:I

    .local v9, "scrollX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_0

    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .local v1, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .local v11, "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v9, v12

    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    const/4 v7, 0x1

    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-nez v7, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_3
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .restart local v1    # "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .restart local v11    # "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v12, v13

    add-int/2addr v9, v12

    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    const/4 v7, 0x1

    goto :goto_0

    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_4
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .local v3, "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .local v8, "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v10, v12

    const/4 v7, 0x1

    goto :goto_0

    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v8    # "hspace":I
    :cond_5
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .restart local v3    # "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .restart local v8    # "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .local v8, "lineStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .local v10, "top":I
    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move v7, v8

    .local v7, "lineEnd":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .local v2, "bottom":I
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_3

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7    # "lineEnd":I
    goto :goto_1

    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    move v6, v4

    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .local v9, "right":I
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .restart local v6    # "left":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .restart local v9    # "right":I
    add-int/2addr v6, v4

    add-int/2addr v9, v4

    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    return v1
.end method

.method public isInExtractedMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleLine()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-lez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .local v0, "variation":I
    if-eqz v0, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/16 v3, 0x50

    if-eq v0, v3, :cond_3

    const/16 v3, 0x40

    if-eq v0, v3, :cond_3

    const/16 v3, 0xa0

    if-eq v0, v3, :cond_3

    move v1, v2

    goto :goto_0
.end method

.method isTextEditable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v2, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 32
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-gez p1, :cond_0

    const/16 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/16 p2, 0x0

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_12

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_10

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_11

    const/16 v31, 0x1

    .local v31, "testDirChange":Z
    :goto_0
    const/16 v29, 0x0

    .local v29, "oldDir":I
    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v29

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v7, 0x1

    .local v7, "shouldEllipsize":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_14

    const/16 v30, 0x1

    .local v30, "switchEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_16

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v30, :cond_5

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_17

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_18

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_19

    const/4 v7, 0x1

    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    if-eqz v7, :cond_6

    move/from16 p2, p1

    :cond_6
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_7
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_1b

    if-eqz v7, :cond_8

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_1b

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v2, v5, v3, v4, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v27

    .local v27, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    :goto_9
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    :cond_a
    invoke-virtual/range {v27 .. v27}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_b
    if-nez p6, :cond_c

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v29

    if-eq v0, v2, :cond_d

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_e

    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    .local v28, "height":I
    const/4 v2, -0x2

    move/from16 v0, v28

    if-eq v0, v2, :cond_1e

    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .end local v28    # "height":I
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_f
    return-void

    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v29    # "oldDir":I
    .end local v30    # "switchEllipsize":Z
    .end local v31    # "testDirChange":Z
    :cond_10
    const/16 v31, 0x1

    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    .end local v31    # "testDirChange":Z
    :cond_11
    const/16 v31, 0x0

    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    .end local v31    # "testDirChange":Z
    :cond_12
    const/16 v31, 0x0

    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    .restart local v29    # "oldDir":I
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "shouldEllipsize":Z
    goto/16 :goto_1

    :cond_14
    const/16 v30, 0x0

    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_2

    .end local v30    # "switchEllipsize":Z
    :cond_15
    const/16 v30, 0x0

    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_2

    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_17
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    goto/16 :goto_4

    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_5

    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_1b
    if-eqz v7, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .restart local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_1d
    const v2, 0x7fffffff

    goto/16 :goto_9

    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v28    # "height":I
    :cond_1e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_a
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    return v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, "end":I
    if-eq v12, v3, :cond_1

    const/16 v17, 0x0

    return v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .local v8, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .local v16, "vspace":I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    div-int/lit8 v15, v16, 0x4

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .local v14, "vs":I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .local v6, "hspace":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .local v5, "hs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .local v7, "leftChar":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    move v9, v7

    .local v9, "lowChar":I
    :goto_1
    if-le v7, v11, :cond_7

    move v4, v7

    .local v4, "highChar":I
    :goto_2
    move v10, v12

    .local v10, "newStart":I
    if-ge v10, v9, :cond_8

    move v10, v9

    :cond_4
    :goto_3
    if-eq v10, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/16 v17, 0x1

    return v17

    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_0

    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_6
    move v9, v11

    .restart local v9    # "lowChar":I
    goto :goto_1

    :cond_7
    move v4, v11

    .restart local v4    # "highChar":I
    goto :goto_2

    .restart local v10    # "newStart":I
    :cond_8
    if-le v10, v4, :cond_4

    move v10, v4

    goto :goto_3

    :cond_9
    const/16 v17, 0x0

    return v17
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_1
    return-void

    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v2, v0

    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    const v5, #android:attr@state_pressed#t

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v3

    .end local v0    # "drawableState":[I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x8000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :goto_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_6

    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    return-object v0

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    :cond_5
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    :cond_6
    return-object v3
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    return v3

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v3

    .end local v0    # "offset":I
    :pswitch_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    :cond_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v16

    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v18

    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v15

    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v33, v0

    .local v33, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v34, v0

    .local v34, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v31, v0

    .local v31, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v26, v0

    .local v26, "left":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mBottom:I

    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v35, v0

    .local v35, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v24

    .local v24, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v29

    .local v29, "offset":I
    if-eqz v24, :cond_d

    const/16 v27, 0x0

    .local v27, "leftOffset":I
    :goto_0
    if-eqz v24, :cond_e

    move/from16 v32, v29

    .local v32, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v19, v0

    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_3

    sub-int v2, v9, v35

    sub-int/2addr v2, v15

    sub-int v38, v2, v18

    .local v38, "vspace":I
    sub-int v2, v31, v26

    sub-int v2, v2, v17

    sub-int v23, v2, v16

    .local v23, "hspace":I
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v2, v2, v33

    add-int v2, v2, v27

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v6, v38, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v31

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v32

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v6, v38, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v3, v3, v34

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int v3, v34, v9

    sub-int v3, v3, v35

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v23    # "hspace":I
    .end local v38    # "vspace":I
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    .local v14, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v22

    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v21

    .local v21, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    sub-int v38, v2, v18

    .restart local v38    # "vspace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v28, v2, v38

    .local v28, "maxScrollY":I
    add-int v2, v16, v33

    int-to-float v11, v2

    .local v11, "clipLeft":F
    if-nez v34, :cond_f

    const/4 v2, 0x0

    :goto_2
    int-to-float v13, v2

    .local v13, "clipTop":F
    sub-int v2, v31, v26

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, v33

    int-to-float v12, v2

    .local v12, "clipRight":F
    sub-int v2, v9, v35

    add-int v2, v2, v34

    move/from16 v0, v34

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v21, 0x0

    .end local v21    # "extendedPaddingBottom":I
    :cond_7
    sub-int v2, v2, v21

    int-to-float v10, v2

    .local v10, "clipBottom":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v11, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v10, v2

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/16 v37, 0x0

    .local v37, "voffsetText":I
    const/16 v36, 0x0

    .local v36, "voffsetCursor":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v37

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v36

    :cond_9
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v3, v22, v37

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v25

    .local v25, "layoutDirection":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v25

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .local v8, "absoluteGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_a

    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    sub-int v39, v2, v3

    .local v39, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v30, v2, v3

    .local v30, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v39, v30

    int-to-float v3, v3

    sub-float v20, v2, v3

    .local v20, "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .end local v20    # "dx":F
    .end local v30    # "padding":I
    .end local v39    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .end local v20    # "dx":F
    :cond_b
    sub-int v7, v36, v37

    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v20

    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .end local v20    # "dx":F
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v10    # "clipBottom":F
    .end local v11    # "clipLeft":F
    .end local v12    # "clipRight":F
    .end local v13    # "clipTop":F
    .end local v14    # "color":I
    .end local v19    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "extendedPaddingTop":I
    .end local v25    # "layoutDirection":I
    .end local v27    # "leftOffset":I
    .end local v28    # "maxScrollY":I
    .end local v32    # "rightOffset":I
    .end local v36    # "voffsetCursor":I
    .end local v37    # "voffsetText":I
    .end local v38    # "vspace":I
    :cond_d
    move/from16 v27, v29

    .restart local v27    # "leftOffset":I
    goto/16 :goto_0

    :cond_e
    const/16 v32, 0x0

    .restart local v32    # "rightOffset":I
    goto/16 :goto_1

    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v11    # "clipLeft":F
    .restart local v14    # "color":I
    .restart local v19    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v21    # "extendedPaddingBottom":I
    .restart local v22    # "extendedPaddingTop":I
    .restart local v28    # "maxScrollY":I
    .restart local v38    # "vspace":I
    :cond_f
    add-int v2, v22, v34

    goto/16 :goto_2

    .end local v21    # "extendedPaddingBottom":I
    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v7    # "cursorOffsetVertical":I
    .restart local v8    # "absoluteGravity":I
    .restart local v10    # "clipBottom":F
    .restart local v12    # "clipRight":F
    .restart local v13    # "clipTop":F
    .restart local v25    # "layoutDirection":I
    .restart local v36    # "voffsetCursor":I
    .restart local v37    # "voffsetText":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_3
.end method

.method public onEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    goto :goto_0

    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_2

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    return-void

    .end local v20    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    return-void

    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_6
    return-void

    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .end local v4    # "eventTime":J
    :cond_8
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v2, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_2

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v4, 0x200

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v4, 0x1f

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x4000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x8000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x10000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:string@share#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-direct {v4, v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v3, v4

    .local v3, "numFilters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_b

    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v4, v1

    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_a

    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .local v0, "which":I
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .local v2, "which":I
    if-nez v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 p2, p2, -0x1

    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    return v5

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #android:id@selectAll#t

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #android:id@undo#t

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #android:id@cut#t

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #android:id@copy#t

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #android:id@paste#t

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x1001

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #android:id@pasteAsPlainText#t

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, #android:id@redo#t

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_3
        0x32 -> :sswitch_4
        0x34 -> :sswitch_2
        0x36 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_5
        0x36 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v4

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v2, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v3, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v4

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "v":Landroid/view/View;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_a

    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v4

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    .local v0, "curs":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .local v24, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .local v25, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .local v15, "heightSize":I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_0
    const/4 v9, -0x1

    .local v9, "des":I
    const/4 v12, 0x0

    .local v12, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-ne v0, v2, :cond_7

    move/from16 v22, v25

    .local v22, "width":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .local v3, "want":I
    move/from16 v21, v3

    .local v21, "unpaddedWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x100000

    :cond_2
    move v4, v3

    .local v4, "hintWant":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_17

    move/from16 v17, v4

    .local v17, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_3
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v14, v2, :cond_23

    move v13, v15

    .local v13, "height":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v20, v2, v7

    .local v20, "unpaddedHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v20

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v21

    if-le v2, v0, :cond_24

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void

    .end local v3    # "want":I
    .end local v4    # "hintWant":I
    .end local v13    # "height":I
    .end local v17    # "hintWidth":I
    .end local v20    # "unpaddedHeight":I
    .end local v21    # "unpaddedWidth":I
    .end local v22    # "width":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    :cond_8
    if-gez v9, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_13

    :cond_a
    if-gez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v9, v0

    :cond_b
    move/from16 v22, v9

    .restart local v22    # "width":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_c

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_11

    const/16 v16, -0x1

    .local v16, "hintDes":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v16

    :cond_d
    if-gez v16, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_e
    if-eqz v6, :cond_f

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_14

    :cond_f
    if-gez v16, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v16, v0

    :cond_10
    move/from16 v17, v16

    .restart local v17    # "hintWidth":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    move/from16 v22, v17

    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v22, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/high16 v2, -0x80000000

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_0

    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "width":I
    :cond_12
    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_13
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v22, v0

    .restart local v22    # "width":I
    goto/16 :goto_6

    .restart local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v16    # "hintDes":I
    :cond_14
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v0

    .restart local v17    # "hintWidth":I
    goto :goto_7

    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto :goto_9

    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "want":I
    .restart local v4    # "hintWant":I
    .restart local v21    # "unpaddedWidth":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v17

    .restart local v17    # "hintWidth":I
    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_19

    move/from16 v0, v17

    if-eq v0, v4, :cond_1d

    :cond_19
    const/16 v18, 0x1

    .local v18, "layoutChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1a

    if-eqz v12, :cond_1f

    if-ltz v9, :cond_1f

    if-gt v9, v3, :cond_1f

    :cond_1a
    const/16 v23, 0x1

    .local v23, "widthChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_21

    :cond_1b
    const/16 v19, 0x1

    .local v19, "maximumChanged":Z
    :goto_c
    if-nez v18, :cond_1c

    if-eqz v19, :cond_3

    :cond_1c
    if-nez v19, :cond_22

    if-eqz v23, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v22, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1e

    const/16 v18, 0x1

    .restart local v18    # "layoutChanged":Z
    goto :goto_a

    .end local v18    # "layoutChanged":Z
    :cond_1e
    const/16 v18, 0x0

    .restart local v18    # "layoutChanged":Z
    goto :goto_a

    :cond_1f
    const/16 v23, 0x0

    .restart local v23    # "widthChanged":Z
    goto :goto_b

    .end local v23    # "widthChanged":Z
    :cond_20
    const/16 v23, 0x0

    .restart local v23    # "widthChanged":Z
    goto :goto_b

    :cond_21
    const/16 v19, 0x0

    .restart local v19    # "maximumChanged":Z
    goto :goto_c

    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .local v10, "desired":I
    move v13, v10

    .restart local v13    # "height":I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v2, -0x80000000

    if-ne v14, v2, :cond_4

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_3

    .end local v10    # "desired":I
    .restart local v20    # "unpaddedHeight":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v20

    if-gt v2, v0, :cond_6

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .local v0, "isPassword":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "curs":I
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_2
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .end local v0    # "curs":I
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    const/4 v1, 0x1

    return v1

    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 32
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v29

    if-nez v29, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v12

    :goto_0
    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .local v13, "layout":Landroid/text/Layout;
    invoke-virtual {v13}, Landroid/text/Layout;->getLineCount()I

    move-result v15

    .local v15, "lineCount":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-gt v15, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v31

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    :goto_1
    const/16 v21, 0x0

    .local v21, "style":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v26

    .local v26, "typefaceStyle":I
    and-int/lit8 v29, v26, 0x1

    if-eqz v29, :cond_1

    const/16 v21, 0x1

    :cond_1
    and-int/lit8 v29, v26, 0x2

    if-eqz v29, :cond_2

    or-int/lit8 v21, v21, 0x2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/text/TextPaint;->getFlags()I

    move-result v17

    .local v17, "paintFlags":I
    and-int/lit8 v29, v17, 0x20

    if-eqz v29, :cond_3

    or-int/lit8 v21, v21, 0x1

    :cond_3
    and-int/lit8 v29, v17, 0x8

    if-eqz v29, :cond_4

    or-int/lit8 v21, v21, 0x4

    :cond_4
    and-int/lit8 v29, v17, 0x10

    if-eqz v29, :cond_5

    or-int/lit8 v21, v21, 0x8

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v30

    const/16 v31, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .end local v13    # "layout":Landroid/text/Layout;
    .end local v15    # "lineCount":I
    .end local v17    # "paintFlags":I
    .end local v21    # "style":I
    .end local v26    # "typefaceStyle":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    const/4 v12, 0x1

    .local v12, "isPassword":Z
    goto/16 :goto_0

    .end local v12    # "isPassword":Z
    .restart local v13    # "layout":Landroid/text/Layout;
    .restart local v15    # "lineCount":I
    :cond_8
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .local v23, "tmpCords":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    const/16 v29, 0x1

    aget v25, v23, v29

    .local v25, "topWindowLocation":I
    move-object/from16 v18, p0

    .local v18, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    .local v27, "viewParent":Landroid/view/ViewParent;
    :goto_2
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/view/View;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v18, v27

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    goto :goto_2

    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v28

    .local v28, "windowHeight":I
    if-ltz v25, :cond_10

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .local v24, "topLine":I
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .local v6, "bottomLine":I
    :goto_3
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    sub-int v10, v24, v29

    .local v10, "expandedTopLine":I
    if-gez v10, :cond_a

    const/4 v10, 0x0

    :cond_a
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    add-int v8, v6, v29

    .local v8, "expandedBottomLine":I
    if-lt v8, v15, :cond_b

    add-int/lit8 v8, v15, -0x1

    :cond_b
    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .local v9, "expandedTopChar":I
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .local v7, "expandedBottomChar":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    .local v20, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    .local v19, "selEnd":I
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    move/from16 v0, v20

    if-ge v0, v9, :cond_c

    move/from16 v9, v20

    :cond_c
    move/from16 v0, v19

    if-le v0, v7, :cond_d

    move/from16 v7, v19

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    .local v22, "text":Ljava/lang/CharSequence;
    if-gtz v9, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_f

    :cond_e
    move-object/from16 v0, v22

    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    :cond_f
    sub-int v29, v20, v9

    sub-int v30, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .local v16, "lineOffsets":[I
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v14, v0, [I

    .local v14, "lineBaselines":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v5

    .local v5, "baselineOffset":I
    move/from16 v11, v24

    .local v11, "i":I
    :goto_4
    if-gt v11, v6, :cond_11

    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v30

    aput v30, v16, v29

    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v30

    add-int v30, v30, v5

    aput v30, v14, v29

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v5    # "baselineOffset":I
    .end local v6    # "bottomLine":I
    .end local v7    # "expandedBottomChar":I
    .end local v8    # "expandedBottomLine":I
    .end local v9    # "expandedTopChar":I
    .end local v10    # "expandedTopLine":I
    .end local v11    # "i":I
    .end local v14    # "lineBaselines":[I
    .end local v16    # "lineOffsets":[I
    .end local v19    # "selEnd":I
    .end local v20    # "selStart":I
    .end local v22    # "text":Ljava/lang/CharSequence;
    .end local v24    # "topLine":I
    :cond_10
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .restart local v24    # "topLine":I
    add-int/lit8 v29, v28, -0x1

    sub-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .restart local v6    # "bottomLine":I
    goto/16 :goto_3

    .restart local v5    # "baselineOffset":I
    .restart local v7    # "expandedBottomChar":I
    .restart local v8    # "expandedBottomLine":I
    .restart local v9    # "expandedTopChar":I
    .restart local v10    # "expandedTopLine":I
    .restart local v11    # "i":I
    .restart local v14    # "lineBaselines":[I
    .restart local v16    # "lineOffsets":[I
    .restart local v19    # "selEnd":I
    .restart local v20    # "selStart":I
    .restart local v22    # "text":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    goto/16 :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView$SavedState;

    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_4

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_2

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_7

    :cond_2
    const-string v2, ""

    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    const-string v2, "(restored) "

    :cond_3
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v4, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v4, v5}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    :cond_6
    return-void

    .restart local v1    # "len":I
    :cond_7
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    .local v0, "newTextDir":Landroid/text/TextDirectionHeuristic;
    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .local v5, "superState":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .local v1, "save":Z
    const/4 v4, 0x0

    .local v4, "start":I
    const/4 v0, 0x0

    .local v0, "end":I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-gez v4, :cond_0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .end local v1    # "save":Z
    :cond_1
    if-eqz v1, :cond_6

    new-instance v3, Landroid/widget/TextView$SavedState;

    invoke-direct {v3, v5}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v3, "ss":Landroid/widget/TextView$SavedState;
    iput v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iput v0, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v2, "sp":Landroid/text/Spannable;
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    iput-object v2, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .end local v2    # "sp":Landroid/text/Spannable;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ltz v4, :cond_3

    if-ltz v0, :cond_3

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    :cond_4
    return-object v3

    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_6
    return-object v5
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .local v1, "min":I
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "max":I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .local v2, "selEnd":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-static/range {p0 .. p1}, Landroid/widget/TextView$FlymeInjector;->mzOnTextContextMenuItem(Landroid/widget/TextView;I)Z

    move-result v5

    if-nez v5, :cond_flyme_0

    const/4 v5, 0x1

    return v5

    :cond_flyme_0

    return v8

    :sswitch_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .local v4, "shouldRestartActionMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_1
    return v6

    .end local v4    # "shouldRestartActionMode":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "shouldRestartActionMode":Z
    goto :goto_0

    .end local v4    # "shouldRestartActionMode":Z
    :sswitch_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->undo()V

    :cond_3
    return v6

    :sswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->redo()V

    :cond_4
    return v6

    :sswitch_3
    invoke-direct {p0, v1, v0, v6}, Landroid/widget/TextView;->paste(IIZ)V

    return v6

    :sswitch_4
    invoke-direct {p0, v1, v0, v8}, Landroid/widget/TextView;->paste(IIZ)V

    return v6

    :sswitch_5
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v6

    :sswitch_6
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v6

    :sswitch_7
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->replace()V

    :cond_5
    return v6

    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    return v6

    :sswitch_data_0
    .sparse-switch
        #android:id@selectAll#t -> :sswitch_0
        #android:id@cut#t -> :sswitch_5
        #android:id@copy#t -> :sswitch_6
        #android:id@paste#t -> :sswitch_3
        #android:id@pasteAsPlainText#t -> :sswitch_4
        #android:id@undo#t -> :sswitch_1
        #android:id@redo#t -> :sswitch_2
        #android:id@replaceText#t -> :sswitch_7
        #android:id@shareText#t -> :sswitch_8
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_0

    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/TextView;->mFirstTouch:Z

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    sub-long/2addr v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/widget/Editor;->mDoubleTap:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/TextView;->mFirstTouch:Z

    :cond_0
    :goto_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    :cond_1
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    return v7

    :cond_2
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/widget/Editor;->mDoubleTap:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/TextView;->mFirstTouch:Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .local v4, "superResult":Z
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->startInsertionActionMode()V

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    :cond_4
    return v4

    :cond_5
    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-eqz v7, :cond_d

    :cond_6
    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_f

    const/4 v1, 0x0

    .local v1, "handled":Z
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_8

    iget-object v8, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v8, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    .end local v1    # "handled":Z
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    .local v5, "textIsSelectable":Z
    if-eqz v6, :cond_9

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_9

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .local v3, "links":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-lez v7, :cond_9

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    .end local v3    # "links":[Landroid/text/style/ClickableSpan;
    :cond_9
    if-eqz v6, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v5, :cond_c

    :cond_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-nez v5, :cond_b

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v7, :cond_b

    if-eqz v2, :cond_e

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v7

    :goto_2
    or-int/2addr v1, v7

    :cond_b
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    if-eqz v1, :cond_f

    const/4 v7, 0x1

    return v7

    .end local v5    # "textIsSelectable":Z
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    .local v6, "touchIsFinished":Z
    goto/16 :goto_1

    .end local v6    # "touchIsFinished":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v5    # "textIsSelectable":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_2

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "textIsSelectable":Z
    :cond_f
    return v4
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v5, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v5

    if-eqz v5, :cond_0

    return v7

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v5

    return v5

    :sswitch_0
    const/4 v1, 0x0

    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    const/4 v1, 0x1

    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    or-int/2addr v1, v5

    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    return v1

    .restart local v1    # "handled":Z
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .end local v1    # "handled":Z
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, #android:id@copy#t

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_8

    return v7

    :cond_8
    return v6

    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, #android:id@paste#t

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_9

    return v7

    :cond_9
    return v6

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, #android:id@cut#t

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_a

    return v7

    :cond_a
    return v6

    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_b

    return v6

    :cond_b
    if-eqz p2, :cond_d

    const-string v5, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "start":I
    :goto_1
    if-eqz p2, :cond_e

    const-string v5, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "end":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    if-ne v5, v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    if-eq v5, v0, :cond_11

    :cond_c
    if-ne v3, v0, :cond_f

    if-ne v0, v8, :cond_f

    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return v7

    .end local v0    # "end":I
    .end local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v3, -0x1

    .restart local v3    # "start":I
    goto :goto_1

    :cond_e
    const/4 v0, -0x1

    .restart local v0    # "end":I
    goto :goto_2

    :cond_f
    if-ltz v3, :cond_11

    if-gt v3, v0, :cond_11

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v0, v5, :cond_11

    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_10

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_10
    return v7

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_11
    return v6

    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v5

    return v5

    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v5

    if-eqz v5, :cond_12

    const v5, #android:id@shareText#t

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_12

    return v7

    :cond_12
    return v6

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x200 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_4
        0x10000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "handled":Z
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .end local v0    # "handled":Z
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_2
    return v0
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    if-ne v3, p1, :cond_2

    :cond_1
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "spanEnd":I
    .end local v3    # "spanStart":I
    :cond_3
    return-void
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/SuggestionSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    return-void
.end method

.method selectAllText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    :cond_0
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_0
    return-void

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1, "allCaps"    # Z

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 1
    .param p1, "breakStrategy"    # I

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    const/4 v2, 0x1

    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_a

    if-eqz v1, :cond_4

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_7

    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    .end local v2    # "drawables":Z
    :cond_6
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    const/4 v2, 0x0

    .restart local v2    # "drawables":Z
    goto :goto_0

    :cond_7
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_9
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .end local v3    # "i":I
    :cond_a
    if-nez v1, :cond_b

    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_b
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v7, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    if-eq v5, p1, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    if-eqz v5, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v5, v7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eq v5, p2, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v5, v8

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    if-eq v5, p3, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    if-eqz v5, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_e
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v5, v9

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v10

    if-eq v5, p4, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v10

    if-eqz v5, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v10

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v5, v10

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .local v4, "state":[I
    if-eqz p1, :cond_10

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :goto_3
    if-eqz p3, :cond_11

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_4
    if-eqz p2, :cond_12

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_5
    if-eqz p4, :cond_13

    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_10
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_3

    :cond_11
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_4

    :cond_12
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_5

    :cond_13
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v6

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v9

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_5

    :cond_3
    const/4 v2, 0x1

    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_c

    if-eqz v1, :cond_4

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v4, :cond_7

    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    .end local v2    # "drawables":Z
    :cond_5
    if-nez p3, :cond_3

    if-eqz p4, :cond_6

    const/4 v2, 0x1

    .restart local v2    # "drawables":Z
    goto :goto_0

    .end local v2    # "drawables":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "drawables":Z
    goto :goto_0

    :cond_7
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    if-eqz v4, :cond_9

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_9
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v7

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    if-eqz v4, :cond_b

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v8

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    :cond_c
    if-nez v1, :cond_d

    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_d
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v7, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_e

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_e

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_e
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    if-eq v4, p2, :cond_f

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    if-eqz v4, :cond_f

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v4, v7

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v4, p3, :cond_10

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_10

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_10
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    if-eq v4, p4, :cond_11

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    if-eqz v4, :cond_11

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_11
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v4, v8

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .local v3, "state":[I
    if-eqz p1, :cond_12

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    :goto_2
    if-eqz p3, :cond_13

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    :goto_3
    if-eqz p2, :cond_14

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_4
    if-eqz p4, :cond_15

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_12
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    :cond_13
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    :cond_14
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    :cond_15
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1
    .param p1, "elegant"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_3
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #android:drawable@indicator_input_error#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .local v4, "content":Landroid/text/Editable;
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-nez v4, :cond_3

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .local v7, "sp":Landroid/text/Spannable;
    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v6

    .local v6, "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .local v1, "start":I
    if-gez v1, :cond_7

    const/4 v1, 0x0

    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .local v2, "end":I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    :goto_3
    return-void

    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v6    # "N":I
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "start":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .restart local v2    # "end":I
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v0, :cond_5

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .restart local v6    # "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-le v1, v6, :cond_4

    move v1, v6

    :cond_4
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le v2, v6, :cond_5

    move v2, v6

    .end local v6    # "N":I
    :cond_5
    invoke-static {v4, v1, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_6
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .end local v2    # "end":I
    .restart local v6    # "N":I
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_7
    if-le v1, v6, :cond_1

    move v1, v6

    goto :goto_1

    .restart local v2    # "end":I
    :cond_8
    if-le v2, v6, :cond_2

    move v2, v6

    goto :goto_2

    :cond_9
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    .prologue
    const v4, 0x800007

    and-int v0, p1, v4

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    const/4 v7, 0x0

    .local v7, "newLayout":Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    const/4 v7, 0x1

    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    .restart local v1    # "want":I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    .restart local v2    # "hintWant":I
    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x2

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_2
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v7}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_5

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v4, 0x0

    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v2, :cond_a

    :goto_2
    invoke-direct {p0, v4, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_4
    return-void

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_5
    if-eqz v3, :cond_7

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    goto :goto_0

    :cond_7
    if-nez v5, :cond_8

    if-eqz v6, :cond_0

    :cond_8
    invoke-direct {p0, v11, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v4, 0x1

    .restart local v4    # "singleLine":Z
    goto :goto_1

    :cond_a
    move v7, v8

    goto :goto_2
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .param p1, "letterSpacing"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-eq p3, v0, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    goto :goto_0
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-eq p3, v0, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    goto :goto_0
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-static {v0, v2}, Landroid/widget/TextView$CharWrapper;->-set0(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    sget-object v15, Landroid/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .local v10, "textColorHighlight":I
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_0
    const/4 v15, 0x3

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .local v9, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .local v13, "textSize":I
    if-eqz v13, :cond_2

    int-to-float v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/TextView;->setRawTextSize(F)V

    :cond_2
    const/4 v15, 0x5

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .local v11, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .local v12, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    const/16 v15, 0xc

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "fontFamily":Ljava/lang/String;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .local v14, "typefaceIndex":I
    const/4 v15, 0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .local v7, "styleIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    const/4 v15, 0x7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .local v6, "shadowColor":I
    if-eqz v6, :cond_5

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .local v2, "dx":F
    const/4 v15, 0x0

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .local v3, "dy":F
    const/4 v15, 0x0

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .local v5, "r":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "r":F
    :cond_5
    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_6
    const/16 v15, 0xd

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0xd

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_7
    const/16 v15, 0xe

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    const/16 v16, 0xe

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_8
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    :cond_3
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    return-void

    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/text/method/TransformationMethod2;

    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_4

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_3
    return-void

    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_5
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_1
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .local v1, "typefaceStyle":I
    :goto_1
    not-int v4, v1

    and-int v0, p2, v4

    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "typefaceStyle":I
    goto :goto_1

    .restart local v0    # "need":I
    :cond_3
    move v2, v3

    goto :goto_2

    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x2

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .local v4, "selChanged":Z
    const/4 v3, -0x1

    .local v3, "newSelStart":I
    const/4 v2, -0x1

    .local v2, "newSelEnd":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v5, :cond_14

    const/4 v1, 0x0

    :goto_0
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_1

    const/4 v4, 0x1

    move v2, p4

    if-gez p3, :cond_0

    if-ltz p4, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->makeBlink()V

    :cond_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_3

    const/4 v4, 0x1

    move v3, p4

    if-gez p3, :cond_2

    if-ltz p4, :cond_3

    :cond_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .end local v0    # "end":I
    :cond_3
    if-eqz v4, :cond_7

    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_4
    :goto_1
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_7

    if-gez v3, :cond_5

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    :cond_5
    if-gez v2, :cond_6

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_6
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    :cond_7

    invoke-static/range {p0 .. p6}, Landroid/widget/TextView$FlymeInjector;->editorOnSelectionChanged(Landroid/widget/TextView;Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_b

    :cond_8
    if-eqz v1, :cond_9

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_16

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_b

    if-ltz p3, :cond_a

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_a
    if-ltz p4, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_b
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_17

    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_e
    :goto_3
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_18

    if-ltz p3, :cond_10

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_f
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_10
    if-ltz p4, :cond_12

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_11
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_12
    :goto_4
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    :cond_13
    return-void

    .restart local p2    # "what":Ljava/lang/Object;
    :cond_14
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v5, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    goto/16 :goto_0

    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_15
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v7, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    goto/16 :goto_1

    :cond_16
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_2

    :cond_17
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_3

    :cond_18
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_4
.end method

.method protected stopTextActionMode()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_0
    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .local v0, "curs":I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .local v1, "verified":Z
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public canCopyAll()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mFlymeTouching:Z

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TextView;->mFlymeTouching:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method flymeGetFieldAutoLinkMask()I
    .locals 1

    .prologue
    .line 2722
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method flymeGetFieldEditor()Landroid/widget/Editor;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method flymeGetFieldTransformed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    return-object v0
.end method

.method flymeGetIdCopyAll()I
    .locals 1

    .prologue
    sget v0, Lcom/flyme/internal/R$id;->copyAll:I

    return v0
.end method

.method flymeGetIdStartSelecting()I
    .locals 1

    .prologue
    const v0, #android:id@startSelectingText#t

    return v0
.end method

.method flymeInvokeMethodSetPrimaryClip(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method flymeSetFieldAutoLinkMask(I)V
    .locals 0
    .param p1, "autoLinkMask"    # I

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method getCursorWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mFlymeCursorWidth:I

    return v0
.end method

.method public isOffsetOutOfVisible(I)Z
    .locals 12
    .param p1, "offset"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    if-nez v7, :cond_1

    :cond_0
    return v9

    .line 5839
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, "line":I
    if-nez v3, :cond_2

    return v9

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mFlymeTempCoords:[I

    .local v1, "coords":[I
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v5, v7, v8

    .local v5, "lineTop":I
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v4, v7, v8

    .local v4, "lineBottom":I
    iget-object v7, p0, Landroid/widget/TextView;->mTempCurosrRect:Landroid/graphics/Rect;

    if-nez v7, :cond_3

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mTempCurosrRect:Landroid/graphics/Rect;

    :cond_3
    iget-object v6, p0, Landroid/widget/TextView;->mTempCurosrRect:Landroid/graphics/Rect;

    .local v6, "r":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v2, v7

    .local v2, "cursorX":I
    aget v7, v1, v9

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->left:I

    aget v7, v1, v11

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->top:I

    aget v7, v1, v9

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    aget v7, v1, v11

    add-int/2addr v7, v4

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_4

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .local v0, "clip":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    iput v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    iput v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v7, p0, v0, v10}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-lt v7, v8, :cond_5

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v7, v8, :cond_6

    :cond_5
    return v11

    :cond_6
    return v9
.end method

.method mzIsCursorVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public setAutoLinkMaskIncludeDateTime(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    return-void
.end method

.method public setEnableDragSelection(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setEnableDragSelection(Z)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;Z)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "force"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 2515
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public startSelectionActionMode()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "start":Ljava/lang/Boolean;
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .end local v0    # "start":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected updateBackground(Z)V
    .locals 8
    .param p1, "cursorVisible"    # Z

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    .local v1, "drawableState":[I
    array-length v3, v1

    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v5, v1, v2

    const v6, #android:attr@state_focused#t

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [I

    .local v4, "nonFocusedState":[I
    invoke-static {v1, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy([II[III)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .end local v4    # "nonFocusedState":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "drawableState":[I
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .restart local v1    # "drawableState":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v1    # "drawableState":[I
    :cond_2
    return-void
.end method

.method public updateCurrentCursorVisbility(Z)Z
    .locals 2
    .param p1, "inputShown"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p1

    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mFlymeCurrentCursorVisible:Z

    if-eq v1, v0, :cond_3

    iput-boolean v0, p0, Landroid/widget/TextView;->mFlymeCurrentCursorVisible:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 9360
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->onCursorVisbilityChanged(Z)V

    .line 8431
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 7612
    :cond_1
    const/4 v0, 0x1

    .local v0, "visible":Z
    goto :goto_0

    .end local v0    # "visible":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_0

    .end local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
