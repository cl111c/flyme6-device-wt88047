.class final enum Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RightButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Confirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ConfirmDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Continue:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ContinueDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Ok:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string/jumbo v1, "Continue"

    const v2, 0x7f0c0991

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 276
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string/jumbo v1, "ContinueDisabled"

    const v2, 0x7f0c0991

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 277
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string/jumbo v1, "Confirm"

    const v2, 0x7f0c098e

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 278
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string/jumbo v1, "ConfirmDisabled"

    const v2, 0x7f0c098e

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 279
    new-instance v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string/jumbo v1, "Ok"

    const v2, 0x104000a

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 274
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 286
    iput p3, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    .line 287
    iput-boolean p4, p0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    .line 285
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    const-class v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/exsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method
