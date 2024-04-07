.class public final Landroidx/test/espresso/action/AdapterDataLoaderAction;
.super Ljava/lang/Object;
.source "AdapterDataLoaderAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# instance fields
.field private adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

.field final adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

.field final atPosition:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final dataLock:Ljava/lang/Object;

.field final dataToLoadMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private performed:Z


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/util/EspressoOptional;Landroidx/test/espresso/action/AdapterViewProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataLock:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    .line 5
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/util/EspressoOptional;

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    .line 6
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterViewProtocol;

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    return-void
.end method


# virtual methods
.method public getAdaptedData()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    const-string v2, "perform hasn\'t beenViewFinderImpl called yet!"

    invoke-static {v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

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

    const-class v0, Landroid/widget/AdapterView;

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "load adapter data"

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 7

    .line 1
    move-object v0, p2

    check-cast v0, Landroid/widget/AdapterView;

    .line 2
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    invoke-interface {v2, v0}, Landroidx/test/espresso/action/AdapterViewProtocol;->getDataInAdapterView(Landroid/widget/AdapterView;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    .line 4
    iget-object v4, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v3}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 8
    new-instance v2, Lorg/hamcrest/StringDescription;

    invoke-direct {v2}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 9
    iget-object v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v3, v2}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, " contained values: "

    .line 11
    invoke-virtual {v2, p1}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 12
    iget-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    invoke-interface {p1, v0}, Landroidx/test/espresso/action/AdapterViewProtocol;->getDataInAdapterView(Landroid/widget/AdapterView;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/hamcrest/StringDescription;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 13
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroidx/test/espresso/action/AdapterDataLoaderAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 15
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x18

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No data found matching: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 18
    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_0
    iget-boolean v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "perform called 2x!"

    invoke-static {v3, v5}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 20
    iput-boolean v4, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    .line 21
    iget-object v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v3}, Landroidx/test/espresso/util/EspressoOptional;->isPresent()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 23
    iget-object v6, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v6}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v3, :cond_4

    .line 32
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {p2}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    iput-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    goto :goto_2

    .line 24
    :cond_4
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 25
    invoke-virtual {p0}, Landroidx/test/espresso/action/AdapterDataLoaderAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 26
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "There are only %d elements that matched but requested %d element."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    iget-object v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    .line 28
    invoke-virtual {v3}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v4

    .line 29
    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 34
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 42
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    iput-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    .line 43
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_3
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol;->isDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)Z

    move-result p2

    if-nez p2, :cond_8

    if-le v5, v4, :cond_6

    .line 47
    rem-int/lit8 p2, v5, 0x32

    if-nez p2, :cond_7

    .line 48
    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    .line 49
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol;->makeDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)V

    goto :goto_4

    .line 50
    :cond_6
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol;->makeDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)V

    :cond_7
    :goto_4
    const-wide/16 v1, 0x64

    .line 51
    invoke-interface {p1, v1, v2}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    return-void

    .line 35
    :cond_9
    :try_start_1
    new-instance p1, Lorg/hamcrest/StringDescription;

    invoke-direct {p1}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 36
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 37
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroidx/test/espresso/action/AdapterDataLoaderAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 39
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Multiple data elements matched: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Elements: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
