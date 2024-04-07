.class Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;
.super Ljava/lang/Object;
.source "Espresso.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/Espresso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionBridgingViewAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/Espresso$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;-><init>()V

    return-void
.end method

.method private isTransitioningBetweenActionBars(Landroid/view/View;)Z
    .locals 4

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/util/TreeIterables;->breadthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-static {}, Landroidx/test/espresso/Espresso;->access$200()Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-le v1, p1, :cond_2

    move v0, p1

    :cond_2
    return v0
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

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Handle transition between action bar and action bar context."

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, p2}, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;->isTransitioningBetweenActionBars(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x32

    .line 4
    invoke-interface {p1, v1, v2}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
