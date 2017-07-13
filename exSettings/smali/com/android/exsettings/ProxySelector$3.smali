.class Lcom/android/exsettings/ProxySelector$3;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ProxySelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/ProxySelector;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/exsettings/ProxySelector$3;->this$0:Lcom/android/exsettings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/exsettings/ProxySelector$3;->this$0:Lcom/android/exsettings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/exsettings/ProxySelector;->populateFields()V

    .line 260
    return-void
.end method
