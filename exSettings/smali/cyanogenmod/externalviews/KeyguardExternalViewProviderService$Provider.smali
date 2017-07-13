.class public abstract Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;


# direct methods
.method static synthetic -get0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;)Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    return-object v0
.end method


# virtual methods
.method protected onAttach()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method protected abstract onBouncerShowing(Z)V
.end method

.method protected onDetach()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method protected abstract onKeyguardDismissed()V
.end method

.method protected abstract onKeyguardShowing(Z)V
.end method

.method protected onLockscreenSlideOffsetChanged(F)V
    .locals 0
    .param p1, "swipeProgress"    # F

    .prologue
    .line 554
    return-void
.end method

.method protected abstract onScreenTurnedOff()V
.end method

.method protected abstract onScreenTurnedOn()V
.end method
