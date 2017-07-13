.class Lcom/android/exsettings/applications/AppOpsSummary$1;
.super Ljava/lang/Object;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/AppOpsSummary;->resetCountersConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/AppOpsSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/AppOpsSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/applications/AppOpsSummary;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/exsettings/applications/AppOpsSummary$1;->this$0:Lcom/android/exsettings/applications/AppOpsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/exsettings/applications/AppOpsSummary$1;->this$0:Lcom/android/exsettings/applications/AppOpsSummary;

    invoke-static {v0}, Lcom/android/exsettings/applications/AppOpsSummary;->-wrap0(Lcom/android/exsettings/applications/AppOpsSummary;)V

    .line 242
    return-void
.end method
