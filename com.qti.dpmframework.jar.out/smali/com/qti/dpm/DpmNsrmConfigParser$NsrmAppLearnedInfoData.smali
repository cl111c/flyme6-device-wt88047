.class public Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;
.super Ljava/lang/Object;
.source "DpmNsrmConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NsrmAppLearnedInfoData"
.end annotation


# instance fields
.field appName:Ljava/lang/String;

.field badCnt:I

.field cc1:I

.field cc2:I

.field currMode:I

.field decisionMade:I

.field dmTimestamp:I

.field goodCnt:I

.field pcc2:I

.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmNsrmConfigParser;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
