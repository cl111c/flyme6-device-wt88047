.class Lcom/android/exsettings/notificationlight/ApplicationLightPreference$2;
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


# direct methods
.method constructor <init>(Lcom/android/exsettings/notificationlight/ApplicationLightPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference$2;->this$0:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    return-void
.end method
