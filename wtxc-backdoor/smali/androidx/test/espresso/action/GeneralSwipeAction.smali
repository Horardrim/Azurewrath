.class public final Landroidx/test/espresso/action/GeneralSwipeAction;
.super Ljava/lang/Object;
.source "GeneralSwipeAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# static fields
.field private static final MAX_TRIES:I = 0x3

.field private static final VIEW_DISPLAY_PERCENTAGE:I = 0x5a


# instance fields
.field final endCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

.field final precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

.field final startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

.field final swiper:Landroidx/test/espresso/action/Swiper;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/action/Swiper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    .line 4
    iput-object p3, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->endCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    .line 5
    iput-object p4, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x5a

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    invoke-interface {v0, p2}, Landroidx/test/espresso/action/CoordinatesProvider;->calculateCoordinates(Landroid/view/View;)[F

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->endCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    invoke-interface {v1, p2}, Landroidx/test/espresso/action/CoordinatesProvider;->calculateCoordinates(Landroid/view/View;)[F

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    invoke-interface {v2}, Landroidx/test/espresso/action/PrecisionDescriber;->describePrecision()[F

    move-result-object v2

    .line 5
    sget-object v3, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 4
    sget-object v7, Landroidx/test/espresso/action/Swiper$Status;->SUCCESS:Landroidx/test/espresso/action/Swiper$Status;

    if-eq v3, v7, :cond_1

    .line 6
    :try_start_0
    iget-object v3, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    invoke-interface {v3, p1, v0, v1, v2}, Landroidx/test/espresso/action/Swiper;->sendSwipe(Landroidx/test/espresso/UiController;[F[F[F)Landroidx/test/espresso/action/Swiper$Status;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    if-lez v6, :cond_0

    int-to-long v6, v6

    .line 10
    invoke-interface {p1, v6, v7}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroidx/test/espresso/action/GeneralSwipeAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 14
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 17
    :cond_1
    sget-object p1, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;

    if-eq v3, p1, :cond_2

    return-void

    .line 18
    :cond_2
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 19
    invoke-virtual {p0}, Landroidx/test/espresso/action/GeneralSwipeAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 20
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    aget v7, v0, v4

    .line 21
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v7, 0x1

    aget v0, v0, v7

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v0, 0x2

    aget v8, v1, v4

    .line 23
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v0

    aget v0, v1, v7

    .line 24
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    aget v1, v2, v4

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aget v1, v2, v7

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    aput-object v1, v5, v0

    const/4 v0, 0x7

    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    aput-object v1, v5, v0

    const/16 v0, 0x8

    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    aput-object v1, v5, v0

    const/16 v0, 0x9

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Couldn\'t swipe from: %s,%s to: %s,%s precision: %s, %s . Swiper: %s start coordinate provider: %s precision describer: %s. Tried %s times"

    .line 28
    invoke-static {v3, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1
.end method
