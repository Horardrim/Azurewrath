.class public final Landroidx/test/espresso/assertion/ViewAssertions;
.super Ljava/lang/Object;
.source "ViewAssertions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;,
        Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;,
        Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewAssertions"


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

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/assertion/ViewAssertions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static doesNotExist()Landroidx/test/espresso/ViewAssertion;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;-><init>(Landroidx/test/espresso/assertion/ViewAssertions$1;)V

    return-object v0
.end method

.method public static matches(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/ViewAssertion;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/ViewAssertions$1;)V

    return-object v0
.end method

.method public static selectedDescendantsMatch(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/ViewAssertion;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/ViewAssertions$1;)V

    return-object v0
.end method
