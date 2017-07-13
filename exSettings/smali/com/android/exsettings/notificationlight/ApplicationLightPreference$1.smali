.class Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

.field final synthetic val$d:Lcom/android/exsettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;Lcom/android/exsettings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    .param p2, "val$d"    # Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v1

    const/high16 v2, -0x1000000

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->-set0(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;I)I

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->-set2(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;I)I

    .line 179
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/exsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->-set1(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;I)I

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-static {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->-wrap1(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;)V

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-static {v0, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->-wrap0(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z

    .line 176
    return-void
.end method
