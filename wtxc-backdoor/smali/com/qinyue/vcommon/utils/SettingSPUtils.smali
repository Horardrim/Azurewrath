.class public Lcom/qinyue/vcommon/utils/SettingSPUtils;
.super Lcom/qinyue/vcommon/base/BaseSPUtil;
.source "SettingSPUtils.java"


# static fields
.field private static volatile sInstance:Lcom/qinyue/vcommon/utils/SettingSPUtils;


# instance fields
.field private SKIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/base/BaseSPUtil;-><init>(Landroid/content/Context;)V

    const-string p1, "SKIN_TYPE"

    .line 24
    iput-object p1, p0, Lcom/qinyue/vcommon/utils/SettingSPUtils;->SKIN:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/qinyue/vcommon/utils/SettingSPUtils;
    .locals 3

    .line 32
    sget-object v0, Lcom/qinyue/vcommon/utils/SettingSPUtils;->sInstance:Lcom/qinyue/vcommon/utils/SettingSPUtils;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/qinyue/vcommon/utils/SettingSPUtils;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/qinyue/vcommon/utils/SettingSPUtils;->sInstance:Lcom/qinyue/vcommon/utils/SettingSPUtils;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/qinyue/vcommon/utils/SettingSPUtils;

    invoke-static {}, Lcom/qinyue/vcommon/base/BaseApplication;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qinyue/vcommon/utils/SettingSPUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qinyue/vcommon/utils/SettingSPUtils;->sInstance:Lcom/qinyue/vcommon/utils/SettingSPUtils;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/qinyue/vcommon/utils/SettingSPUtils;->sInstance:Lcom/qinyue/vcommon/utils/SettingSPUtils;

    return-object v0
.end method


# virtual methods
.method public getSKIN()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/SettingSPUtils;->SKIN:Ljava/lang/String;

    sget-object v1, Lcom/qinyue/vcommon/constants/SkinType;->NORMAL:Lcom/qinyue/vcommon/constants/SkinType;

    invoke-virtual {v1}, Lcom/qinyue/vcommon/constants/SkinType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qinyue/vcommon/utils/SettingSPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSKIN(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/SettingSPUtils;->SKIN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/qinyue/vcommon/utils/SettingSPUtils;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
