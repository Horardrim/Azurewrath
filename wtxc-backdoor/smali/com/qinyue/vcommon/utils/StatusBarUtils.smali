.class public Lcom/qinyue/vcommon/utils/StatusBarUtils;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinyue/vcommon/utils/StatusBarUtils$StatusBarType;
    }
.end annotation


# static fields
.field private static final STATUSBAR_TYPE_ANDROID6:I = 0x3

.field private static final STATUSBAR_TYPE_DEFAULT:I = 0x0

.field private static final STATUSBAR_TYPE_FLYME:I = 0x2

.field private static final STATUSBAR_TYPE_MIUI:I = 0x1

.field private static final STATUS_BAR_DEFAULT_HEIGHT_DP:I = 0x19

.field private static mStatuBarType:I = 0x0

.field private static sStatusbarHeight:I = -0x1

.field private static sTransparentValue:Ljava/lang/Integer; = null

.field public static sVirtualDensity:F = -1.0f

.field public static sVirtualDensityDpi:F = -1.0f


# direct methods
.method static bridge synthetic -$$Nest$smrealHandleDisplayCutoutMode(Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->realHandleDisplayCutoutMode(Landroid/view/Window;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static Android6SetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 2

    .line 297
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x2000

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    .line 299
    :goto_0
    invoke-static {p0, v1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->changeStatusBarModeRetainFlag(Landroid/view/Window;I)I

    move-result v1

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 301
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMIUIV9()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-static {p0, p1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 364
    invoke-static {p0, p1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->Android6SetStatusBarLightMode(Landroid/view/Window;Z)Z

    .line 367
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 368
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 369
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 370
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 372
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 373
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 374
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 375
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    not-int p1, v2

    and-int/2addr p1, v4

    .line 381
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 382
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    .line 323
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 324
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 325
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 326
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/Object;

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public static cancelFullScreen(Landroid/app/Activity;)V
    .locals 0

    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->cancelFullScreen(Landroid/view/Window;)V

    return-void
.end method

.method public static cancelFullScreen(Landroid/app/Activity;II)V
    .locals 0

    .line 547
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->cancelFullScreen(Landroid/view/Window;II)V

    return-void
.end method

.method public static cancelFullScreen(Landroid/view/Window;)V
    .locals 1

    const/4 v0, -0x1

    .line 587
    invoke-static {p0, v0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->cancelFullScreen(Landroid/view/Window;II)V

    return-void
.end method

.method public static cancelFullScreen(Landroid/view/Window;II)V
    .locals 2

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/high16 v0, 0xc000000

    .line 559
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 561
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 562
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 564
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    if-eq p2, v0, :cond_1

    .line 567
    invoke-virtual {p0, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method private static changeStatusBarModeRetainFlag(Landroid/view/Window;I)I
    .locals 2

    const/16 v0, 0x400

    .line 270
    invoke-static {p0, p1, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->retainSystemUiFlag(Landroid/view/Window;II)I

    move-result p1

    const/4 v1, 0x4

    .line 271
    invoke-static {p0, p1, v1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->retainSystemUiFlag(Landroid/view/Window;II)I

    move-result p1

    const/4 v1, 0x2

    .line 272
    invoke-static {p0, p1, v1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->retainSystemUiFlag(Landroid/view/Window;II)I

    move-result p1

    const/16 v1, 0x1000

    .line 273
    invoke-static {p0, p1, v1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->retainSystemUiFlag(Landroid/view/Window;II)I

    move-result p1

    .line 274
    invoke-static {p0, p1, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->retainSystemUiFlag(Landroid/view/Window;II)I

    move-result p1

    const/16 v0, 0x200

    .line 275
    invoke-static {p0, p1, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->retainSystemUiFlag(Landroid/view/Window;II)I

    move-result p0

    return p0
.end method

.method public static fullScreen(Landroid/app/Activity;)V
    .locals 0

    .line 521
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->fullScreen(Landroid/view/Window;)V

    return-void
.end method

.method public static fullScreen(Landroid/view/Window;)V
    .locals 2

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 531
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1207

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getStatusBarAPITransparentValue(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 6

    .line 412
    sget-object v0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sTransparentValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 416
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object p0

    .line 418
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, p0, v1

    const-string v5, "touchwiz"

    .line 419
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    goto :goto_1

    :cond_1
    const-string v5, "com.sonyericsson.navigationbar"

    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "SYSTEM_UI_FLAG_TRANSPARENT"

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 428
    :try_start_0
    const-class p0, Landroid/view/View;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 430
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 431
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 432
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sTransparentValue:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :catch_0
    :cond_4
    sget-object p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sTransparentValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 452
    sget v0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 453
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->initStatusBarHeight(Landroid/content/Context;)V

    .line 455
    :cond_0
    sget p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I

    return p0
.end method

.method private static handleDisplayCutoutMode(Landroid/view/Window;)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->realHandleDisplayCutoutMode(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_0

    .line 165
    :cond_0
    new-instance v1, Lcom/qinyue/vcommon/utils/StatusBarUtils$1;

    invoke-direct {v1, p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils$1;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static initStatusBarHeight(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    .line 463
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 465
    :try_start_1
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMeizu()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    const-string v3, "status_bar_height_large"

    .line 467
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 469
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v3, "status_bar_height"

    .line 473
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 476
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v0

    move-object v0, v1

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 480
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 486
    :cond_2
    :goto_3
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    if-eqz v0, :cond_3

    sget v0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I

    .line 487
    invoke-static {p0, v1}, Lcom/qinyue/vcommon/utils/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-le v0, v2, :cond_3

    const/4 p0, 0x0

    .line 489
    sput p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I

    goto :goto_4

    .line 491
    :cond_3
    sget v0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I

    if-gtz v0, :cond_5

    .line 492
    sget v0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sVirtualDensity:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    .line 493
    invoke-static {p0, v1}, Lcom/qinyue/vcommon/utils/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    sput p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I

    goto :goto_4

    :cond_4
    mul-float/2addr v0, v1

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    .line 495
    sput p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sStatusbarHeight:I

    :cond_5
    :goto_4
    return-void
.end method

.method public static initStatusBarStyle(Landroid/app/Activity;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, p1, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->initStatusBarStyle(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public static initStatusBarStyle(Landroid/app/Activity;ZI)V
    .locals 0

    .line 83
    invoke-static {p0, p2}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->translucent(Landroid/app/Activity;I)V

    if-eqz p1, :cond_0

    .line 86
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->setStatusBarDarkMode(Landroid/app/Activity;)Z

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->setStatusBarLightMode(Landroid/app/Activity;)Z

    :goto_0
    return-void
.end method

.method public static isFullScreen(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 400
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private static isMIUICustomStatusBarLightModeImpl()Z
    .locals 3

    .line 345
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMIUIV9()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 348
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMIUIV5()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMIUIV6()Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMIUIV7()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMIUIV8()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isNotchOfficialSupport()Z
    .locals 2

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static realHandleDisplayCutoutMode(Landroid/view/Window;Landroid/view/View;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 186
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 188
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static retainSystemUiFlag(Landroid/view/Window;II)I
    .locals 0

    .line 280
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    or-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .locals 4

    .line 592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 594
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 595
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 596
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 598
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 600
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v2, v3, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x50

    .line 601
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 602
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 604
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setStatusBarDarkMode(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 253
    :cond_0
    sget v1, Lcom/qinyue/vcommon/utils/StatusBarUtils;->mStatuBarType:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-ne v1, v2, :cond_2

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->Android6SetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public static setStatusBarLightMode(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 203
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isZTKC2016()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 207
    :cond_1
    sget v1, Lcom/qinyue/vcommon/utils/StatusBarUtils;->mStatuBarType:I

    if-eqz v1, :cond_2

    .line 208
    invoke-static {p0, v1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->setStatusBarLightMode(Landroid/app/Activity;I)Z

    move-result p0

    return p0

    .line 210
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    .line 211
    invoke-static {}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->isMIUICustomStatusBarLightModeImpl()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    sput v2, Lcom/qinyue/vcommon/utils/StatusBarUtils;->mStatuBarType:I

    return v2

    .line 214
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x2

    .line 215
    sput p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->mStatuBarType:I

    return v2

    .line 217
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_5

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->Android6SetStatusBarLightMode(Landroid/view/Window;Z)Z

    const/4 p0, 0x3

    .line 219
    sput p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->mStatuBarType:I

    return v2

    :cond_5
    return v0
.end method

.method private static setStatusBarLightMode(Landroid/app/Activity;I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->Android6SetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static setVirtualDensity(F)V
    .locals 0

    .line 502
    sput p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sVirtualDensity:F

    return-void
.end method

.method public static setVirtualDensityDpi(F)V
    .locals 0

    .line 506
    sput p0, Lcom/qinyue/vcommon/utils/StatusBarUtils;->sVirtualDensityDpi:F

    return-void
.end method

.method public static supportTransclentStatusBar6()Z
    .locals 1

    .line 445
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isZUKZ1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isZTKC2016()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportTranslucent()Z
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 57
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isEssentialPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static translucent(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->translucent(Landroid/view/Window;)V

    return-void
.end method

.method public static translucent(Landroid/app/Activity;I)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 100
    invoke-static {p0, p1}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->translucent(Landroid/view/Window;I)V

    return-void
.end method

.method public static translucent(Landroid/view/Window;)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 51
    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->translucent(Landroid/view/Window;I)V

    return-void
.end method

.method public static translucent(Landroid/view/Window;I)V
    .locals 4

    .line 105
    invoke-static {}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->supportTranslucent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->isNotchOfficialSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->handleDisplayCutoutMode(Landroid/view/Window;)V

    .line 116
    :cond_1
    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMeizu()Z

    move-result v0

    const/high16 v1, 0x4000000

    if-nez v0, :cond_5

    invoke-static {}, Lcom/qinyue/vcommon/utils/DeviceUtils;->isMIUI()Z

    move-result v0

    const/16 v2, 0x17

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    .line 123
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x500

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v3, -0x80000000

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/qinyue/vcommon/utils/StatusBarUtils;->supportTransclentStatusBar6()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 129
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 139
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_4
    :goto_0
    return-void

    .line 117
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method
