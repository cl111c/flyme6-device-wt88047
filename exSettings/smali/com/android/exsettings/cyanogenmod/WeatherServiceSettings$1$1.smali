.class Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1$1;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;->onPackageAdded(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1$1;->this$1:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1$1;->this$1:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;

    iget-object v0, v0, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings$1;->this$0:Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;->-wrap1(Lcom/android/exsettings/cyanogenmod/WeatherServiceSettings;)V

    .line 158
    return-void
.end method
