.class Lcom/android/exsettings/cyanogenmod/NavBar$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/NavBar;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/NavBar;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/NavBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/NavBar;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/NavBar$1;->this$0:Lcom/android/exsettings/cyanogenmod/NavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar$1;->this$0:Lcom/android/exsettings/cyanogenmod/NavBar;

    invoke-static {v0}, Lcom/android/exsettings/cyanogenmod/NavBar;->-get0(Lcom/android/exsettings/cyanogenmod/NavBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar$1;->this$0:Lcom/android/exsettings/cyanogenmod/NavBar;

    invoke-static {v0, v3, v3}, Lcom/android/exsettings/cyanogenmod/NavBar;->-wrap0(Lcom/android/exsettings/cyanogenmod/NavBar;ZZ)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar$1;->this$0:Lcom/android/exsettings/cyanogenmod/NavBar;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/NavBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "nav_buttons"

    const/4 v2, 0x0

    .line 94
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar$1;->this$0:Lcom/android/exsettings/cyanogenmod/NavBar;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/exsettings/cyanogenmod/NavBar;->-wrap0(Lcom/android/exsettings/cyanogenmod/NavBar;ZZ)V

    .line 97
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar$1;->this$0:Lcom/android/exsettings/cyanogenmod/NavBar;

    invoke-static {v0, v3, v3}, Lcom/android/exsettings/cyanogenmod/NavBar;->-wrap0(Lcom/android/exsettings/cyanogenmod/NavBar;ZZ)V

    .line 98
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/NavBar$1;->this$0:Lcom/android/exsettings/cyanogenmod/NavBar;

    invoke-static {v0, v3}, Lcom/android/exsettings/cyanogenmod/NavBar;->-set0(Lcom/android/exsettings/cyanogenmod/NavBar;Z)Z

    .line 90
    return-void
.end method
