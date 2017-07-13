.class public Lcom/android/exsettingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "gmtOffsetString"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "offsetMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v1, "gmt"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v1, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object v0
.end method

.method private static getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 208
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "ZZZZ"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 210
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 214
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 216
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 215
    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 217
    return-object v2

    .line 214
    .end local v3    # "isRtl":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isRtl":Z
    goto :goto_0

    .line 216
    :cond_1
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method

.method public static getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 59
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1, p0, p1}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "gmtString":Ljava/lang/String;
    invoke-static {v1, p0, p1}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "zoneNameString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 62
    return-object v0

    .line 66
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getZoneDisplayName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;
    .param p3, "preferLongName"    # Z

    .prologue
    .line 151
    if-eqz p3, :cond_1

    .line 152
    invoke-static {p0, p1, p2}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "zoneNameString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 154
    .end local v0    # "zoneNameString":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getZoneExemplarLocation(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "zoneNameString":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getZoneExemplarLocation(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/TimeZoneNames;->getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 201
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 203
    .local v0, "daylight":Z
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getZonesList(Landroid/content/Context;)Ljava/util/List;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 71
    .local v11, "locale":Ljava/util/Locale;
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 89
    .local v13, "now":Ljava/util/Date;
    invoke-static/range {p0 .. p0}, Lcom/android/exsettingslib/datetime/ZoneGetter;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 92
    .local v16, "olsonIdsToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;>;"
    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    .line 93
    .local v9, "localZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v11}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v24

    const/16 v23, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    aget-object v15, v24, v23

    .line 94
    .local v15, "olsonId":Ljava/lang/String;
    invoke-interface {v9, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 99
    .end local v15    # "olsonId":Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 100
    .local v10, "localZoneNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 101
    .local v8, "localLongNamesAreAmbiguous":Z
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "zoneInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;

    .line 102
    .local v19, "zoneInfo":Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mOlsonId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mLocalizeInPicker:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 103
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mOlsonId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 104
    .local v18, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v18

    invoke-static {v11, v0, v13}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 105
    .local v21, "zoneLongName":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 106
    .local v12, "longNameIsUnique":Z
    if-nez v12, :cond_1

    .line 107
    const/4 v8, 0x1

    .line 114
    .end local v12    # "longNameIsUnique":Z
    .end local v18    # "tz":Ljava/util/TimeZone;
    .end local v19    # "zoneInfo":Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;
    .end local v21    # "zoneLongName":Ljava/lang/String;
    :cond_2
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v22, "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;

    .line 116
    .restart local v19    # "zoneInfo":Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mOlsonId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 119
    .restart local v18    # "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mOlsonId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 120
    .local v7, "isLocalZoneId":Z
    if-eqz v7, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    const/16 v17, 0x0

    .line 122
    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v11, v0, v13, v1}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getZoneDisplayName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "displayName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v11, v0, v13}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "gmtOffsetString":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v14

    .line 127
    .local v14, "offsetMillis":I
    move-object/from16 v0, v18

    invoke-static {v0, v6, v5, v14}, Lcom/android/exsettingslib/datetime/ZoneGetter;->createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    .line 128
    .local v4, "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v4    # "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "gmtOffsetString":Ljava/lang/String;
    .end local v14    # "offsetMillis":I
    :cond_4
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;->mLocalizeInPicker:Z

    move/from16 v17, v0

    .local v17, "preferLongName":Z
    goto :goto_2

    .line 130
    .end local v7    # "isLocalZoneId":Z
    .end local v17    # "preferLongName":Z
    .end local v18    # "tz":Ljava/util/TimeZone;
    .end local v19    # "zoneInfo":Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;
    :cond_5
    return-object v22
.end method

.method private static readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v3, "olsonIds":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;>;"
    const/4 v5, 0x0

    .local v5, "xrp":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/exsettingslib/R$xml;->timezones:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 170
    .local v5, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 173
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 174
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v12, :cond_9

    .line 175
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v11, :cond_6

    .line 176
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    if-ne v6, v10, :cond_4

    .line 196
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_2
    if-eqz v7, :cond_3

    :try_start_2
    throw v7
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 192
    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 193
    .local v4, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v6, "ZoneGetter"

    const-string/jumbo v7, "Ill-formatted timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v4    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    return-object v3

    .line 196
    .restart local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 177
    :cond_3
    return-object v3

    .line 179
    :cond_4
    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 196
    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v13

    :goto_4
    if-eqz v5, :cond_5

    :try_start_5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    if-eqz v7, :cond_c

    :try_start_6
    throw v7
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 194
    :catch_3
    move-exception v0

    .line 195
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v6, "ZoneGetter"

    const-string/jumbo v7, "Unable to read timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 181
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_6
    :try_start_7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "timezone"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 182
    const-string/jumbo v6, "id"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "olsonId":Ljava/lang/String;
    const-string/jumbo v6, "localizeInPicker"

    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v9, 0x1

    .line 183
    invoke-interface {v5, v8, v6, v9}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 185
    .local v1, "localize":Z
    new-instance v6, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;

    invoke-direct {v6, v2, v1}, Lcom/android/exsettingslib/datetime/ZoneGetter$ZoneInfo;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v1    # "localize":Z
    .end local v2    # "olsonId":Ljava/lang/String;
    :cond_7
    :goto_6
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v12, :cond_8

    .line 188
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_6

    .line 196
    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v6

    goto :goto_4

    .line 190
    .restart local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_8
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 196
    :cond_9
    if-eqz v5, :cond_a

    :try_start_8
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    :goto_7
    if-eqz v7, :cond_2

    :try_start_9
    throw v7

    :catch_4
    move-exception v7

    goto :goto_7

    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_5
    move-exception v8

    if-nez v7, :cond_b

    move-object v7, v8

    goto :goto_5

    :cond_b
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    throw v6
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
.end method
