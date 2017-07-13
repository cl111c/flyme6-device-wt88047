.class final Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;
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
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput p1, p0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;->mMin:I

    .line 354
    iput p2, p0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;->mMax:I

    .line 352
    return-void
.end method
