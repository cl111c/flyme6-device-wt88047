.class Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResult"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public entries:Ljava/lang/String;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summaryOn"    # Ljava/lang/String;
    .param p4, "summaryOff"    # Ljava/lang/String;
    .param p5, "entries"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "key"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 503
    iput-object p2, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    .line 504
    iput-object p3, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    .line 505
    iput-object p4, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    .line 506
    iput-object p5, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;->entries:Ljava/lang/String;

    .line 507
    iput p6, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    .line 508
    iput-object p7, p0, Lcom/android/exsettings/dashboard/SearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    .line 501
    return-void
.end method
