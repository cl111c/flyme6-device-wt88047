.class Lcom/android/exsettings/voice/VoiceInputListPreference$CustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/voice/VoiceInputListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/voice/VoiceInputListPreference;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/exsettings/voice/VoiceInputListPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "objects"    # [Ljava/lang/CharSequence;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/exsettings/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/exsettings/voice/VoiceInputListPreference;

    .line 137
    const v0, 0x10900db

    .line 138
    const v1, 0x1020014

    .line 137
    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/voice/VoiceInputListPreference$CustomAdapter;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 155
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/exsettings/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/exsettings/voice/VoiceInputListPreference;

    invoke-static {v0}, Lcom/android/exsettings/voice/VoiceInputListPreference;->-get0(Lcom/android/exsettings/voice/VoiceInputListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
