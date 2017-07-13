.class public Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;
.super Ljava/lang/Object;
.source "AbstractTriggerItem.java"


# instance fields
.field private mIcon:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTriggerState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mTriggerState:I

    .line 20
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mIcon:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mIcon:I

    .line 51
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mSummary:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mTitle:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTriggerState(I)V
    .locals 0
    .param p1, "trigger"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/exsettings/profiles/triggers/AbstractTriggerItem;->mTriggerState:I

    .line 27
    return-void
.end method
