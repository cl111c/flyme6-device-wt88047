.class public Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;,
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryBroadcast:Landroid/content/Intent;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryLevel:I

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCameraOnLabel:Ljava/lang/String;

.field mCameraOnOffset:I

.field final mCameraOnPaint:Landroid/graphics/Paint;

.field final mCameraOnPath:Landroid/graphics/Path;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelString:Ljava/lang/String;

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDischarging:Z

.field final mDockBatLevelPath:Landroid/graphics/Path;

.field final mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mDockBatteryLevel:I

.field private final mDockBatterySupported:Z

.field mDockChargeLabelString:Ljava/lang/String;

.field mDockDischarging:Z

.field mDockEndDataWallTime:J

.field mDockEndWallTime:J

.field mDockHistDataEnd:J

.field mDockHistEnd:J

.field mDockHistStart:J

.field mDockNumHist:I

.field mDockStartWallTime:J

.field mDockStats:Landroid/os/BatteryStats;

.field mDockStatsPeriod:J

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mFlashlightOnLabel:Ljava/lang/String;

.field mFlashlightOnOffset:I

.field final mFlashlightOnPaint:Landroid/graphics/Paint;

.field final mFlashlightOnPath:Landroid/graphics/Path;

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveCamera:Z

.field mHaveFlashlight:Z

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistDataEnd:J

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 371
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 139
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 140
    new-instance v17, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct/range {v17 .. v17}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 141
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 142
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 143
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 145
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 146
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 147
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 148
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 149
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 150
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    .line 151
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 152
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 153
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 154
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    .line 155
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    .line 156
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 157
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 158
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 202
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 203
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 245
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 246
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 376
    const-string/jumbo v17, "batterymanager"

    .line 375
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryManager;

    .line 377
    .local v12, "mBatteryService":Landroid/os/BatteryManager;
    invoke-virtual {v12}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 380
    const v18, 0x10e0054

    .line 379
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 382
    const v18, 0x10e0052

    .line 381
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 385
    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    .line 384
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    const/16 v19, 0x0

    const/16 v20, 0x80

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    const/16 v19, 0x80

    const/16 v20, 0x80

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xc0

    const/16 v19, 0x80

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0x312845

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 397
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0x7fc35748

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 401
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/exsettings/Utils;->BADNESS_COLORS:[I

    invoke-virtual/range {v17 .. v18}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xff

    const/16 v19, 0xff

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    sget-object v17, Lcom/android/exsettings/R$styleable;->BatteryHistoryChart:[I

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 420
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 423
    .local v5, "a":Landroid/content/res/TypedArray;
    new-instance v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v13}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 424
    .local v13, "mainTextAttrs":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;
    new-instance v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v10}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 425
    .local v10, "headTextAttrs":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v13, v0, v5, v1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 426
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v10, v0, v5, v1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 428
    const/16 v16, 0x0

    .line 429
    .local v16, "shadowcolor":I
    const/4 v7, 0x0

    .local v7, "dx":F
    const/4 v8, 0x0

    .local v8, "dy":F
    const/4 v15, 0x0

    .line 431
    .local v15, "r":F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    .line 432
    .local v14, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_1

    .line 433
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 435
    .local v6, "attr":I
    packed-switch v6, :pswitch_data_0

    .line 432
    :goto_1
    :pswitch_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 437
    :pswitch_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto :goto_1

    .line 441
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    goto :goto_1

    .line 445
    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    goto :goto_1

    .line 449
    :pswitch_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto :goto_1

    .line 453
    :pswitch_5
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 454
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 458
    :pswitch_6
    iget v0, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 459
    iget v0, v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 463
    :pswitch_7
    iget v0, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 464
    iget v0, v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    .line 468
    :pswitch_8
    iget v0, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 469
    iget v0, v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto/16 :goto_1

    .line 473
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 484
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 488
    :pswitch_b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    goto/16 :goto_1

    .line 493
    .end local v6    # "attr":I
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 500
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    div-int/lit8 v9, v17, 0x2

    .line 501
    .local v9, "hairlineWidth":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 502
    const/4 v9, 0x1

    .line 504
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/DashPathEffect;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aput v20, v19, v21

    const/16 v20, 0x0

    .line 505
    invoke-direct/range {v18 .. v20}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 508
    if-eqz v16, :cond_3

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v7, v8, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v7, v8, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 370
    :cond_3
    return-void

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 3

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 815
    const/4 v2, 0x3

    .line 814
    invoke-virtual {v1, v2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "isDayFirst"    # Z

    .prologue
    .line 1391
    iget-wide v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1392
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1393
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1394
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    .line 1393
    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .prologue
    .line 1382
    iget-wide v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1383
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1384
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v8, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1385
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    .line 1384
    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    return-void
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v16

    .line 1428
    .local v16, "layoutRtl":Z
    if-eqz v16, :cond_4

    move/from16 v23, p2

    .line 1429
    .local v23, "textStartX":I
    :goto_0
    if-eqz v16, :cond_5

    const/16 v22, 0x0

    .line 1430
    .local v22, "textEndX":I
    :goto_1
    if-eqz v16, :cond_6

    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1431
    .local v20, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v16, :cond_7

    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1438
    .local v21, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1443
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1446
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    .line 1447
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v26, v2, v3

    .line 1448
    .local v26, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v28, v2, v3

    .line 1449
    .local v28, "ytick":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1450
    const/4 v15, 0x0

    .line 1451
    .local v15, "lastX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_d

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1453
    .local v13, "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v11, :cond_9

    .line 1454
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v25, v2, v3

    .line 1455
    .local v25, "x":I
    if-gez v25, :cond_2

    .line 1456
    const/16 v25, 0x0

    .line 1459
    :cond_2
    iget-object v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1460
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v28

    int-to-float v4, v0

    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v28

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1461
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v15, v25, v2

    .line 1451
    :cond_3
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1428
    .end local v11    # "i":I
    .end local v13    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v15    # "lastX":I
    .end local v20    # "textAlignLeft":Landroid/graphics/Paint$Align;
    .end local v21    # "textAlignRight":Landroid/graphics/Paint$Align;
    .end local v22    # "textEndX":I
    .end local v23    # "textStartX":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    .end local v28    # "ytick":I
    :cond_4
    const/16 v23, 0x0

    .restart local v23    # "textStartX":I
    goto/16 :goto_0

    .line 1429
    :cond_5
    move/from16 v22, p2

    .restart local v22    # "textEndX":I
    goto/16 :goto_1

    .line 1430
    :cond_6
    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .restart local v20    # "textAlignLeft":Landroid/graphics/Paint$Align;
    goto/16 :goto_2

    .line 1431
    :cond_7
    sget-object v21, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .restart local v21    # "textAlignRight":Landroid/graphics/Paint$Align;
    goto/16 :goto_3

    .line 1444
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1462
    .restart local v11    # "i":I
    .restart local v13    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .restart local v15    # "lastX":I
    .restart local v26    # "y":I
    .restart local v28    # "ytick":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_a

    .line 1463
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v25, v2, v3

    .line 1464
    .restart local v25    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v2, v15

    move/from16 v0, v25

    if-lt v0, v2, :cond_3

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1468
    .local v18, "nextLabel":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move/from16 v0, v25

    if-gt v0, v2, :cond_3

    .line 1472
    iget-object v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1473
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v28

    int-to-float v4, v0

    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v28

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1474
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v15, v25, v2

    goto/16 :goto_6

    .line 1476
    .end local v18    # "nextLabel":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v25    # "x":I
    :cond_a
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v25, v2, v3

    .line 1477
    .restart local v25    # "x":I
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v2, v2, v25

    move/from16 v0, p2

    if-lt v2, v0, :cond_b

    .line 1478
    add-int/lit8 v2, p2, -0x1

    iget v3, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v25, v2, v3

    .line 1481
    :cond_b
    iget-object v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1482
    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v28

    int-to-float v4, v0

    iget v2, v13, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v28

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 1485
    .end local v11    # "i":I
    .end local v13    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v15    # "lastX":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    .end local v28    # "ytick":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1486
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v26, v2, v3

    .line 1487
    .restart local v26    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1489
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1490
    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1488
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1493
    .end local v26    # "y":I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v10, v2, v3

    .line 1494
    .local v10, "headerTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1497
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v2, :cond_e

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1500
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v10

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 1499
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1502
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v19, v2, 0x2

    .line 1503
    .local v19, "stringHalfWidth":I
    if-eqz v16, :cond_f

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    .line 1504
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    .line 1505
    if-eqz v16, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 1504
    :goto_7
    add-int v9, v3, v2

    .line 1507
    .local v9, "headerCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v3, v9, v19

    int-to-float v3, v3

    int-to-float v4, v10

    .line 1508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 1507
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1517
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1521
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1525
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_13

    .line 1527
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1528
    .local v24, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1530
    .end local v24    # "top":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1534
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1538
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_16

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1544
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_17

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1550
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_18

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1556
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_19

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1562
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1567
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_20

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v8

    .line 1570
    .local v8, "align":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1571
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1b

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1573
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1572
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1575
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_1c

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1577
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1576
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1579
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_1d

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1581
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1580
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1583
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_1e

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1585
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1584
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1587
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1f

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1589
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1588
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1591
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1592
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1591
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1594
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1593
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1596
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1595
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1600
    .end local v8    # "align":Landroid/graphics/Paint$Align;
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    .line 1601
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    .line 1600
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1602
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_22

    .line 1603
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    const/16 v2, 0xa

    if-ge v11, v2, :cond_22

    .line 1604
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v11

    div-int/lit8 v3, v3, 0xa

    add-int v26, v2, v3

    .line 1605
    .restart local v26    # "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move/from16 v0, v26

    int-to-float v4, v0

    .line 1606
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move/from16 v0, v26

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    .line 1605
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1603
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1505
    .end local v9    # "headerCenter":I
    .end local v11    # "i":I
    .end local v26    # "y":I
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    goto/16 :goto_7

    .line 1611
    .restart local v9    # "headerCenter":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 1613
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1614
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1612
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move/from16 v0, p2

    int-to-float v5, v0

    .line 1616
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    .line 1615
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_25

    .line 1619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v29, v2, v3

    .line 1620
    .local v29, "ytop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move/from16 v27, v0

    .line 1621
    .local v27, "ybottom":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1622
    .local v14, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .restart local v11    # "i":I
    :goto_9
    if-ltz v11, :cond_25

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1625
    .local v12, "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v17, v2, v3

    .line 1626
    .local v17, "left":I
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int v25, v2, v3

    .line 1627
    .restart local v25    # "x":I
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int v2, v2, v25

    if-lt v2, v14, :cond_24

    .line 1628
    iget v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v25, v2, v3

    .line 1629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v17, v25, v2

    .line 1630
    move/from16 v0, v17

    if-lt v0, v14, :cond_24

    .line 1623
    :cond_23
    :goto_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    .line 1635
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v0, v17

    if-lt v0, v2, :cond_23

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v29

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v27

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1643
    iget-object v2, v12, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v4, v29, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1426
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$DateLabel;
    .end local v14    # "lastLeft":I
    .end local v17    # "left":I
    .end local v25    # "x":I
    .end local v27    # "ybottom":I
    .end local v29    # "ytop":I
    :cond_25
    return-void
.end method

.method finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "levelh"    # I
    .param p3, "startX"    # I
    .param p4, "y"    # I
    .param p5, "curLevelPath"    # Landroid/graphics/Path;
    .param p6, "lastX"    # I
    .param p7, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 796
    if-eqz p5, :cond_2

    .line 797
    if-ltz p6, :cond_1

    if-ge p6, p1, :cond_1

    .line 798
    if-eqz p7, :cond_0

    .line 799
    int-to-float v0, p1

    int-to-float v1, p4

    invoke-virtual {p7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 801
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p4

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 803
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 804
    int-to-float v0, p3

    iget v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 805
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 795
    :cond_2
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I
    .param p8, "lastCharging"    # Z
    .param p9, "lastScreenOn"    # Z
    .param p10, "lastGpsOn"    # Z
    .param p11, "lastFlashlightOn"    # Z
    .param p12, "lastCameraOn"    # Z
    .param p13, "lastWifiRunning"    # Z
    .param p14, "lastCpuRunning"    # Z
    .param p15, "lastPath"    # Landroid/graphics/Path;

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    move-object/from16 v7, p15

    .line 767
    invoke-virtual/range {v0 .. v7}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V

    .line 768
    if-eqz p8, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 771
    :cond_0
    if-eqz p9, :cond_1

    .line 772
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 774
    :cond_1
    if-eqz p10, :cond_2

    .line 775
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 777
    :cond_2
    if-eqz p11, :cond_3

    .line 778
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 780
    :cond_3
    if-eqz p12, :cond_4

    .line 781
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 783
    :cond_4
    if-eqz p13, :cond_5

    .line 784
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 786
    :cond_5
    if-eqz p14, :cond_6

    .line 787
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 789
    :cond_6
    iget-boolean v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_7

    .line 790
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 766
    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1401
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1403
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v1

    .line 1404
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v0

    .line 1410
    .local v0, "height":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1400
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 746
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 747
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 748
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 749
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 750
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 751
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 752
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 753
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 754
    iget v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int v0, v1, v2

    .line 755
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 756
    iget-boolean v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v1, :cond_0

    .line 757
    iget v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    .line 760
    iget v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    .line 759
    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 744
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 80
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 821
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 825
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_0

    .line 826
    return-void

    .line 829
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-nez v4, :cond_2

    .line 830
    :cond_1
    return-void

    .line 835
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 836
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 837
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 838
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 840
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v66, v4, v6

    .line 841
    .local v66, "textHeight":I
    mul-int/lit8 v4, v66, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v4, v6

    move/from16 v0, p2

    if-le v0, v4, :cond_15

    .line 842
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 843
    mul-int/lit8 v4, v66, 0xf

    move/from16 v0, p2

    if-le v0, v4, :cond_14

    .line 845
    div-int/lit8 v4, v66, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 854
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 856
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 857
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 858
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 859
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v59, v4, v6

    .line 861
    .local v59, "levelWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 874
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v46, v66, v4

    .line 876
    .local v46, "fullBarOffset":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_1b

    .line 877
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 878
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v4, v4, v46

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 879
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v4, v4, v46

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 880
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v4, v4, v46

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 881
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_16

    move/from16 v4, v46

    :goto_1
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 882
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_17

    move/from16 v4, v46

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 883
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v4, :cond_18

    move/from16 v4, v46

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 884
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v4, :cond_19

    move/from16 v4, v46

    :goto_4
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 885
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v6, :cond_1a

    .end local v46    # "fullBarOffset":I
    :goto_5
    add-int v4, v4, v46

    .line 886
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    .line 885
    add-int/2addr v4, v6

    .line 886
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v6, v6, 0x2

    .line 885
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 887
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_4

    .line 888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 900
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 905
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_5

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 908
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 919
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_1c

    .line 920
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v74

    .line 921
    .local v74, "walltimeStart":J
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v20, v74

    if-lez v4, :cond_1d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    sub-long v68, v20, v74

    .line 922
    .local v68, "w1":J
    :goto_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v20, v74

    if-lez v4, :cond_1e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    sub-long v70, v20, v74

    .line 923
    .local v70, "w2":J
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_1f

    .line 924
    invoke-static/range {v68 .. v71}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v72

    .line 927
    .local v72, "walltimeChange":J
    :goto_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v40, v0

    .line 928
    .local v40, "curWalltime":J
    const-wide/16 v54, 0x0

    .line 930
    .local v54, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v30, v0

    .line 931
    .local v30, "batLow":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v29, v4, v6

    .line 933
    .local v29, "batChange":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v7, v4, v6

    .line 934
    .local v7, "levelh":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 936
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v5, "x":I
    const/16 v79, 0x0

    .local v79, "y":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v8, "startX":I
    const/4 v11, -0x1

    .local v11, "lastX":I
    const/4 v9, -0x1

    .line 937
    .local v9, "lastY":I
    const/16 v49, 0x0

    .line 938
    .local v49, "i":I
    const/4 v10, 0x0

    .line 939
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 940
    .local v19, "lastLinePath":Landroid/graphics/Path;
    const/4 v12, 0x0

    .local v12, "lastCharging":Z
    const/4 v13, 0x0

    .local v13, "lastScreenOn":Z
    const/4 v14, 0x0

    .line 941
    .local v14, "lastGpsOn":Z
    const/4 v15, 0x0

    .local v15, "lastFlashlightOn":Z
    const/16 v16, 0x0

    .line 942
    .local v16, "lastCameraOn":Z
    const/16 v17, 0x0

    .local v17, "lastWifiRunning":Z
    const/16 v53, 0x0

    .local v53, "lastWifiSupplRunning":Z
    const/16 v18, 0x0

    .line 943
    .local v18, "lastCpuRunning":Z
    const/16 v58, 0x0

    .line 944
    .local v58, "lastWifiSupplState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v28, v0

    .line 945
    .local v28, "N":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-lez v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 946
    new-instance v62, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v62 .. v62}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v62, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v78, v5

    .line 947
    .end local v5    # "x":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .end local v15    # "lastFlashlightOn":Z
    .end local v16    # "lastCameraOn":Z
    .end local v17    # "lastWifiRunning":Z
    .end local v18    # "lastCpuRunning":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .local v78, "x":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move/from16 v0, v49

    move/from16 v1, v28

    if-ge v0, v1, :cond_3a

    .line 948
    invoke-virtual/range {v62 .. v62}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 949
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v54

    add-long v40, v40, v20

    .line 950
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v54, v0

    .line 951
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v20, v40, v74

    move/from16 v0, v59

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    div-long v20, v20, v72

    move-wide/from16 v0, v20

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 952
    .end local v78    # "x":I
    .restart local v5    # "x":I
    if-gez v5, :cond_6

    .line 953
    const/4 v5, 0x0

    .line 965
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v62

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v30

    add-int/lit8 v20, v7, -0x1

    mul-int v6, v6, v20

    div-int v6, v6, v29

    sub-int v79, v4, v6

    .line 967
    if-eq v11, v5, :cond_a

    .line 969
    move/from16 v0, v79

    if-eq v9, v0, :cond_a

    .line 972
    move-object/from16 v0, v62

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v67, v0

    .line 973
    .local v67, "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v67

    if-gt v0, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v60, v0

    .line 977
    :goto_c
    move-object/from16 v0, v60

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_22

    .line 978
    if-eqz v19, :cond_7

    .line 979
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 981
    :cond_7
    if-eqz v60, :cond_8

    .line 982
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 984
    :cond_8
    move-object/from16 v19, v60

    .line 989
    :cond_9
    :goto_d
    if-nez v10, :cond_23

    .line 990
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 991
    .local v10, "curLevelPath":Landroid/graphics/Path;
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 992
    move v8, v5

    .line 996
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    :goto_e
    move v11, v5

    .line 997
    move/from16 v9, v79

    .line 1001
    .end local v67    # "value":B
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_13

    .line 1003
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_24

    const/16 v38, 0x1

    .line 1004
    .local v38, "charging":Z
    :goto_f
    move/from16 v0, v38

    if-eq v0, v12, :cond_b

    .line 1005
    if-eqz v38, :cond_25

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1010
    :goto_10
    move/from16 v12, v38

    .line 1014
    :cond_b
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_26

    const/16 v63, 0x1

    .line 1015
    .local v63, "screenOn":Z
    :goto_11
    move/from16 v0, v63

    if-eq v0, v13, :cond_c

    .line 1016
    if-eqz v63, :cond_27

    .line 1017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1021
    :goto_12
    move/from16 v13, v63

    .line 1025
    :cond_c
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_28

    const/16 v48, 0x1

    .line 1026
    .local v48, "gpsOn":Z
    :goto_13
    move/from16 v0, v48

    if-eq v0, v14, :cond_d

    .line 1027
    if-eqz v48, :cond_29

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1032
    :goto_14
    move/from16 v14, v48

    .line 1036
    :cond_d
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2a

    const/16 v43, 0x1

    .line 1037
    .local v43, "flashlightOn":Z
    :goto_15
    move/from16 v0, v43

    if-eq v0, v15, :cond_e

    .line 1038
    if-eqz v43, :cond_2b

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1043
    :goto_16
    move/from16 v15, v43

    .line 1047
    :cond_e
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x400000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2c

    const/16 v37, 0x1

    .line 1048
    .local v37, "cameraOn":Z
    :goto_17
    move/from16 v0, v37

    move/from16 v1, v16

    if-eq v0, v1, :cond_f

    .line 1049
    if-eqz v37, :cond_2d

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1054
    :goto_18
    move/from16 v16, v37

    .line 1058
    :cond_f
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v77, v4, 0x0

    .line 1061
    .local v77, "wifiSupplState":I
    move/from16 v0, v58

    move/from16 v1, v77

    if-eq v0, v1, :cond_2e

    .line 1062
    move/from16 v58, v77

    .line 1063
    packed-switch v77, :pswitch_data_0

    .line 1073
    :pswitch_0
    const/16 v53, 0x1

    const/16 v76, 0x1

    .line 1079
    :goto_19
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x18010000

    and-int/2addr v4, v6

    if-eqz v4, :cond_10

    .line 1082
    const/16 v76, 0x1

    .line 1084
    :cond_10
    move/from16 v0, v76

    move/from16 v1, v17

    if-eq v0, v1, :cond_11

    .line 1085
    if-eqz v76, :cond_2f

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1090
    :goto_1a
    move/from16 v17, v76

    .line 1094
    :cond_11
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_30

    const/16 v39, 0x1

    .line 1095
    .local v39, "cpuRunning":Z
    :goto_1b
    move/from16 v0, v39

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 1096
    if-eqz v39, :cond_31

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1101
    :goto_1c
    move/from16 v18, v39

    .line 1104
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_13

    .line 1106
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v4, v4, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    .line 1108
    const/4 v6, 0x3

    .line 1106
    if-ne v4, v6, :cond_32

    .line 1109
    const/16 v31, 0x0

    .line 1117
    .local v31, "bin":I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 1149
    .end local v31    # "bin":I
    .end local v37    # "cameraOn":Z
    .end local v38    # "charging":Z
    .end local v39    # "cpuRunning":Z
    .end local v43    # "flashlightOn":Z
    .end local v48    # "gpsOn":Z
    .end local v63    # "screenOn":Z
    .end local v77    # "wifiSupplState":I
    :cond_13
    :goto_1e
    add-int/lit8 v49, v49, 0x1

    move/from16 v78, v5

    .end local v5    # "x":I
    .restart local v78    # "x":I
    goto/16 :goto_b

    .line 848
    .end local v7    # "levelh":I
    .end local v8    # "startX":I
    .end local v9    # "lastY":I
    .end local v11    # "lastX":I
    .end local v28    # "N":I
    .end local v29    # "batChange":I
    .end local v30    # "batLow":I
    .end local v40    # "curWalltime":J
    .end local v49    # "i":I
    .end local v53    # "lastWifiSupplRunning":Z
    .end local v54    # "lastRealtime":J
    .end local v58    # "lastWifiSupplState":I
    .end local v59    # "levelWidth":I
    .end local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v68    # "w1":J
    .end local v70    # "w2":J
    .end local v72    # "walltimeChange":J
    .end local v74    # "walltimeStart":J
    .end local v78    # "x":I
    .end local v79    # "y":I
    :cond_14
    div-int/lit8 v4, v66, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 851
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 852
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 881
    .restart local v46    # "fullBarOffset":I
    .restart local v59    # "levelWidth":I
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 882
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 883
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 884
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 885
    :cond_1a
    const/16 v46, 0x0

    goto/16 :goto_5

    .line 893
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    const/4 v4, 0x0

    .line 892
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 893
    const/4 v4, 0x0

    .line 892
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 893
    const/4 v4, 0x0

    .line 892
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 893
    const/4 v4, 0x0

    .line 891
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 893
    const/4 v4, 0x0

    .line 891
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 893
    const/4 v4, 0x0

    .line 891
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 893
    const/4 v4, 0x0

    .line 891
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 894
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v46

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 895
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_4

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_6

    .line 920
    .end local v46    # "fullBarOffset":I
    :cond_1c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v74, v0

    .restart local v74    # "walltimeStart":J
    goto/16 :goto_7

    .line 921
    :cond_1d
    const-wide/16 v68, 0x1

    .restart local v68    # "w1":J
    goto/16 :goto_8

    .line 922
    :cond_1e
    const-wide/16 v70, 0x1

    .restart local v70    # "w2":J
    goto/16 :goto_9

    .line 924
    :cond_1f
    move-wide/from16 v72, v68

    .restart local v72    # "walltimeChange":J
    goto/16 :goto_a

    .line 974
    .restart local v5    # "x":I
    .restart local v7    # "levelh":I
    .restart local v8    # "startX":I
    .restart local v9    # "lastY":I
    .restart local v11    # "lastX":I
    .restart local v28    # "N":I
    .restart local v29    # "batChange":I
    .restart local v30    # "batLow":I
    .restart local v40    # "curWalltime":J
    .restart local v49    # "i":I
    .restart local v53    # "lastWifiSupplRunning":Z
    .restart local v54    # "lastRealtime":J
    .restart local v58    # "lastWifiSupplState":I
    .restart local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v67    # "value":B
    .restart local v79    # "y":I
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v67

    if-gt v0, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v60, v0

    .local v60, "path":Landroid/graphics/Path;
    goto/16 :goto_c

    .line 975
    .end local v60    # "path":Landroid/graphics/Path;
    :cond_21
    const/16 v60, 0x0

    .local v60, "path":Landroid/graphics/Path;
    goto/16 :goto_c

    .line 985
    .end local v60    # "path":Landroid/graphics/Path;
    :cond_22
    if-eqz v60, :cond_9

    .line 986
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 994
    :cond_23
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 1003
    .end local v67    # "value":B
    :cond_24
    const/16 v38, 0x0

    .restart local v38    # "charging":Z
    goto/16 :goto_f

    .line 1008
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_10

    .line 1014
    :cond_26
    const/16 v63, 0x0

    .restart local v63    # "screenOn":Z
    goto/16 :goto_11

    .line 1019
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 1025
    :cond_28
    const/16 v48, 0x0

    .restart local v48    # "gpsOn":Z
    goto/16 :goto_13

    .line 1030
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_14

    .line 1036
    :cond_2a
    const/16 v43, 0x0

    .restart local v43    # "flashlightOn":Z
    goto/16 :goto_15

    .line 1041
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 1047
    :cond_2c
    const/16 v37, 0x0

    .restart local v37    # "cameraOn":Z
    goto/16 :goto_17

    .line 1052
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_18

    .line 1070
    .restart local v77    # "wifiSupplState":I
    :pswitch_1
    const/16 v53, 0x0

    const/16 v76, 0x0

    .line 1071
    .local v76, "wifiRunning":Z
    goto/16 :goto_19

    .line 1077
    .end local v76    # "wifiRunning":Z
    :cond_2e
    move/from16 v76, v53

    .local v76, "wifiRunning":Z
    goto/16 :goto_19

    .line 1088
    .end local v76    # "wifiRunning":Z
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1a

    .line 1094
    :cond_30
    const/16 v39, 0x0

    .restart local v39    # "cpuRunning":Z
    goto/16 :goto_1b

    .line 1099
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1c

    .line 1110
    :cond_32
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_33

    .line 1111
    const/16 v31, 0x1

    .restart local v31    # "bin":I
    goto/16 :goto_1d

    .line 1113
    .end local v31    # "bin":I
    :cond_33
    move-object/from16 v0, v62

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v31, v4, 0x3

    .line 1115
    .restart local v31    # "bin":I
    add-int/lit8 v31, v31, 0x2

    goto/16 :goto_1d

    .line 1122
    .end local v5    # "x":I
    .end local v31    # "bin":I
    .end local v37    # "cameraOn":Z
    .end local v38    # "charging":Z
    .end local v39    # "cpuRunning":Z
    .end local v43    # "flashlightOn":Z
    .end local v48    # "gpsOn":Z
    .end local v63    # "screenOn":Z
    .end local v77    # "wifiSupplState":I
    .restart local v78    # "x":I
    :cond_34
    move-wide/from16 v56, v40

    .line 1123
    .local v56, "lastWalltime":J
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_35

    .line 1124
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_36

    .line 1125
    :cond_35
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-ltz v4, :cond_38

    .line 1126
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v40, v0

    .line 1130
    :goto_1f
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v54, v0

    .line 1133
    :cond_36
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_39

    .line 1134
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_37

    .line 1135
    sub-long v20, v56, v40

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    const-wide/32 v22, 0x36ee80

    cmp-long v4, v20, v22

    if-lez v4, :cond_39

    .line 1136
    :cond_37
    if-eqz v10, :cond_5c

    .line 1137
    add-int/lit8 v5, v78, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v19}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1140
    const/4 v9, -0x1

    const/4 v11, -0x1

    .line 1141
    const/4 v10, 0x0

    .line 1142
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 1144
    .restart local v19    # "lastLinePath":Landroid/graphics/Path;
    const/16 v18, 0x0

    .restart local v18    # "lastCpuRunning":Z
    const/16 v16, 0x0

    .restart local v16    # "lastCameraOn":Z
    const/4 v15, 0x0

    .restart local v15    # "lastFlashlightOn":Z
    const/4 v14, 0x0

    .restart local v14    # "lastGpsOn":Z
    const/4 v13, 0x0

    .restart local v13    # "lastScreenOn":Z
    const/4 v12, 0x0

    .restart local v12    # "lastCharging":Z
    move/from16 v5, v78

    .line 1143
    .end local v78    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1e

    .line 1128
    .end local v5    # "x":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .end local v15    # "lastFlashlightOn":Z
    .end local v16    # "lastCameraOn":Z
    .end local v18    # "lastCpuRunning":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .restart local v78    # "x":I
    :cond_38
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    add-long v40, v20, v22

    goto :goto_1f

    :cond_39
    move/from16 v5, v78

    .line 1135
    .end local v78    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1e

    .line 1151
    .end local v5    # "x":I
    .end local v56    # "lastWalltime":J
    .restart local v78    # "x":I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v5, v78

    .line 1154
    .end local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v78    # "x":I
    .restart local v5    # "x":I
    :cond_3b
    if-ltz v9, :cond_3c

    if-gez v11, :cond_44

    .line 1156
    :cond_3c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1157
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    sub-int v6, v6, v30

    add-int/lit8 v20, v7, -0x1

    mul-int v6, v6, v20

    div-int v6, v6, v29

    sub-int v9, v4, v6

    move/from16 v79, v9

    .line 1159
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    int-to-byte v0, v4

    move/from16 v67, v0

    .line 1160
    .restart local v67    # "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v67

    if-gt v0, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v60, v0

    .line 1163
    :goto_20
    if-eqz v60, :cond_3d

    .line 1164
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1165
    move-object/from16 v19, v60

    .line 1167
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1169
    .local v10, "curLevelPath":Landroid/graphics/Path;
    move/from16 v5, p1

    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v67    # "value":B
    :cond_3e
    :goto_21
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1178
    invoke-virtual/range {v4 .. v19}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1181
    move/from16 v52, v5

    .line 1183
    .local v52, "lastBatX":I
    move/from16 v0, p1

    if-ge v5, v0, :cond_3f

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1187
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v30, 0x64

    add-int/lit8 v20, v7, -0x1

    mul-int v6, v6, v20

    div-int v6, v6, v29

    sub-int v47, v4, v6

    .line 1188
    .local v47, "fullY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v30, 0x0

    add-int/lit8 v20, v7, -0x1

    mul-int v6, v6, v20

    div-int v6, v6, v29

    sub-int v42, v4, v6

    .line 1189
    .local v42, "emptyY":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    if-eqz v4, :cond_45

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1200
    .end local v42    # "emptyY":I
    .end local v47    # "fullY":I
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_52

    .line 1201
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 1202
    const/16 v79, 0x0

    .line 1203
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 1204
    const/4 v11, -0x1

    .line 1205
    const/4 v9, -0x1

    .line 1206
    const/16 v49, 0x0

    .line 1207
    const/4 v10, 0x0

    .line 1208
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 1209
    .restart local v19    # "lastLinePath":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v40, v0

    .line 1210
    const-wide/16 v54, 0x0

    .line 1211
    const/4 v12, 0x0

    .line 1212
    .restart local v12    # "lastCharging":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockNumHist:I

    move/from16 v28, v0

    .line 1213
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-lez v4, :cond_4d

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    .line 1213
    if-eqz v4, :cond_4d

    .line 1215
    new-instance v62, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v62 .. v62}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 1216
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .restart local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move/from16 v0, v49

    move/from16 v1, v28

    if-ge v0, v1, :cond_4c

    .line 1217
    invoke-virtual/range {v62 .. v62}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1218
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v54

    add-long v40, v40, v20

    .line 1219
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v54, v0

    .line 1220
    sub-long v20, v40, v74

    move/from16 v0, v59

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    div-long v20, v20, v72

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v61, v0

    .line 1221
    .local v61, "pos":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    add-int v5, v4, v61

    .line 1222
    if-gez v5, :cond_40

    .line 1223
    const/4 v5, 0x0

    .line 1235
    :cond_40
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v62

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v30

    add-int/lit8 v20, v7, -0x1

    mul-int v6, v6, v20

    div-int v6, v6, v29

    sub-int v79, v4, v6

    .line 1237
    if-eq v11, v5, :cond_41

    .line 1239
    move/from16 v0, v79

    if-eq v9, v0, :cond_41

    .line 1240
    if-nez v10, :cond_46

    .line 1241
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    .line 1242
    .local v10, "curLevelPath":Landroid/graphics/Path;
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1243
    move v8, v5

    .line 1247
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    :goto_24
    move v11, v5

    .line 1248
    move/from16 v9, v79

    .line 1278
    .end local v61    # "pos":I
    :cond_41
    :goto_25
    add-int/lit8 v49, v49, 0x1

    goto :goto_23

    .line 1161
    .end local v12    # "lastCharging":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .end local v52    # "lastBatX":I
    .end local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v67    # "value":B
    :cond_42
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v67

    if-gt v0, v4, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v60, v0

    .local v60, "path":Landroid/graphics/Path;
    goto/16 :goto_20

    .line 1162
    .end local v60    # "path":Landroid/graphics/Path;
    :cond_43
    const/16 v60, 0x0

    .local v60, "path":Landroid/graphics/Path;
    goto/16 :goto_20

    .line 1172
    .end local v60    # "path":Landroid/graphics/Path;
    .end local v67    # "value":B
    :cond_44
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v74

    move/from16 v0, v59

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    div-long v20, v20, v72

    move-wide/from16 v0, v20

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 1173
    if-gez v5, :cond_3e

    .line 1174
    const/4 v5, 0x0

    goto/16 :goto_21

    .line 1192
    .restart local v42    # "emptyY":I
    .restart local v47    # "fullY":I
    .restart local v52    # "lastBatX":I
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_22

    .line 1245
    .end local v42    # "emptyY":I
    .end local v47    # "fullY":I
    .restart local v12    # "lastCharging":Z
    .restart local v19    # "lastLinePath":Landroid/graphics/Path;
    .restart local v61    # "pos":I
    .restart local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_46
    int-to-float v4, v5

    move/from16 v0, v79

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_24

    .line 1253
    .end local v61    # "pos":I
    :cond_47
    move-wide/from16 v56, v40

    .line 1254
    .restart local v56    # "lastWalltime":J
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_48

    .line 1255
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_49

    .line 1256
    :cond_48
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-ltz v4, :cond_4b

    .line 1257
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v40, v0

    .line 1261
    :goto_26
    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v54, v0

    .line 1264
    :cond_49
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_41

    .line 1265
    move-object/from16 v0, v62

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_4a

    .line 1266
    sub-long v20, v56, v40

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    const-wide/32 v22, 0x36ee80

    cmp-long v4, v20, v22

    if-lez v4, :cond_41

    .line 1267
    :cond_4a
    if-eqz v10, :cond_41

    .line 1268
    add-int/lit8 v21, v5, 0x1

    move-object/from16 v20, p0

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v19

    invoke-virtual/range {v20 .. v27}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V

    .line 1270
    const/4 v9, -0x1

    const/4 v11, -0x1

    .line 1271
    const/4 v10, 0x0

    .line 1272
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 1273
    const/16 v18, 0x0

    .restart local v18    # "lastCpuRunning":Z
    const/4 v14, 0x0

    .restart local v14    # "lastGpsOn":Z
    const/4 v13, 0x0

    .restart local v13    # "lastScreenOn":Z
    const/4 v12, 0x0

    goto/16 :goto_25

    .line 1259
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .end local v18    # "lastCpuRunning":Z
    :cond_4b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    add-long v40, v20, v22

    goto :goto_26

    .line 1280
    .end local v56    # "lastWalltime":J
    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 1283
    .end local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_4d
    if-ltz v9, :cond_4e

    if-gez v11, :cond_5a

    .line 1285
    :cond_4e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1286
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatteryLevel:I

    sub-int v6, v6, v30

    add-int/lit8 v20, v7, -0x1

    mul-int v6, v6, v20

    div-int v6, v6, v29

    sub-int v9, v4, v6

    move/from16 v79, v9

    .line 1287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    .line 1289
    .local v10, "curLevelPath":Landroid/graphics/Path;
    move/from16 v5, p1

    .line 1299
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    :cond_4f
    :goto_27
    move/from16 v0, v52

    if-ge v5, v0, :cond_51

    .line 1300
    if-eqz v10, :cond_50

    .line 1301
    int-to-float v4, v5

    int-to-float v6, v9

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1303
    :cond_50
    move/from16 v5, v52

    :cond_51
    move-object/from16 v20, p0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v19

    .line 1306
    invoke-virtual/range {v20 .. v27}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V

    .line 1310
    .end local v12    # "lastCharging":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    :cond_52
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v4, v20, v22

    if-lez v4, :cond_59

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-lez v4, :cond_59

    .line 1312
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v50

    .line 1313
    .local v50, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v36

    .line 1314
    .local v36, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1315
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1316
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1317
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1318
    invoke-virtual/range {v36 .. v36}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v64

    .line 1319
    .local v64, "startRoundTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v64, v20

    if-gez v4, :cond_53

    .line 1320
    const/16 v4, 0xb

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0xb

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 1321
    invoke-virtual/range {v36 .. v36}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v64

    .line 1323
    :cond_53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v32

    .line 1324
    .local v32, "calEnd":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1325
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1326
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1327
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1328
    invoke-virtual/range {v32 .. v32}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v44

    .line 1329
    .local v44, "endRoundTime":J
    cmp-long v4, v64, v44

    if-gez v4, :cond_55

    .line 1330
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v33

    .line 1332
    .local v33, "calMid":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x2

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1333
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1334
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1335
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1336
    invoke-virtual/range {v33 .. v33}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    .line 1337
    .local v34, "calMidMillis":J
    cmp-long v4, v34, v64

    if-lez v4, :cond_54

    cmp-long v4, v34, v44

    if-gez v4, :cond_54

    .line 1338
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1340
    :cond_54
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1344
    .end local v33    # "calMid":Ljava/util/Calendar;
    .end local v34    # "calMidMillis":J
    :cond_55
    const/4 v4, 0x6

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_56

    .line 1345
    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_59

    .line 1346
    :cond_56
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v51

    .line 1347
    .local v51, "isDayFirst":Z
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1348
    invoke-virtual/range {v36 .. v36}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v64

    .line 1349
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v64, v20

    if-gez v4, :cond_57

    .line 1350
    const/4 v4, 0x6

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 1351
    invoke-virtual/range {v36 .. v36}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v64

    .line 1353
    :cond_57
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1354
    invoke-virtual/range {v32 .. v32}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v44

    .line 1355
    cmp-long v4, v64, v44

    if-gez v4, :cond_58

    .line 1356
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v51

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v33

    .line 1358
    .restart local v33    # "calMid":Ljava/util/Calendar;
    sub-long v20, v44, v64

    const-wide/16 v22, 0x2

    div-long v20, v20, v22

    add-long v20, v20, v64

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1359
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1360
    invoke-virtual/range {v33 .. v33}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    .line 1361
    .restart local v34    # "calMidMillis":J
    cmp-long v4, v34, v64

    if-lez v4, :cond_58

    cmp-long v4, v34, v44

    if-gez v4, :cond_58

    .line 1362
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v51

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1365
    .end local v33    # "calMid":Ljava/util/Calendar;
    .end local v34    # "calMidMillis":J
    :cond_58
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v51

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1369
    .end local v32    # "calEnd":Ljava/util/Calendar;
    .end local v36    # "calStart":Ljava/util/Calendar;
    .end local v44    # "endRoundTime":J
    .end local v50    # "is24hr":Z
    .end local v51    # "isDayFirst":Z
    .end local v64    # "startRoundTime":J
    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_5b

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1373
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    .line 1372
    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 820
    :goto_28
    return-void

    .line 1292
    .restart local v12    # "lastCharging":Z
    .restart local v19    # "lastLinePath":Landroid/graphics/Path;
    :cond_5a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v74

    move/from16 v0, v59

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    div-long v20, v20, v72

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v61, v0

    .line 1293
    .restart local v61    # "pos":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    add-int v5, v4, v61

    .line 1294
    if-gez v5, :cond_4f

    .line 1295
    const/4 v5, 0x0

    goto/16 :goto_27

    .line 1376
    .end local v12    # "lastCharging":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .end local v61    # "pos":I
    :cond_5b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1377
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto :goto_28

    .end local v5    # "x":I
    .end local v52    # "lastBatX":I
    .restart local v56    # "lastWalltime":J
    .restart local v62    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v78    # "x":I
    :cond_5c
    move/from16 v5, v78

    .end local v78    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1e

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setDockStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 28
    .param p1, "dockStats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 657
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    .line 658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    if-eqz p1, :cond_e

    .line 659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v6, v22, v24

    .line 661
    .local v6, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    move-object/from16 v22, v0

    .line 662
    const/16 v23, 0x0

    .line 661
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v20

    .line 663
    .local v20, "uSecTime":J
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStatsPeriod:J

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/exsettings/Utils;->getDockBatteryLevel(Landroid/content/Intent;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatteryLevel:I

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockBatteryLevel:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "batteryPercentString":Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockDischarging:Z

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "dock_present"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "dock_plugged"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 674
    .local v14, "plugType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "dock_status"

    .line 675
    const/16 v24, 0x1

    .line 674
    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 676
    .local v18, "status":I
    if-eqz v14, :cond_a

    .line 677
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 678
    const/16 v22, 0x5

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/4 v15, 0x1

    .line 679
    .local v15, "plugged":Z
    :goto_0
    if-nez v15, :cond_b

    .line 680
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    .line 692
    .end local v14    # "plugType":I
    .end local v15    # "plugged":Z
    .end local v18    # "status":I
    :goto_1
    const/16 v16, 0x0

    .line 693
    .local v16, "pos":I
    const/4 v8, 0x0

    .line 694
    .local v8, "lastInteresting":I
    const/4 v9, -0x1

    .line 695
    .local v9, "lastLevel":B
    const-wide/16 v12, 0x0

    .line 696
    .local v12, "lastWallTime":J
    const-wide/16 v10, 0x0

    .line 697
    .local v10, "lastRealtime":J
    const/4 v5, 0x1

    .line 698
    .local v5, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 699
    new-instance v17, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v17 .. v17}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 700
    .end local v9    # "lastLevel":B
    .local v17, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 701
    add-int/lit8 v16, v16, 0x1

    .line 702
    if-eqz v5, :cond_1

    .line 703
    const/4 v5, 0x0

    .line 704
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    .line 706
    :cond_1
    move-object/from16 v0, v17

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 707
    move-object/from16 v0, v17

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 716
    :cond_2
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v22, v0

    const-wide v24, 0x39ef8b000L

    add-long v24, v24, v12

    cmp-long v22, v22, v24

    if-gtz v22, :cond_3

    .line 717
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x493e0

    add-long v24, v24, v26

    cmp-long v22, v22, v24

    if-gez v22, :cond_4

    .line 718
    :cond_3
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    .line 720
    :cond_4
    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 721
    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 722
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_5

    .line 723
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v22, v0

    sub-long v22, v10, v22

    sub-long v22, v12, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    .line 726
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 727
    move-object/from16 v0, v17

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v9, :cond_6

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 728
    :cond_6
    move-object/from16 v0, v17

    iget-byte v9, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 730
    :cond_7
    move/from16 v8, v16

    .line 731
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistDataEnd:J

    goto/16 :goto_2

    .line 677
    .end local v5    # "first":Z
    .end local v8    # "lastInteresting":I
    .end local v10    # "lastRealtime":J
    .end local v12    # "lastWallTime":J
    .end local v16    # "pos":I
    .end local v17    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v14    # "plugType":I
    .restart local v18    # "status":I
    :cond_8
    const/4 v15, 0x1

    .restart local v15    # "plugged":Z
    goto/16 :goto_0

    .line 678
    .end local v15    # "plugged":Z
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "plugged":Z
    goto/16 :goto_0

    .line 676
    .end local v15    # "plugged":Z
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "plugged":Z
    goto/16 :goto_0

    .line 683
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v23, v0

    .line 682
    invoke-static/range {v22 .. v23}, Lcom/android/exsettings/Utils;->getDockBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v19

    .line 684
    .local v19, "statusLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 685
    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v19, v23, v24

    const v24, 0x7f0c0b3a

    .line 684
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    goto/16 :goto_1

    .line 688
    .end local v14    # "plugType":I
    .end local v15    # "plugged":Z
    .end local v18    # "status":I
    .end local v19    # "statusLabel":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 689
    const v23, 0x7f0c0382

    .line 688
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    goto/16 :goto_1

    .line 735
    .restart local v5    # "first":Z
    .restart local v8    # "lastInteresting":I
    .restart local v10    # "lastRealtime":J
    .restart local v12    # "lastWallTime":J
    .restart local v16    # "pos":I
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistDataEnd:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistEnd:J

    .line 736
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistDataEnd:J

    move-wide/from16 v22, v0

    add-long v22, v22, v12

    sub-long v22, v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    .line 737
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockEndWallTime:J

    .line 738
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockNumHist:I

    .line 739
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistEnd:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDockHistEnd:J

    .line 656
    .end local v4    # "batteryPercentString":Ljava/lang/String;
    .end local v5    # "first":Z
    .end local v6    # "elapsedRealtimeUs":J
    .end local v8    # "lastInteresting":I
    .end local v10    # "lastRealtime":J
    .end local v12    # "lastWallTime":J
    .end local v16    # "pos":I
    .end local v20    # "uSecTime":J
    :cond_e
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 38
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 515
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 516
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v12, v32, v34

    .line 522
    .local v12, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    .line 523
    const/16 v32, 0x0

    .line 522
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v12, v13, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v30

    .line 524
    .local v30, "uSecTime":J
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b44

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b45

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b46

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b47

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b48

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b49

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b4a

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0b4b

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 534
    const/16 v29, 0x64

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 535
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "batteryPercentString":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 540
    .local v24, "remainingTimeUs":J
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string/jumbo v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    if-nez v29, :cond_9

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    .line 543
    .local v10, "drainTime":J
    const-wide/16 v32, 0x0

    cmp-long v29, v10, v32

    if-lez v29, :cond_8

    .line 544
    move-wide/from16 v24, v10

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    .line 546
    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    .line 545
    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 547
    .local v28, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    .line 548
    const/16 v33, 0x0

    aput-object v6, v32, v33

    const/16 v33, 0x1

    aput-object v28, v32, v33

    const v33, 0x7f0c0b39

    .line 547
    move-object/from16 v0, v29

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 581
    .end local v10    # "drainTime":J
    .end local v28    # "timeString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    .line 582
    const-string/jumbo v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 585
    const/16 v21, 0x0

    .line 586
    .local v21, "pos":I
    const/4 v14, 0x0

    .line 587
    .local v14, "lastInteresting":I
    const/4 v15, -0x1

    .line 588
    .local v15, "lastLevel":B
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 589
    const/16 v29, 0x64

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 590
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 591
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 592
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 593
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 594
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 595
    const-wide/16 v18, 0x0

    .line 596
    .local v18, "lastWallTime":J
    const-wide/16 v16, 0x0

    .line 597
    .local v16, "lastRealtime":J
    const/4 v4, 0x0

    .line 598
    .local v4, "aggrStates":I
    const/4 v5, 0x0

    .line 599
    .local v5, "aggrStates2":I
    const/4 v7, 0x1

    .line 600
    .local v7, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 601
    new-instance v22, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 602
    .end local v15    # "lastLevel":B
    .local v22, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 603
    add-int/lit8 v21, v21, 0x1

    .line 604
    if-eqz v7, :cond_1

    .line 605
    const/4 v7, 0x0

    .line 606
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 608
    :cond_1
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x5

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    .line 609
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x7

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 618
    :cond_2
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v18

    cmp-long v29, v32, v34

    if-gtz v29, :cond_3

    .line 619
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x493e0

    add-long v34, v34, v36

    cmp-long v29, v32, v34

    if-gez v29, :cond_4

    .line 620
    :cond_3
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 622
    :cond_4
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    .line 623
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 624
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v29, v32, v34

    if-nez v29, :cond_5

    .line 625
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    sub-long v32, v16, v32

    sub-long v32, v18, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 628
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 629
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v0, v15, :cond_6

    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 630
    :cond_6
    move-object/from16 v0, v22

    iget-byte v15, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 632
    :cond_7
    move/from16 v14, v21

    .line 633
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    .line 634
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v29, v0

    or-int v4, v4, v29

    .line 635
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v29, v0

    or-int v5, v5, v29

    goto/16 :goto_1

    .line 550
    .end local v4    # "aggrStates":I
    .end local v5    # "aggrStates2":I
    .end local v7    # "first":Z
    .end local v14    # "lastInteresting":I
    .end local v16    # "lastRealtime":J
    .end local v18    # "lastWallTime":J
    .end local v21    # "pos":I
    .end local v22    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v10    # "drainTime":J
    :cond_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 553
    .end local v10    # "drainTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v8

    .line 554
    .local v8, "chargeTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v32, v0

    .line 554
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/exsettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v27

    .line 556
    .local v27, "statusLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string/jumbo v32, "status"

    .line 557
    const/16 v33, 0x1

    .line 556
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 558
    .local v26, "status":I
    const-wide/16 v32, 0x0

    cmp-long v29, v8, v32

    if-lez v29, :cond_d

    const/16 v29, 0x5

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 559
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 560
    move-wide/from16 v24, v8

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    .line 562
    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    .line 561
    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 563
    .restart local v28    # "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string/jumbo v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 565
    .local v20, "plugType":I
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 566
    const v23, 0x7f0c0b3c

    .line 574
    .local v23, "resId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    .line 575
    const/16 v33, 0x0

    aput-object v6, v32, v33

    const/16 v33, 0x1

    aput-object v28, v32, v33

    .line 574
    move-object/from16 v0, v29

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 567
    .end local v23    # "resId":I
    :cond_a
    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 568
    const v23, 0x7f0c0b3d

    .restart local v23    # "resId":I
    goto :goto_2

    .line 569
    .end local v23    # "resId":I
    :cond_b
    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 570
    const v23, 0x7f0c0b3e

    .restart local v23    # "resId":I
    goto :goto_2

    .line 572
    .end local v23    # "resId":I
    :cond_c
    const v23, 0x7f0c0b3b

    .restart local v23    # "resId":I
    goto :goto_2

    .line 577
    .end local v20    # "plugType":I
    .end local v23    # "resId":I
    .end local v28    # "timeString":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    .line 578
    const/16 v33, 0x0

    aput-object v6, v32, v33

    const/16 v33, 0x1

    aput-object v27, v32, v33

    const v33, 0x7f0c0b3a

    .line 577
    move-object/from16 v0, v29

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 639
    .end local v8    # "chargeTime":J
    .end local v26    # "status":I
    .end local v27    # "statusLabel":Ljava/lang/String;
    .restart local v4    # "aggrStates":I
    .restart local v5    # "aggrStates2":I
    .restart local v7    # "first":Z
    .restart local v14    # "lastInteresting":I
    .restart local v16    # "lastRealtime":J
    .restart local v18    # "lastWallTime":J
    .restart local v21    # "pos":I
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 640
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    add-long v32, v32, v18

    sub-long v32, v32, v16

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 641
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 642
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 643
    const/high16 v29, 0x20000000

    and-int v29, v29, v4

    if-eqz v29, :cond_11

    const/16 v29, 0x1

    :goto_3
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 644
    const/high16 v29, 0x8000000

    and-int v29, v29, v5

    if-eqz v29, :cond_12

    const/16 v29, 0x1

    :goto_4
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    .line 645
    const/high16 v29, 0x400000

    and-int v29, v29, v5

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    .line 646
    const/high16 v29, 0x20000000

    and-int v29, v29, v5

    if-nez v29, :cond_14

    .line 647
    const/high16 v29, 0x18010000

    and-int v29, v29, v4

    if-eqz v29, :cond_15

    const/16 v29, 0x1

    .line 646
    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_f

    .line 651
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 653
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    cmp-long v29, v32, v34

    if-gtz v29, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 514
    :cond_10
    return-void

    .line 643
    :cond_11
    const/16 v29, 0x0

    goto :goto_3

    .line 644
    :cond_12
    const/16 v29, 0x0

    goto :goto_4

    .line 645
    :cond_13
    const/16 v29, 0x0

    goto :goto_5

    .line 646
    :cond_14
    const/16 v29, 0x1

    goto :goto_6

    .line 647
    :cond_15
    const/16 v29, 0x0

    goto :goto_6
.end method
