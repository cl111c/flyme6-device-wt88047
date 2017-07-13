.class final Lcyanogenmod/providers/CMSettings$Secure$2;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings$Secure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final mDelimiter:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2916
    const-string/jumbo v0, "|"

    iput-object v0, p0, Lcyanogenmod/providers/CMSettings$Secure$2;->mDelimiter:Ljava/lang/String;

    .line 2915
    return-void
.end method
