.class public Lcom/qinyue/vcommon/base/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field private static application:Lcom/qinyue/vcommon/base/BaseApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApplication()Landroid/content/Context;
    .locals 1

    .line 31
    sget-object v0, Lcom/qinyue/vcommon/base/BaseApplication;->application:Lcom/qinyue/vcommon/base/BaseApplication;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 37
    sput-object p0, Lcom/qinyue/vcommon/base/BaseApplication;->application:Lcom/qinyue/vcommon/base/BaseApplication;

    .line 39
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 50
    invoke-static {p0}, Lcom/alibaba/android/arouter/launcher/ARouter;->init(Landroid/app/Application;)V

    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Lcom/qinyue/vcommon/utils/XUtil;->debug(Z)V

    .line 53
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/XUtil;->init(Landroid/app/Application;)V

    .line 55
    sput-boolean v0, Lskin/support/utils/Slog;->DEBUG:Z

    .line 56
    invoke-static {p0}, Lskin/support/SkinCompatManager;->withoutActivity(Landroid/app/Application;)Lskin/support/SkinCompatManager;

    move-result-object v1

    new-instance v2, Lskin/support/app/SkinAppCompatViewInflater;

    invoke-direct {v2}, Lskin/support/app/SkinAppCompatViewInflater;-><init>()V

    .line 57
    invoke-virtual {v1, v2}, Lskin/support/SkinCompatManager;->addInflater(Lskin/support/app/SkinLayoutInflater;)Lskin/support/SkinCompatManager;

    move-result-object v1

    new-instance v2, Lskin/support/design/app/SkinMaterialViewInflater;

    invoke-direct {v2}, Lskin/support/design/app/SkinMaterialViewInflater;-><init>()V

    .line 58
    invoke-virtual {v1, v2}, Lskin/support/SkinCompatManager;->addInflater(Lskin/support/app/SkinLayoutInflater;)Lskin/support/SkinCompatManager;

    move-result-object v1

    new-instance v2, Lskin/support/constraint/app/SkinConstraintViewInflater;

    invoke-direct {v2}, Lskin/support/constraint/app/SkinConstraintViewInflater;-><init>()V

    .line 59
    invoke-virtual {v1, v2}, Lskin/support/SkinCompatManager;->addInflater(Lskin/support/app/SkinLayoutInflater;)Lskin/support/SkinCompatManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v2}, Lskin/support/SkinCompatManager;->setSkinWindowBackgroundEnable(Z)Lskin/support/SkinCompatManager;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lskin/support/SkinCompatManager;->loadSkin()Landroid/os/AsyncTask;

    .line 64
    invoke-static {}, Lcom/qinyue/vcommon/http/HttpManager;->getInstance()Lcom/qinyue/vcommon/http/HttpManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/qinyue/vcommon/http/HttpManager;->initHttp(Landroid/content/Context;Z)V

    return-void
.end method
