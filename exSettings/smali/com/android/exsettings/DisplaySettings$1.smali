.class Lcom/android/exsettings/DisplaySettings$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/exsettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/DisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/exsettings/DisplaySettings$1;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings$1;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-static {v0}, Lcom/android/exsettings/DisplaySettings;->-wrap5(Lcom/android/exsettings/DisplaySettings;)V

    .line 148
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings$1;->this$0:Lcom/android/exsettings/DisplaySettings;

    invoke-static {v0}, Lcom/android/exsettings/DisplaySettings;->-wrap4(Lcom/android/exsettings/DisplaySettings;)V

    .line 146
    return-void
.end method
