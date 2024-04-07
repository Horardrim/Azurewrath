.class public final Landroidx/test/espresso/action/GeneralClickAction;
.super Ljava/lang/Object;
.source "GeneralClickAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralClickAction"


# instance fields
.field private final buttonState:I

.field final coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

.field private final inputDevice:I

.field final precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

.field private final rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "Landroidx/test/espresso/ViewAction;",
            ">;"
        }
    .end annotation
.end field

.field final tapper:Landroidx/test/espresso/action/Tapper;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V

    return-void
.end method

.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V

    return-void
.end method

.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/test/espresso/action/GeneralClickAction;->coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    .line 7
    iput-object p1, p0, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    .line 8
    iput-object p3, p0, Landroidx/test/espresso/action/GeneralClickAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    .line 9
    iput p4, p0, Landroidx/test/espresso/action/GeneralClickAction;->inputDevice:I

    .line 10
    iput p5, p0, Landroidx/test/espresso/action/GeneralClickAction;->buttonState:I

    .line 11
    invoke-static {p6}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    return-void
.end method

.method public constructor <init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;Landroidx/test/espresso/ViewAction;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V

    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 2
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

    .line 2
    iget-object v1, p0, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/ViewAction;

    invoke-interface {v1}, Landroidx/test/espresso/ViewAction;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v9, "GeneralClickAction"

    const-string v10, "%s - At Coordinates: %d, %d and precision: %d, %d"

    .line 1
    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    invoke-interface {v2, v8}, Landroidx/test/espresso/action/CoordinatesProvider;->calculateCoordinates(Landroid/view/View;)[F

    move-result-object v11

    .line 2
    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    invoke-interface {v2}, Landroidx/test/espresso/action/PrecisionDescriber;->describePrecision()[F

    move-result-object v12

    .line 4
    sget-object v2, Landroidx/test/espresso/action/Tapper$Status;->FAILURE:Landroidx/test/espresso/action/Tapper$Status;

    const/4 v14, 0x0

    .line 5
    :goto_0
    sget-object v3, Landroidx/test/espresso/action/Tapper$Status;->SUCCESS:Landroidx/test/espresso/action/Tapper$Status;

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x2

    const/4 v7, 0x3

    const/16 v18, 0x1

    if-eq v2, v3, :cond_4

    if-ge v14, v7, :cond_4

    .line 6
    :try_start_0
    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    iget v6, v1, Landroidx/test/espresso/action/GeneralClickAction;->inputDevice:I

    iget v5, v1, Landroidx/test/espresso/action/GeneralClickAction;->buttonState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    move-object v4, v11

    move/from16 v19, v5

    move-object v5, v12

    move v13, v7

    move/from16 v7, v19

    :try_start_1
    invoke-interface/range {v2 .. v7}, Landroidx/test/espresso/action/Tapper;->sendTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;

    move-result-object v2

    .line 7
    invoke-static {v9, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "perform: "

    .line 8
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v15, [Ljava/lang/Object;

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/action/GeneralClickAction;->getDescription()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aget v6, v11, v7

    float-to-int v6, v6

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v18

    aget v6, v11, v18

    float-to-int v6, v6

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v17

    const/4 v6, 0x0

    aget v7, v12, v6

    float-to-int v6, v7

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    aget v6, v12, v18

    float-to-int v6, v6

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v16

    .line 14
    invoke-static {v4, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 8
    :goto_1
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    if-lez v3, :cond_2

    int-to-long v3, v3

    .line 18
    invoke-interface {v0, v3, v4}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 19
    :cond_2
    sget-object v3, Landroidx/test/espresso/action/Tapper$Status;->WARNING:Landroidx/test/espresso/action/Tapper$Status;

    if-ne v2, v3, :cond_3

    .line 20
    iget-object v3, v1, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    iget-object v3, v1, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/ViewAction;

    invoke-interface {v3, v0, v8}, Landroidx/test/espresso/ViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v13, v7

    .line 25
    :goto_2
    new-instance v2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v15, [Ljava/lang/Object;

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/action/GeneralClickAction;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aget v5, v11, v6

    float-to-int v5, v5

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v18

    aget v5, v11, v18

    float-to-int v5, v5

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v17

    aget v5, v12, v6

    float-to-int v5, v5

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    aget v5, v12, v18

    float-to-int v5, v5

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v16

    .line 31
    invoke-static {v3, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 33
    invoke-static/range {p2 .. p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v2, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    throw v0

    :cond_4
    move v13, v7

    .line 36
    :cond_5
    sget-object v3, Landroidx/test/espresso/action/Tapper$Status;->FAILURE:Landroidx/test/espresso/action/Tapper$Status;

    if-eq v2, v3, :cond_7

    .line 49
    iget-object v2, v1, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    sget-object v3, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    if-ne v2, v3, :cond_6

    instance-of v2, v8, Landroid/webkit/WebView;

    if-eqz v2, :cond_6

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    :cond_6
    return-void

    .line 37
    :cond_7
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/action/GeneralClickAction;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 39
    invoke-static/range {p2 .. p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget v6, v11, v5

    .line 40
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    aget v6, v11, v18

    .line 41
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v18

    aget v5, v12, v5

    .line 42
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v17

    aget v5, v12, v18

    .line 43
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v13

    iget-object v5, v1, Landroidx/test/espresso/action/GeneralClickAction;->tapper:Landroidx/test/espresso/action/Tapper;

    aput-object v5, v4, v16

    iget-object v5, v1, Landroidx/test/espresso/action/GeneralClickAction;->coordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    aput-object v5, v4, v15

    const/4 v5, 0x6

    iget-object v6, v1, Landroidx/test/espresso/action/GeneralClickAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 44
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, v1, Landroidx/test/espresso/action/GeneralClickAction;->rollbackAction:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    .line 45
    invoke-virtual {v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Couldn\'t click at: %s,%s precision: %s, %s . Tapper: %s coordinate provider: %s precision describer: %s. Tried %s times. With Rollback? %s"

    .line 46
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    throw v0
.end method
