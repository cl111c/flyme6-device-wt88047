.class public Lorg/cyanogenmod/internal/util/CmLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "CmLockPatternUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public setPassToSecurityView(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 104
    const-string/jumbo v0, "lock_screen_pass_to_security_view"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 103
    return-void
.end method

.method public shouldPassToSecurityView(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 100
    const-string/jumbo v0, "lock_screen_pass_to_security_view"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method
