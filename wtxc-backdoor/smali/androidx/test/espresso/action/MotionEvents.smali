.class public final Landroidx/test/espresso/action/MotionEvents;
.super Ljava/lang/Object;
.source "MotionEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
    }
.end annotation


# static fields
.field static final MAX_CLICK_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MotionEvents"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static downPressGingerBread(J[F[F)Landroid/view/MotionEvent;
    .locals 14

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    aget v5, p2, v0

    const/4 v1, 0x1

    aget v6, p2, v1

    aget v10, p3, v0

    aget v11, p3, v1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    .line 1
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private static downPressICS(J[F[FII)Landroid/view/MotionEvent;
    .locals 17

    const/4 v0, 0x1

    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 1
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v8, v2

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/test/espresso/action/MotionEvents;->getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v7

    aget-object v1, v8, v2

    .line 3
    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v1, v8, v2

    .line 4
    aget v3, p2, v2

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v1, v8, v2

    .line 5
    aget v3, p2, v0

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v1, v8, v2

    const/4 v3, 0x0

    .line 6
    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v1, v8, v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aget v11, p3, v2

    aget v12, p3, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move/from16 v10, p5

    move/from16 v15, p4

    .line 9
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private static getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 1
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aget-object v2, v1, v3

    .line 2
    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    aget-object v2, v1, v3

    .line 3
    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/16 v2, 0x1002

    if-eq p0, v2, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4002

    if-eq p0, v0, :cond_0

    aget-object p0, v1, v3

    .line 11
    iput v3, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    goto :goto_0

    :cond_0
    aget-object p0, v1, v3

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    goto :goto_0

    :cond_1
    aget-object p0, v1, v3

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    goto :goto_0

    :cond_2
    aget-object p0, v1, v3

    .line 9
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    :goto_0
    return-object v1
.end method

.method public static obtainDownEvent([F[F)Landroid/view/MotionEvent;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Landroidx/test/espresso/action/MotionEvents;->obtainDownEvent([F[FII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainDownEvent([F[FII)Landroid/view/MotionEvent;
    .locals 6

    .line 2
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 6
    invoke-static {v0, v1, p0, p1}, Landroidx/test/espresso/action/MotionEvents;->downPressGingerBread(J[F[F)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 7
    invoke-static/range {v0 .. v5}, Landroidx/test/espresso/action/MotionEvents;->downPressICS(J[F[FII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainMovement(JJ[F)Landroid/view/MotionEvent;
    .locals 9

    const/4 v0, 0x0

    .line 1
    aget v6, p4, v0

    const/4 v0, 0x1

    aget v7, p4, v0

    const/4 v5, 0x2

    const/4 v8, 0x0

    move-wide v1, p0

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainMovement(J[F)Landroid/view/MotionEvent;
    .locals 8

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-wide v0, p0

    .line 2
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainUpEvent(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 4
    invoke-static {p0, p1}, Landroidx/test/espresso/action/MotionEvents;->upPressGingerBread(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Landroidx/test/espresso/action/MotionEvents;->upPressICS(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static sendCancel(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v10, 0x0

    .line 9
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 10
    invoke-interface {p0, v2}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 12
    sget-object p0, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const-string v5, "Injection of cancel event failed (corresponding down event: %s)"

    .line 13
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    :try_start_1
    new-instance v3, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "inject cancel event (corresponding down event: %s)"

    .line 17
    invoke-static {v4, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v3, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    const-string v0, "unknown"

    .line 19
    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 23
    :cond_3
    throw p0
.end method

.method public static sendDown(Landroidx/test/espresso/UiController;[F[F)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/test/espresso/action/MotionEvents;->sendDown(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;

    move-result-object p0

    return-object p0
.end method

.method public static sendDown(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
    .locals 15

    move-object v0, p0

    .line 2
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p1 .. p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static/range {p2 .. p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "unknown"

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    .line 6
    :try_start_0
    invoke-static/range {p1 .. p4}, Landroidx/test/espresso/action/MotionEvents;->obtainDownEvent([F[FII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    add-long/2addr v8, v6

    .line 9
    invoke-interface {p0, v4}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 10
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v11, v8, v11

    const-wide/16 v13, 0xa

    cmp-long v13, v11, v13

    if-gtz v13, :cond_2

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v6, v11

    cmp-long v6, v8, v6

    if-lez v6, :cond_0

    .line 17
    sget-object v6, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    const-string v7, "Overslept and turned a tap into a long press"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    move v5, v1

    :goto_2
    if-nez v10, :cond_1

    .line 19
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;

    invoke-direct {v0, v4, v5}, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;-><init>(Landroid/view/MotionEvent;Z)V

    return-object v0

    :cond_2
    const-wide/16 v13, 0x4

    .line 12
    div-long/2addr v11, v13

    invoke-interface {p0, v11, v12}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V
    :try_end_0
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    const-string v2, "Send down motion event"

    .line 24
    invoke-virtual {v1, v2}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    throw v0

    .line 28
    :cond_3
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v1, "click (after %s attempts)"

    invoke-static {v2, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    throw v0
.end method

.method public static sendMovement(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;[F)Z
    .locals 5

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-static {v3, v4, p2}, Landroidx/test/espresso/action/MotionEvents;->obtainMovement(J[F)Landroid/view/MotionEvent;

    move-result-object v0

    .line 6
    invoke-interface {p0, v0}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    sget-object p0, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "Injection of motion event failed (corresponding down event: %s)"

    .line 9
    invoke-static {p2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    :try_start_1
    new-instance p2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "inject motion event (corresponding down event: %s)"

    .line 13
    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    const-string p2, "unknown"

    .line 15
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 20
    :cond_3
    throw p0
.end method

.method public static sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {p0, p1, v0}, Landroidx/test/espresso/action/MotionEvents;->sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;[F)Z

    move-result p0

    return p0
.end method

.method public static sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;[F)Z
    .locals 5

    .line 2
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-static {p1, p2}, Landroidx/test/espresso/action/MotionEvents;->obtainUpEvent(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;

    move-result-object v0

    .line 7
    invoke-interface {p0, v0}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    sget-object p0, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "Injection of up event failed (corresponding down event: %s)"

    .line 10
    invoke-static {p2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    :try_start_1
    new-instance p2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "inject up event (corresponding down event: %s)"

    .line 14
    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    const-string p2, "unknown"

    .line 16
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 21
    :cond_3
    throw p0
.end method

.method private static upPressGingerBread(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 p0, 0x0

    aget v5, p1, p0

    const/4 p0, 0x1

    aget v6, p1, p0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method private static upPressICS(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;
    .locals 17

    const/4 v0, 0x1

    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 1
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v8, v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v1}, Landroidx/test/espresso/action/MotionEvents;->getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v7

    aget-object v1, v8, v2

    .line 3
    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v1, v8, v2

    .line 4
    aget v3, p1, v2

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v1, v8, v2

    .line 5
    aget v0, p1, v0

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v0, v8, v2

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v0, v8, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 14
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method
