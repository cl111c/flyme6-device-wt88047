.class public Lcom/android/internal/util/nx/ActionConfig;
.super Ljava/lang/Object;
.source "ActionConfig.java"


# instance fields
.field private mClickAction:Ljava/lang/String;

.field private mClickActionDescription:Ljava/lang/String;

.field private mIconUri:Ljava/lang/String;

.field private mLongpressAction:Ljava/lang/String;

.field private mLongpressActionDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "clickActionDescription"    # Ljava/lang/String;
    .param p3, "longpressAction"    # Ljava/lang/String;
    .param p4, "longpressActionDescription"    # Ljava/lang/String;
    .param p5, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/util/nx/ActionConfig;->mClickAction:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/internal/util/nx/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/android/internal/util/nx/ActionConfig;->mLongpressAction:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/android/internal/util/nx/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/android/internal/util/nx/ActionConfig;->mIconUri:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getClickAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/util/nx/ActionConfig;->mClickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/util/nx/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/util/nx/ActionConfig;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/util/nx/ActionConfig;->mLongpressAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/util/nx/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setClickAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/util/nx/ActionConfig;->mClickAction:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setClickActionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/util/nx/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/util/nx/ActionConfig;->mIconUri:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setLongpressAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/util/nx/ActionConfig;->mLongpressAction:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setLongpressActionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/util/nx/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/util/nx/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method
