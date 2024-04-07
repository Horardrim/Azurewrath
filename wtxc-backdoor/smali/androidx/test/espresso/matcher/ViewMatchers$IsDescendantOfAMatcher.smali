.class final Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsDescendantOfAMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final ancestorMatcher:Lorg/hamcrest/Matcher;
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
.method private constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->ancestorMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method private checkAncestors(Landroid/view/ViewParent;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->ancestorMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->checkAncestors(Landroid/view/ViewParent;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "is descendant of a view matching "

    .line 2
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->ancestorMatcher:Lorg/hamcrest/Matcher;

    .line 3
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected matchesSafely(Landroid/view/View;Lorg/hamcrest/Description;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->checkAncestors(Landroid/view/ViewParent;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string v0, "none of the ancestors match "

    .line 4
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->ancestorMatcher:Lorg/hamcrest/Matcher;

    .line 5
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    :cond_0
    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 7
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->matchesSafely(Landroid/view/View;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method