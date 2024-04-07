.class Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;
.super Ljava/lang/Object;
.source "ViewAssertions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAssertion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/assertion/ViewAssertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectedDescendantsMatchViewAssertion"
.end annotation


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;->selector:Lorg/hamcrest/Matcher;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;->matcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/ViewAssertions$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;)Lorg/hamcrest/Matcher;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;->selector:Lorg/hamcrest/Matcher;

    return-object p0
.end method


# virtual methods
.method public check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p2, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion$1;

    invoke-direct {p2, p0}, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion$1;-><init>(Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;)V

    .line 3
    invoke-static {p1}, Landroidx/test/espresso/util/TreeIterables;->breadthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->filter(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7
    iget-object v2, p0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v2, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    return-void

    .line 11
    :cond_2
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;->matcher:Lorg/hamcrest/Matcher;

    aput-object v3, v1, v2

    const-string v2, "At least one view did not match the required matcher: %s"

    .line 12
    invoke-static {p2, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "****DOES NOT MATCH****"

    .line 13
    invoke-static {p1, v0, p2, v1}, Landroidx/test/espresso/util/HumanReadables;->getViewHierarchyErrorMessage(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljunit/framework/AssertionFailedError;

    invoke-direct {p2, p1}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;->selector:Lorg/hamcrest/Matcher;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;->matcher:Lorg/hamcrest/Matcher;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "SelectedDescendantsMatchViewAssertion{selector=%s, matcher=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
