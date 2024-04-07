.class public final Lcom/qinyue/vcommon/utils/XUtil;
.super Ljava/lang/Object;
.source "XUtil.java"


# static fields
.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static sAutoInit:Z

.field private static sContext:Landroid/app/Application;

.field private static sLifecycleHelper:Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;

    invoke-direct {v0}, Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;-><init>()V

    sput-object v0, Lcom/qinyue/vcommon/utils/XUtil;->sLifecycleHelper:Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qinyue/vcommon/utils/XUtil;->MAIN_HANDLER:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/qinyue/vcommon/utils/XUtil;->sAutoInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 285
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-static {p0}, Lcom/qinyue/vcommon/logger/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "[Logger]"

    .line 220
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/XUtil;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 222
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/XUtil;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static disableAutoInit()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/qinyue/vcommon/utils/XUtil;->sAutoInit:Z

    return-void
.end method

.method public static exitApp()V
    .locals 1

    .line 263
    sget-object v0, Lcom/qinyue/vcommon/utils/XUtil;->sLifecycleHelper:Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;->exit()V

    .line 266
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/ServiceUtils;->stopAllRunningService(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 267
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static getActivityLifecycleHelper()Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;
    .locals 1

    .line 204
    sget-object v0, Lcom/qinyue/vcommon/utils/XUtil;->sLifecycleHelper:Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 129
    sget-object v0, Lcom/qinyue/vcommon/utils/XUtil;->sContext:Landroid/app/Application;

    return-object v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 156
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 138
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 120
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->testInitialize()V

    .line 121
    sget-object v0, Lcom/qinyue/vcommon/utils/XUtil;->sContext:Landroid/app/Application;

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 243
    sget-object v0, Lcom/qinyue/vcommon/utils/XUtil;->MAIN_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 165
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .line 147
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 192
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public static getSystemService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/qinyue/vcommon/utils/XUtil;->getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .line 88
    sput-object p0, Lcom/qinyue/vcommon/utils/XUtil;->sContext:Landroid/app/Application;

    .line 89
    sget-object v0, Lcom/qinyue/vcommon/utils/XUtil;->sLifecycleHelper:Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/qinyue/vcommon/utils/XUtil;->sContext:Landroid/app/Application;

    return-void
.end method

.method public static isAutoInit()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/qinyue/vcommon/utils/XUtil;->sAutoInit:Z

    return v0
.end method

.method public static rebootApp()V
    .locals 0

    .line 274
    invoke-static {}, Lcom/qinyue/vcommon/utils/AppUtils;->rebootApp()V

    return-void
.end method

.method public static recycleBackground(Landroid/view/View;)V
    .locals 2

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v0, :cond_0

    .line 299
    instance-of p0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 300
    move-object p0, v0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 306
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public static registerLifecycleCallbacks(Landroid/app/Application;Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;)V
    .locals 0

    .line 108
    sput-object p1, Lcom/qinyue/vcommon/utils/XUtil;->sLifecycleHelper:Lcom/qinyue/vcommon/utils/ActivityLifecycleHelper;

    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)Z
    .locals 1

    .line 253
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private static testInitialize()V
    .locals 2

    .line 208
    sget-object v0, Lcom/qinyue/vcommon/utils/XUtil;->sContext:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "\u8bf7\u5148\u5728\u5168\u5c40Application\u4e2d\u8c03\u7528 XUtil.init() \u521d\u59cb\u5316\uff01"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
