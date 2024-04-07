.class final Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;
.super Ljava/lang/Object;
.source "AdapterViewProtocols.java"

# interfaces
.implements Landroidx/test/espresso/action/AdapterViewProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/AdapterViewProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StandardAdapterViewProtocol"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StdAdapterViewProtocol"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isElementFullyRendered(Landroid/widget/AdapterView;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x5a

    .line 2
    invoke-static {p2}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getDataInAdapterView(Landroid/widget/AdapterView;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    new-instance v3, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;-><init>()V

    new-instance v4, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v1, v5}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;-><init>(Ljava/lang/Object;ILandroidx/test/espresso/action/AdapterViewProtocols$1;)V

    .line 5
    invoke-virtual {v3, v4}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withDataFunction(Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object v2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withOpaqueToken(Ljava/lang/Object;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->build()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDataRenderedByView(Landroid/widget/AdapterView;Landroid/view/View;)Landroidx/test/espresso/util/EspressoOptional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 4
    new-instance v0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;-><init>()V

    new-instance v1, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;-><init>(Ljava/lang/Object;ILandroidx/test/espresso/action/AdapterViewProtocols$1;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withDataFunction(Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withOpaqueToken(Ljava/lang/Object;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->build()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroidx/test/espresso/util/EspressoOptional;->of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Landroidx/test/espresso/util/EspressoOptional;->absent()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    return-object p1
.end method

.method public isDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    const-string v1, "Not my data: %s"

    invoke-static {v0, v1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p2, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;->isElementFullyRendered(Landroid/widget/AdapterView;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_2
    return v0
.end method

.method public makeDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    const-string v1, "Not my data: %s"

    invoke-static {v0, v1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p2, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-le v0, v3, :cond_3

    .line 5
    instance-of v0, p1, Landroid/widget/AbsListView;

    const/16 v3, 0xa

    if-eqz v0, :cond_1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_0

    .line 7
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0, p2, v4, v2}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :goto_0
    move v2, v1

    .line 11
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_3

    .line 12
    instance-of v0, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v0, :cond_3

    .line 13
    instance-of v0, p1, Landroid/widget/AdapterViewFlipper;

    if-eqz v0, :cond_2

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Landroid/widget/AdapterViewFlipper;->stopFlipping()V

    .line 15
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0, p2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_4
    return-void
.end method
