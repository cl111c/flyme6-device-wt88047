.class public final enum Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 299
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "Introduction"

    .line 301
    sget-object v4, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 299
    const/4 v2, 0x0

    .line 300
    const v3, 0x7f0c0987

    .line 302
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 299
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 303
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "HelpScreen"

    .line 305
    sget-object v4, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 303
    const/4 v2, 0x1

    .line 304
    const v3, 0x7f0c099b

    .line 305
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 303
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 306
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ChoiceTooShort"

    .line 308
    sget-object v4, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 306
    const/4 v2, 0x2

    .line 307
    const v3, 0x7f0c098a

    .line 309
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 306
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 310
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "FirstChoiceValid"

    .line 312
    sget-object v4, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 310
    const/4 v2, 0x3

    .line 311
    const v3, 0x7f0c098b

    .line 312
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 310
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 313
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "NeedToConfirm"

    .line 315
    sget-object v4, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 313
    const/4 v2, 0x4

    .line 314
    const v3, 0x7f0c098c

    .line 316
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 313
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 317
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ConfirmWrong"

    .line 319
    sget-object v4, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 317
    const/4 v2, 0x5

    .line 318
    const v3, 0x7f0c0983

    .line 320
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 317
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 321
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ChoiceConfirmed"

    .line 323
    sget-object v4, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 321
    const/4 v2, 0x6

    .line 322
    const v3, 0x7f0c098d

    .line 323
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 321
    invoke-direct/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 297
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .param p3, "headerMessage"    # I
    .param p4, "leftMode"    # Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .param p5, "rightMode"    # Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .param p6, "footerMessage"    # I
    .param p7, "patternEnabled"    # Z

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 337
    iput p3, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 338
    iput-object p4, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 339
    iput-object p5, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 340
    iput p6, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 341
    iput-boolean p7, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 336
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    const-class v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
