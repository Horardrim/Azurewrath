.class public abstract enum Landroidx/test/espresso/action/Swipe;
.super Ljava/lang/Enum;
.source "Swipe.java"

# interfaces
.implements Landroidx/test/espresso/action/Swiper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/action/Swipe;",
        ">;",
        "Landroidx/test/espresso/action/Swiper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/action/Swipe;

.field public static final enum FAST:Landroidx/test/espresso/action/Swipe;

.field public static final enum SLOW:Landroidx/test/espresso/action/Swipe;

.field private static final SWIPE_EVENT_COUNT:I = 0xa

.field private static final SWIPE_FAST_DURATION_MS:I = 0x96

.field private static final SWIPE_SLOW_DURATION_MS:I = 0x5dc

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/action/Swipe;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/espresso/action/Swipe;

    .line 1
    sget-object v1, Landroidx/test/espresso/action/Swipe;->FAST:Landroidx/test/espresso/action/Swipe;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/action/Swipe;->SLOW:Landroidx/test/espresso/action/Swipe;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/action/Swipe$1;

    const-string v1, "FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Swipe$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Swipe;->FAST:Landroidx/test/espresso/action/Swipe;

    .line 2
    new-instance v0, Landroidx/test/espresso/action/Swipe$2;

    const-string v1, "SLOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/action/Swipe$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/action/Swipe;->SLOW:Landroidx/test/espresso/action/Swipe;

    .line 3
    invoke-static {}, Landroidx/test/espresso/action/Swipe;->$values()[Landroidx/test/espresso/action/Swipe;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/Swipe;->$VALUES:[Landroidx/test/espresso/action/Swipe;

    const-string v0, "Swipe"

    .line 4
    sput-object v0, Landroidx/test/espresso/action/Swipe;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/action/Swipe$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/Swipe;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/UiController;[F[F[FI)Landroidx/test/espresso/action/Swiper$Status;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/test/espresso/action/Swipe;->sendLinearSwipe(Landroidx/test/espresso/UiController;[F[F[FI)Landroidx/test/espresso/action/Swiper$Status;

    move-result-object p0

    return-object p0
.end method

.method private static interpolate([F[FI)[[F
    .locals 11

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkElementIndex(II)I

    .line 2
    array-length v0, p1

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkElementIndex(II)I

    const/4 v0, 0x2

    new-array v2, v0, [I

    aput v0, v2, v1

    const/4 v0, 0x0

    aput p2, v2, v0

    .line 3
    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    move v3, v1

    :goto_0
    add-int/lit8 v4, p2, 0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, -0x1

    .line 5
    aget-object v5, v2, v4

    aget v6, p0, v0

    aget v7, p1, v0

    aget v8, p0, v0

    sub-float/2addr v7, v8

    int-to-float v8, v3

    mul-float/2addr v7, v8

    int-to-float v9, p2

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    aput v6, v5, v0

    .line 6
    aget-object v4, v2, v4

    aget v5, p0, v1

    aget v6, p1, v1

    aget v7, p0, v1

    sub-float/2addr v6, v7

    mul-float/2addr v6, v8

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    aput v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static sendLinearSwipe(Landroidx/test/espresso/UiController;[F[F[FI)Landroidx/test/espresso/action/Swiper$Status;
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 5
    invoke-static {p1, p2, v0}, Landroidx/test/espresso/action/Swipe;->interpolate([F[FI)[[F

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {p1, p3}, Landroidx/test/espresso/action/MotionEvents;->obtainDownEvent([F[F)Landroid/view/MotionEvent;

    move-result-object p1

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :try_start_0
    array-length p3, v0

    div-int/2addr p4, p3

    int-to-long p3, p4

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 11
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v0, v6

    add-long/2addr v2, p3

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    invoke-static {v8, v9, v2, v3, v7}, Landroidx/test/espresso/action/MotionEvents;->obtainMovement(JJ[F)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p3, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    const/4 v6, 0x1

    aget v7, p2, v5

    const/4 p1, 0x1

    aget v8, p2, p1

    const/4 v9, 0x0

    move-wide v4, p3

    .line 16
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {p0, v1}, Landroidx/test/espresso/UiController;->injectMotionEventSequence(Ljava/lang/Iterable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 25
    :cond_1
    sget-object p0, Landroidx/test/espresso/action/Swiper$Status;->SUCCESS:Landroidx/test/espresso/action/Swiper$Status;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 21
    :catch_0
    :try_start_1
    sget-object p0, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MotionEvent;

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :cond_2
    return-object p0

    .line 19
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MotionEvent;

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_4

    .line 24
    :cond_3
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/action/Swipe;
    .locals 1

    const-class v0, Landroidx/test/espresso/action/Swipe;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/action/Swipe;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/action/Swipe;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/Swipe;->$VALUES:[Landroidx/test/espresso/action/Swipe;

    invoke-virtual {v0}, [Landroidx/test/espresso/action/Swipe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/action/Swipe;

    return-object v0
.end method
