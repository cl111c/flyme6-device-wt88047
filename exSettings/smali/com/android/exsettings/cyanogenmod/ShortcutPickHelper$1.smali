.class Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$1;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->processShortcut(Landroid/content/Intent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$1;->this$0:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 146
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "shortIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    iget-object v3, v3, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->info:Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 149
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;

    iget-object v3, v3, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$AppExpandableAdapter$GroupInfo;->info:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v3, p4

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 151
    .local v0, "actName":Ljava/lang/String;
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$1;->this$0:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-static {v3, v2}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->-wrap0(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;Landroid/content/Intent;)V

    .line 153
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$1;->this$0:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-static {v3}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->-get0(Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    const/4 v3, 0x1

    return v3
.end method
