.class public Lcom/qinyue/vcommon/manager/MySkinManager;
.super Ljava/lang/Object;
.source "MySkinManager.java"


# static fields
.field private static instance:Lcom/qinyue/vcommon/manager/MySkinManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qinyue/vcommon/manager/MySkinManager;
    .locals 2

    .line 24
    const-class v0, Lcom/qinyue/vcommon/manager/MySkinManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/qinyue/vcommon/manager/MySkinManager;->instance:Lcom/qinyue/vcommon/manager/MySkinManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/qinyue/vcommon/manager/MySkinManager;

    invoke-direct {v1}, Lcom/qinyue/vcommon/manager/MySkinManager;-><init>()V

    sput-object v1, Lcom/qinyue/vcommon/manager/MySkinManager;->instance:Lcom/qinyue/vcommon/manager/MySkinManager;

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object v0, Lcom/qinyue/vcommon/manager/MySkinManager;->instance:Lcom/qinyue/vcommon/manager/MySkinManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public chageForSystemNight()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageNight()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageNomral()V

    :cond_1
    :goto_0
    return-void
.end method

.method public chageNight()V
    .locals 2

    .line 82
    sget-object v0, Lcom/qinyue/vcommon/constants/SkinType;->NIGHT:Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/constants/SkinType;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageSkin(Ljava/lang/String;Lskin/support/SkinCompatManager$SkinLoaderListener;)V

    return-void
.end method

.method public chageNomral()V
    .locals 2

    .line 76
    sget-object v0, Lcom/qinyue/vcommon/constants/SkinType;->NORMAL:Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/constants/SkinType;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qinyue/vcommon/manager/MySkinManager;->chageSkin(Ljava/lang/String;Lskin/support/SkinCompatManager$SkinLoaderListener;)V

    return-void
.end method

.method public chageSkin(Ljava/lang/String;Lskin/support/SkinCompatManager$SkinLoaderListener;)V
    .locals 2

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/qinyue/vcommon/manager/MySkinManager;->getSkinName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/qinyue/vcommon/constants/SkinType;->NORMAL:Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/constants/SkinType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object p1

    invoke-virtual {p1}, Lskin/support/SkinCompatManager;->restoreDefaultTheme()V

    if-eqz p2, :cond_3

    .line 49
    invoke-interface {p2}, Lskin/support/SkinCompatManager$SkinLoaderListener;->onSuccess()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lskin/support/SkinCompatManager;->getInstance()Lskin/support/SkinCompatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lskin/support/SkinCompatManager;->loadSkin(Ljava/lang/String;Lskin/support/SkinCompatManager$SkinLoaderListener;I)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "\u8d44\u6e90\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    .line 56
    invoke-interface {p2, p1}, Lskin/support/SkinCompatManager$SkinLoaderListener;->onFailed(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getSkinName()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-static {}, Lskin/support/utils/SkinPreference;->getInstance()Lskin/support/utils/SkinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/utils/SkinPreference;->getSkinName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/qinyue/vcommon/constants/SkinType;->NORMAL:Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {v0}, Lcom/qinyue/vcommon/constants/SkinType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    invoke-static {}, Lskin/support/utils/SkinPreference;->getInstance()Lskin/support/utils/SkinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lskin/support/utils/SkinPreference;->getSkinName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
