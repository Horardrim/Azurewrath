.class public final Lcom/qinyue/vcommon/utils/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;
    }
.end annotation


# static fields
.field private static onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private static onSoftInputChangedListener:Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;

.field private static sContentViewInvisibleHeightPre:I

.field private static sContentViewInvisibleHeightPre5497:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetonSoftInputChangedListener()Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;
    .locals 1

    sget-object v0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->onSoftInputChangedListener:Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsContentViewInvisibleHeightPre()I
    .locals 1

    sget v0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->sContentViewInvisibleHeightPre:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsContentViewInvisibleHeightPre5497()I
    .locals 1

    sget v0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->sContentViewInvisibleHeightPre5497:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsContentViewInvisibleHeightPre(I)V
    .locals 0

    sput p0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->sContentViewInvisibleHeightPre:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsContentViewInvisibleHeightPre5497(I)V
    .locals 0

    sput p0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->sContentViewInvisibleHeightPre5497:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetContentViewInvisibleHeight(Landroid/app/Activity;)I
    .locals 0

    invoke-static {p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fixAndroidBug5497(Landroid/app/Activity;)V
    .locals 4

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const v0, 0x1020002

    .line 228
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 231
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v3

    sput v3, Lcom/qinyue/vcommon/utils/KeyboardUtils;->sContentViewInvisibleHeightPre5497:I

    .line 232
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/qinyue/vcommon/utils/KeyboardUtils$2;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/content/Context;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "mCurRootView"

    const-string v2, "mServedView"

    const-string v3, "mNextServedView"

    .line 265
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_7

    .line 268
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 272
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 275
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 276
    instance-of v5, v4, Landroid/view/View;

    if-nez v5, :cond_4

    goto :goto_1

    .line 279
    :cond_4
    check-cast v4, Landroid/view/View;

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-ne v4, p0, :cond_5

    const/4 v4, 0x0

    .line 281
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception v3

    .line 286
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private static getContentViewInvisibleHeight(Landroid/app/Activity;)I
    .locals 1

    const v0, 0x1020002

    .line 167
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static hideSoftInput(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 385
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 386
    fill-array-data v1, :array_0

    .line 387
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v2

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p0, p0

    cmpg-float p0, v2, p0

    if-gez p0, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    int-to-float v1, v1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    int-to-float p1, v4

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static isSoftInputVisible(Landroid/app/Activity;)Z
    .locals 1

    const/16 v0, 0xc8

    .line 151
    invoke-static {p0, v0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;I)Z

    move-result p0

    return p0
.end method

.method public static isSoftInputVisible(Landroid/app/Activity;I)Z
    .locals 0

    .line 163
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/app/Activity;)I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onClickBlankArea2HideSoftInput(Landroid/view/MotionEvent;Landroid/app/Activity;)V
    .locals 1

    .line 301
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 303
    invoke-static {p1, p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 304
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static onClickBlankArea2HideSoftInput(Landroid/view/MotionEvent;Landroid/app/Dialog;)V
    .locals 1

    .line 319
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 321
    invoke-static {p1, p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 322
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static onClickBlankArea2HideSoftInput(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    .line 355
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-static {p1, p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 357
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static onClickBlankArea2HideSoftInput(Landroid/view/MotionEvent;Landroid/view/Window;)V
    .locals 1

    .line 337
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 339
    invoke-static {p1, p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 340
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static onDisableBackKeyDown(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static registerSoftInputChangedListener(Landroid/app/Activity;Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const v0, 0x1020002

    .line 186
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 187
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v1

    sput v1, Lcom/qinyue/vcommon/utils/KeyboardUtils;->sContentViewInvisibleHeightPre:I

    .line 188
    sput-object p1, Lcom/qinyue/vcommon/utils/KeyboardUtils;->onSoftInputChangedListener:Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;

    .line 189
    new-instance p1, Lcom/qinyue/vcommon/utils/KeyboardUtils$1;

    invoke-direct {p1, p0}, Lcom/qinyue/vcommon/utils/KeyboardUtils$1;-><init>(Landroid/app/Activity;)V

    sput-object p1, Lcom/qinyue/vcommon/utils/KeyboardUtils;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 201
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object p1, Lcom/qinyue/vcommon/utils/KeyboardUtils;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 202
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static showSoftInput(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 75
    invoke-virtual {v1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 p0, 0x2

    .line 79
    invoke-virtual {v0, v1, p0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x2

    .line 96
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static toggleSoftInput()V
    .locals 3

    .line 136
    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method public static unregisterSoftInputChangedListener(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x1020002

    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p0, 0x0

    .line 214
    sput-object p0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->onSoftInputChangedListener:Lcom/qinyue/vcommon/utils/KeyboardUtils$OnSoftInputChangedListener;

    .line 215
    sput-object p0, Lcom/qinyue/vcommon/utils/KeyboardUtils;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method
