.class Lcom/android/exsettings/DisplaySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DisplaySettings;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/exsettings/DisplaySettings$2;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings$2;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-static {v0}, Lcom/android/exsettings/DisplaySettings;->-wrap5(Lcom/android/exsettings/DisplaySettings;)V

    .line 155
    return-void
.end method
