.class public Lcyanogenmod/app/LiveLockScreenInfo$Builder;
.super Ljava/lang/Object;
.source "LiveLockScreenInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/LiveLockScreenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcyanogenmod/app/LiveLockScreenInfo;

    iget-object v1, p0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->mPriority:I

    invoke-direct {v0, v1, v2}, Lcyanogenmod/app/LiveLockScreenInfo;-><init>(Landroid/content/ComponentName;I)V

    return-object v0
.end method

.method public setComponent(Landroid/content/ComponentName;)Lcyanogenmod/app/LiveLockScreenInfo$Builder;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 179
    const-string/jumbo v1, "Cannot call setComponent with a null component"

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iput-object p1, p0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->mComponent:Landroid/content/ComponentName;

    .line 182
    return-object p0
.end method
