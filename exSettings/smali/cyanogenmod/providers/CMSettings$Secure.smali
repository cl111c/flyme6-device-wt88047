.class public final Lcyanogenmod/providers/CMSettings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/CMSettings$Secure$1;,
        Lcyanogenmod/providers/CMSettings$Secure$2;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

.field protected static final MOVED_TO_GLOBAL:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAVIGATION_RING_TARGETS:[Ljava/lang/String;

.field public static final PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

.field public static final PROTECTED_COMPONENTS_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcyanogenmod/providers/CMSettings$Validator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2140
    const-string/jumbo v0, "content://cmsettings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2144
    new-instance v0, Lcyanogenmod/providers/CMSettings$NameValueCache;

    .line 2145
    const-string/jumbo v1, "sys.cm_settings_secure_version"

    .line 2146
    sget-object v2, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 2147
    const-string/jumbo v3, "GET_secure"

    .line 2148
    const-string/jumbo v4, "PUT_secure"

    .line 2144
    invoke-direct {v0, v1, v2, v3, v4}, Lcyanogenmod/providers/CMSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;

    .line 2153
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v5}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    .line 2154
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    const-string/jumbo v1, "dev_force_show_navbar"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2573
    new-array v0, v8, [Ljava/lang/String;

    .line 2574
    const-string/jumbo v1, "navigation_ring_targets_0"

    aput-object v1, v0, v6

    .line 2575
    const-string/jumbo v1, "navigation_ring_targets_1"

    aput-object v1, v0, v5

    .line 2576
    const-string/jumbo v1, "navigation_ring_targets_2"

    aput-object v1, v0, v7

    .line 2573
    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    .line 2848
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    .line 2849
    const-string/jumbo v1, "advanced_mode"

    aput-object v1, v0, v6

    .line 2850
    const-string/jumbo v1, "button_backlight_timeout"

    aput-object v1, v0, v5

    .line 2851
    const-string/jumbo v1, "button_brightness"

    aput-object v1, v0, v7

    .line 2852
    const-string/jumbo v1, "default_theme_components"

    aput-object v1, v0, v8

    .line 2853
    const-string/jumbo v1, "default_theme_package"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2854
    const-string/jumbo v1, "dev_force_show_navbar"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2855
    const-string/jumbo v1, "keyboard_brightness"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2856
    const-string/jumbo v1, "power_menu_actions"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2857
    const-string/jumbo v1, "stats_collection"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2858
    const-string/jumbo v1, "qs_show_brightness_slider"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2859
    const-string/jumbo v1, "sysui_qs_tiles"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2860
    const-string/jumbo v1, "sysui_qs_main_tiles"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2861
    sget-object v1, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v6

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2862
    sget-object v1, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v5

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2863
    sget-object v1, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2864
    const-string/jumbo v1, "recents_long_press_activity"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2865
    const-string/jumbo v1, "adb_notify"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2866
    const-string/jumbo v1, "adb_port"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2867
    const-string/jumbo v1, "device_hostname"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 2868
    const-string/jumbo v1, "kill_app_longpress_back"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 2869
    const-string/jumbo v1, "protected_components"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2870
    const-string/jumbo v1, "live_display_color_matrix"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2871
    const-string/jumbo v1, "advanced_reboot"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 2872
    const-string/jumbo v1, "theme_prev_boot_api_level"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 2873
    const-string/jumbo v1, "lockscreen_target_actions"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 2874
    const-string/jumbo v1, "ring_home_button_behavior"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 2875
    const-string/jumbo v1, "privacy_guard_default"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 2876
    const-string/jumbo v1, "privacy_guard_notification"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 2877
    const-string/jumbo v1, "development_shortcut"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 2878
    const-string/jumbo v1, "performance_profile"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 2879
    const-string/jumbo v1, "app_perf_profiles_enabled"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 2880
    const-string/jumbo v1, "qs_location_advanced"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 2881
    const-string/jumbo v1, "lockscreen_visualizer"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 2882
    const-string/jumbo v1, "lock_screen_pass_to_security_view"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 2848
    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->LEGACY_SECURE_SETTINGS:[Ljava/lang/String;

    .line 2895
    new-instance v0, Lcyanogenmod/providers/CMSettings$Secure$1;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$Secure$1;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    .line 2915
    new-instance v0, Lcyanogenmod/providers/CMSettings$Secure$2;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$Secure$2;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    .line 2942
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2941
    sput-object v0, Lcyanogenmod/providers/CMSettings$Secure;->VALIDATORS:Ljava/util/Map;

    .line 2944
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "protected_components"

    sget-object v2, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2945
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "protected_component_managers"

    sget-object v2, Lcyanogenmod/providers/CMSettings$Secure;->PROTECTED_COMPONENTS_MANAGER_VALIDATOR:Lcyanogenmod/providers/CMSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2139
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 2265
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2270
    invoke-static {p0, p1, p3}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2272
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2

    .line 2273
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 2274
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2214
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2220
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    const-string/jumbo v0, "CMSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from CMSettings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2222
    const-string/jumbo v2, " to CMSettings.Global, value is unchanged."

    .line 2221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-static {p0, p1, p2}, Lcyanogenmod/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2225
    :cond_0
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lcyanogenmod/providers/CMSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2204
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2332
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2236
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2242
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->MOVED_TO_GLOBAL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    const-string/jumbo v0, "CMSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from CMSettings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2244
    const-string/jumbo v2, " to CMSettings.Global, value is unchanged."

    .line 2243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    const/4 v0, 0x0

    return v0

    .line 2247
    :cond_0
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->sNameValueCache:Lcyanogenmod/providers/CMSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcyanogenmod/providers/CMSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
