.class public final Landroidx/test/espresso/action/ViewActions;
.super Ljava/lang/Object;
.source "ViewActions.java"


# static fields
.field private static final EDGE_FUZZ_FACTOR:F = 0.083f

.field private static globalAssertions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroidx/test/espresso/ViewAssertion;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    return-object v0
.end method

.method public static actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroidx/test/espresso/action/ViewActions$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/action/ViewActions$1;-><init>(Landroidx/test/espresso/ViewAction;)V

    return-object v0
.end method

.method public static addGlobalAssertion(Ljava/lang/String;Landroidx/test/espresso/ViewAssertion;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    sget-object p1, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "ViewAssertion with name %s is already in the global assertions!"

    .line 4
    invoke-static {p1, v1, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    sget-object p0, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearGlobalAssertions()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static clearText()Landroidx/test/espresso/ViewAction;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/action/ReplaceTextAction;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/test/espresso/action/ReplaceTextAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static click()Landroidx/test/espresso/ViewAction;
    .locals 7

    .line 1
    new-instance v6, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v1, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->VISIBLE_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v3, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V

    invoke-static {v6}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static click(II)Landroidx/test/espresso/ViewAction;
    .locals 8

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v3, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    sget-object v4, Landroidx/test/espresso/action/GeneralLocation;->VISIBLE_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v5, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    move-object v2, v0

    move v6, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static click(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;
    .locals 8

    .line 5
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v7, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v1, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v3, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;IILandroidx/test/espresso/ViewAction;)V

    invoke-static {v7}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static closeSoftKeyboard()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/action/CloseKeyboardAction;

    invoke-direct {v0}, Landroidx/test/espresso/action/CloseKeyboardAction;-><init>()V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static doubleClick()Landroidx/test/espresso/ViewAction;
    .locals 7

    .line 1
    new-instance v6, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v1, Landroidx/test/espresso/action/Tap;->DOUBLE:Landroidx/test/espresso/action/Tap;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v3, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V

    invoke-static {v6}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static longClick()Landroidx/test/espresso/ViewAction;
    .locals 7

    .line 1
    new-instance v6, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v1, Landroidx/test/espresso/action/Tap;->LONG:Landroidx/test/espresso/action/Tap;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v3, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V

    invoke-static {v6}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static openLink(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/test/espresso/ViewAction;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroidx/test/espresso/action/OpenLinkAction;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/action/OpenLinkAction;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static openLinkWithText(Ljava/lang/String;)Landroidx/test/espresso/ViewAction;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/action/ViewActions;->openLinkWithText(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static openLinkWithText(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/ViewAction;"
        }
    .end annotation

    const-class v0, Landroid/net/Uri;

    .line 2
    invoke-static {v0}, Lorg/hamcrest/Matchers;->any(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/test/espresso/action/ViewActions;->openLink(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static openLinkWithUri(Ljava/lang/String;)Landroidx/test/espresso/ViewAction;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/action/ViewActions;->openLinkWithUri(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static openLinkWithUri(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/test/espresso/ViewAction;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lorg/hamcrest/Matchers;->any(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/test/espresso/action/ViewActions;->openLink(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static pressBack()Landroidx/test/espresso/ViewAction;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/action/PressBackAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/test/espresso/action/PressBackAction;-><init>(Z)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static pressBackUnconditionally()Landroidx/test/espresso/ViewAction;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/action/PressBackAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/action/PressBackAction;-><init>(Z)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static pressImeActionButton()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/action/EditorAction;

    invoke-direct {v0}, Landroidx/test/espresso/action/EditorAction;-><init>()V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static pressKey(I)Landroidx/test/espresso/ViewAction;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/action/KeyEventAction;

    new-instance v1, Landroidx/test/espresso/action/EspressoKey$Builder;

    invoke-direct {v1}, Landroidx/test/espresso/action/EspressoKey$Builder;-><init>()V

    .line 2
    invoke-virtual {v1, p0}, Landroidx/test/espresso/action/EspressoKey$Builder;->withKeyCode(I)Landroidx/test/espresso/action/EspressoKey$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/test/espresso/action/EspressoKey$Builder;->build()Landroidx/test/espresso/action/EspressoKey;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/action/KeyEventAction;-><init>(Landroidx/test/espresso/action/EspressoKey;)V

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static pressKey(Landroidx/test/espresso/action/EspressoKey;)Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 3
    new-instance v0, Landroidx/test/espresso/action/KeyEventAction;

    invoke-direct {v0, p0}, Landroidx/test/espresso/action/KeyEventAction;-><init>(Landroidx/test/espresso/action/EspressoKey;)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static pressMenuKey()Landroidx/test/espresso/ViewAction;
    .locals 1

    const/16 v0, 0x52

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->pressKey(I)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static removeGlobalAssertion(Landroidx/test/espresso/ViewAssertion;)V
    .locals 5

    .line 2
    sget-object v0, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz p0, :cond_1

    .line 3
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    .line 4
    sget-object v2, Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "ViewAssertion was not in global assertions!"

    .line 6
    invoke-static {v2, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static repeatedlyUntil(Landroidx/test/espresso/ViewAction;Lorg/hamcrest/Matcher;I)Landroidx/test/espresso/ViewAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewAction;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;I)",
            "Landroidx/test/espresso/ViewAction;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroidx/test/espresso/action/RepeatActionUntilViewState;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/espresso/action/RepeatActionUntilViewState;-><init>(Landroidx/test/espresso/ViewAction;Lorg/hamcrest/Matcher;I)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static replaceText(Ljava/lang/String;)Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/action/ReplaceTextAction;

    invoke-direct {v0, p0}, Landroidx/test/espresso/action/ReplaceTextAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static scrollTo()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/action/ScrollToAction;

    invoke-direct {v0}, Landroidx/test/espresso/action/ScrollToAction;-><init>()V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static swipeDown()Landroidx/test/espresso/ViewAction;
    .locals 5

    .line 1
    new-instance v0, Landroidx/test/espresso/action/GeneralSwipeAction;

    sget-object v1, Landroidx/test/espresso/action/Swipe;->FAST:Landroidx/test/espresso/action/Swipe;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->TOP_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v3, 0x0

    const v4, 0x3da9fbe7    # 0.083f

    .line 2
    invoke-static {v2, v3, v4}, Landroidx/test/espresso/action/GeneralLocation;->translate(Landroidx/test/espresso/action/CoordinatesProvider;FF)Landroidx/test/espresso/action/CoordinatesProvider;

    move-result-object v2

    sget-object v3, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v4, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/test/espresso/action/GeneralSwipeAction;-><init>(Landroidx/test/espresso/action/Swiper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static swipeLeft()Landroidx/test/espresso/ViewAction;
    .locals 5

    .line 1
    new-instance v0, Landroidx/test/espresso/action/GeneralSwipeAction;

    sget-object v1, Landroidx/test/espresso/action/Swipe;->FAST:Landroidx/test/espresso/action/Swipe;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->CENTER_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    const v3, -0x42560419    # -0.083f

    const/4 v4, 0x0

    .line 2
    invoke-static {v2, v3, v4}, Landroidx/test/espresso/action/GeneralLocation;->translate(Landroidx/test/espresso/action/CoordinatesProvider;FF)Landroidx/test/espresso/action/CoordinatesProvider;

    move-result-object v2

    sget-object v3, Landroidx/test/espresso/action/GeneralLocation;->CENTER_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v4, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/test/espresso/action/GeneralSwipeAction;-><init>(Landroidx/test/espresso/action/Swiper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static swipeRight()Landroidx/test/espresso/ViewAction;
    .locals 5

    .line 1
    new-instance v0, Landroidx/test/espresso/action/GeneralSwipeAction;

    sget-object v1, Landroidx/test/espresso/action/Swipe;->FAST:Landroidx/test/espresso/action/Swipe;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->CENTER_LEFT:Landroidx/test/espresso/action/GeneralLocation;

    const v3, 0x3da9fbe7    # 0.083f

    const/4 v4, 0x0

    .line 2
    invoke-static {v2, v3, v4}, Landroidx/test/espresso/action/GeneralLocation;->translate(Landroidx/test/espresso/action/CoordinatesProvider;FF)Landroidx/test/espresso/action/CoordinatesProvider;

    move-result-object v2

    sget-object v3, Landroidx/test/espresso/action/GeneralLocation;->CENTER_RIGHT:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v4, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/test/espresso/action/GeneralSwipeAction;-><init>(Landroidx/test/espresso/action/Swiper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static swipeUp()Landroidx/test/espresso/ViewAction;
    .locals 5

    .line 1
    new-instance v0, Landroidx/test/espresso/action/GeneralSwipeAction;

    sget-object v1, Landroidx/test/espresso/action/Swipe;->FAST:Landroidx/test/espresso/action/Swipe;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->BOTTOM_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    const/4 v3, 0x0

    const v4, -0x42560419    # -0.083f

    .line 2
    invoke-static {v2, v3, v4}, Landroidx/test/espresso/action/GeneralLocation;->translate(Landroidx/test/espresso/action/CoordinatesProvider;FF)Landroidx/test/espresso/action/CoordinatesProvider;

    move-result-object v2

    sget-object v3, Landroidx/test/espresso/action/GeneralLocation;->TOP_CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v4, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/test/espresso/action/GeneralSwipeAction;-><init>(Landroidx/test/espresso/action/Swiper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V

    .line 1
    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static typeText(Ljava/lang/String;)Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/action/TypeTextAction;

    invoke-direct {v0, p0}, Landroidx/test/espresso/action/TypeTextAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method

.method public static typeTextIntoFocusedView(Ljava/lang/String;)Landroidx/test/espresso/ViewAction;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/action/TypeTextAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/action/TypeTextAction;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object p0

    return-object p0
.end method
