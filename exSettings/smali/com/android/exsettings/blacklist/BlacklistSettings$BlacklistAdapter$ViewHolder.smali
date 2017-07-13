.class Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BlacklistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field callStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

.field mainText:Landroid/widget/TextView;

.field messageStatus:Lcom/android/exsettings/blacklist/ToggleImageView;

.field position:I

.field subText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/exsettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;-><init>()V

    return-void
.end method
