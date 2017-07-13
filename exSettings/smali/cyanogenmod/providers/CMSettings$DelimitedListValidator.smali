.class final Lcyanogenmod/providers/CMSettings$DelimitedListValidator;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelimitedListValidator"
.end annotation


# instance fields
.field private final mAllowEmptyList:Z

.field private final mDelimiter:Ljava/lang/String;

.field private final mValidValueSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "validValues"    # [Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "allowEmptyList"    # Z

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mValidValueSet:Landroid/util/ArraySet;

    .line 396
    iput-object p2, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mDelimiter:Ljava/lang/String;

    .line 397
    iput-boolean p3, p0, Lcyanogenmod/providers/CMSettings$DelimitedListValidator;->mAllowEmptyList:Z

    .line 394
    return-void
.end method
