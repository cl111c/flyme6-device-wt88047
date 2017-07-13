.class public final Lcom/android/exsettings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v11, 0x7f0200a9

    const v10, 0x7f0200a3

    const v9, 0x7f0200db

    const v8, 0x7f0200ea

    const v7, 0x7f0200d2

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    sput-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 72
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 74
    const-class v3, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 75
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 76
    const-class v5, Lcom/android/exsettings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 81
    const-class v3, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 83
    const-class v4, Lcom/android/exsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 82
    const v5, 0x7f080073

    .line 80
    invoke-direct {v2, v3, v5, v4, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 88
    const-class v3, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 89
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 90
    const-class v5, Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 95
    const-class v3, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 96
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 97
    const-class v5, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 98
    const v6, 0x7f0200b0

    .line 94
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 102
    const-class v3, Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 103
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 104
    const-class v5, Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 105
    const v6, 0x7f0200dd

    .line 101
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 109
    const-class v3, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 110
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 111
    const-class v5, Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 112
    const v6, 0x7f0200b6

    .line 108
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 116
    const-class v3, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 117
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 118
    const-class v5, Lcom/android/exsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 119
    const v6, 0x7f0200b6

    .line 115
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 123
    const-class v3, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 124
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 125
    const-class v5, Lcom/android/exsettings/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 126
    const v6, 0x7f0200ca

    .line 122
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 130
    const-class v3, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 131
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 132
    const-class v5, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 137
    const-class v3, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 138
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 139
    const-class v5, Lcom/android/exsettings/HomeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 140
    const v6, 0x7f0200c1

    .line 136
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 144
    const-class v3, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 145
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 146
    const-class v5, Lcom/android/exsettings/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 147
    const v6, 0x7f0200bc

    .line 143
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 151
    const-class v3, Lcom/android/exsettings/WallpaperTypeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 152
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 153
    const-class v5, Lcom/android/exsettings/WallpaperTypeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 154
    const v6, 0x7f0200bc

    .line 150
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 149
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 158
    const-class v3, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 159
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 160
    const-class v5, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 165
    const-class v3, Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 166
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 167
    const-class v5, Lcom/android/exsettings/notification/NotificationManagerSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 172
    const-class v3, Lcom/android/exsettings/notification/OtherSoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 173
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 174
    const-class v5, Lcom/android/exsettings/notification/OtherSoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 170
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 179
    const-class v3, Lcom/android/exsettings/notification/ZenModeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 180
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 181
    const-class v5, Lcom/android/exsettings/notification/ZenModeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 186
    const-class v3, Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 188
    const-class v4, Lcom/android/exsettings/notification/ZenModePrioritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 187
    const v5, 0x7f08007d

    .line 185
    invoke-direct {v2, v3, v5, v4, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 193
    const-class v3, Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 194
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 195
    const-class v5, Lcom/android/exsettings/deviceinfo/StorageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 196
    const v6, 0x7f0200e2

    .line 192
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 191
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 200
    const-class v3, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 202
    const-class v4, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 201
    const v5, 0x7f080042

    .line 203
    const v6, 0x7f0200ae

    .line 199
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 207
    const-class v3, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 209
    const-class v4, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 208
    const v5, 0x7f080014

    .line 210
    const v6, 0x7f0200ae

    .line 206
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 205
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 214
    const-class v3, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 216
    const-class v4, Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 215
    const v5, 0x7f080006

    .line 213
    invoke-direct {v2, v3, v5, v4, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 212
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 220
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 221
    const-class v3, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 222
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 223
    const-class v5, Lcom/android/exsettings/applications/ManageDefaultApps;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-direct {v2, v3, v4, v5, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 228
    const-class v3, Lcom/android/exsettings/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 229
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 230
    const-class v5, Lcom/android/exsettings/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 231
    const v6, 0x7f0200cc

    .line 227
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 226
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 235
    const-class v3, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 237
    const-class v4, Lcom/android/exsettings/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 236
    const v5, 0x7f080036

    .line 238
    const v6, 0x7f0200c5

    .line 234
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 233
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 242
    const-class v3, Lcom/android/exsettings/location/ScanningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 244
    const-class v4, Lcom/android/exsettings/location/ScanningSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 243
    const v5, 0x7f080035

    .line 245
    const v6, 0x7f0200c5

    .line 241
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 240
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 249
    const-class v3, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 250
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 251
    const-class v5, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 247
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 255
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 256
    const-class v3, Lcom/android/exsettings/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 257
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 258
    const-class v5, Lcom/android/exsettings/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 254
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 262
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 263
    const-class v3, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 264
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 265
    const-class v5, Lcom/android/exsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 266
    const v6, 0x7f0200c3

    .line 262
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 270
    const-class v3, Lcom/android/exsettings/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 271
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 272
    const-class v5, Lcom/android/exsettings/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 273
    const v6, 0x7f0200ab

    .line 269
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 268
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 277
    const-class v3, Lcom/android/exsettings/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 279
    const-class v4, Lcom/android/exsettings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 278
    const v5, 0x7f08001c

    .line 280
    const v6, 0x7f0200b8

    .line 276
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 275
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 284
    const-class v3, Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 285
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 286
    const-class v5, Lcom/android/exsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 287
    const v6, 0x7f0200a5

    .line 283
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 282
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 291
    const-class v3, Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 292
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 293
    const-class v5, Lcom/android/exsettings/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 294
    const v6, 0x7f0200d6

    .line 290
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 297
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 298
    const-class v3, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 299
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 300
    const-class v5, Lcom/android/exsettings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 301
    const v6, 0x7f0200ba

    .line 297
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 304
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 305
    const-class v3, Lcom/android/exsettings/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 306
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 307
    const-class v5, Lcom/android/exsettings/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 304
    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 303
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 312
    const-class v3, Lcom/android/exsettings/LegalSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 313
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 314
    const-class v5, Lcom/android/exsettings/LegalSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 310
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 319
    const-class v3, Lcom/android/exsettings/WifiCallingSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 321
    const-class v4, Lcom/android/exsettings/WifiCallingSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 320
    const v5, 0x7f080074

    .line 318
    invoke-direct {v2, v3, v5, v4, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 317
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/ButtonSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 327
    const-class v3, Lcom/android/exsettings/ButtonSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 329
    const-class v4, Lcom/android/exsettings/ButtonSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 328
    const v5, 0x7f080018

    .line 330
    const v6, 0x7f0200b2

    .line 326
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 325
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 334
    const-class v3, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 336
    const-class v4, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 335
    const v5, 0x7f08005e

    .line 337
    const v6, 0x7f0200e1

    .line 333
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 332
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 342
    const-class v3, Lcom/android/exsettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 344
    const-class v4, Lcom/android/exsettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 343
    const v5, 0x7f080048

    .line 345
    const v6, 0x7f0200d8

    .line 340
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 339
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 348
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 350
    const-class v3, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v3}, Lcom/android/exsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 351
    sget v4, Lcom/android/exsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 352
    const-class v5, Lcom/android/exsettings/cyanogenmod/LockscreenSettingsAlias;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 353
    const v6, 0x7f0200c7

    .line 348
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 347
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 364
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Lcom/android/exsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
