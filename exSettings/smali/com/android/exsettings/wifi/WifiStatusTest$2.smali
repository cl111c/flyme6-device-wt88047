.class Lcom/android/exsettings/wifi/WifiStatusTest$2;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiStatusTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/WifiStatusTest;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiStatusTest$2;->this$0:Lcom/android/exsettings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest$2;->this$0:Lcom/android/exsettings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->-wrap10(Lcom/android/exsettings/wifi/WifiStatusTest;)V

    .line 173
    return-void
.end method
