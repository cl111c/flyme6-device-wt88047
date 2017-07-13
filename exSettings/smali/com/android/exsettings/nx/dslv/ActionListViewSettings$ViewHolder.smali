.class Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/nx/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public iconView:Landroid/widget/ImageView;

.field public longpressActionDescriptionView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;->this$0:Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/nx/dslv/ActionListViewSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/nx/dslv/ActionListViewSettings$ViewHolder;-><init>(Lcom/android/exsettings/nx/dslv/ActionListViewSettings;)V

    return-void
.end method
