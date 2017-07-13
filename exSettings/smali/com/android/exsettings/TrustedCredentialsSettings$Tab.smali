.class final enum Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exsettings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

.field private static synthetic -com_android_settings_TrustedCredentialsSettings$TabSwitchesValues:[I

.field public static final enum SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mExpandableList:I

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method private static synthetic -getcom_android_settings_TrustedCredentialsSettings$TabSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-com_android_settings_TrustedCredentialsSettings$TabSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-com_android_settings_TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->values()[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-com_android_settings_TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .param p1, "service"    # Landroid/security/IKeyChainService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 78
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "SYSTEM"

    const-string/jumbo v3, "system"

    const/4 v2, 0x0

    .line 79
    const v4, 0x7f0c0d61

    .line 80
    const v5, 0x7f13024d

    .line 81
    const v6, 0x7f13024e

    .line 82
    const v7, 0x7f13024f

    .line 83
    const v8, 0x7f130250

    .line 84
    const/4 v9, 0x1

    .line 78
    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .line 85
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "USER"

    const-string/jumbo v3, "user"

    const/4 v2, 0x1

    .line 86
    const v4, 0x7f0c0d62

    .line 87
    const v5, 0x7f130251

    .line 88
    const v6, 0x7f130252

    .line 89
    const v7, 0x7f130253

    .line 90
    const v8, 0x7f130254

    .line 91
    const/4 v9, 0x0

    .line 85
    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "list"    # I
    .param p8, "expandableList"    # I
    .param p9, "withSwitch"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-object p3, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 105
    iput p5, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mView:I

    .line 106
    iput p6, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 107
    iput p7, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mList:I

    .line 108
    iput p8, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 109
    iput-boolean p9, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    .line 102
    return-void
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-getcom_android_settings_TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :pswitch_1
    return v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-getcom_android_settings_TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 144
    invoke-static {}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-getcom_android_settings_TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :pswitch_0
    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f0c0d66

    return v0

    .line 149
    :cond_0
    const v0, 0x7f0c0d67

    return v0

    .line 151
    :pswitch_1
    const v0, 0x7f0c0d68

    return v0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 132
    invoke-static {}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->-getcom_android_settings_TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const v0, 0x7f0c0d64

    return v0

    .line 137
    :cond_0
    const v0, 0x7f0c0d63

    return v0

    .line 139
    :pswitch_1
    const v0, 0x7f0c0d65

    return v0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 156
    if-eqz p1, :cond_2

    .line 157
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get5(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-set0(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 162
    :goto_1
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 155
    :goto_2
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->remove(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    goto :goto_1

    .line 165
    :cond_2
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->-get0(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->load()V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
