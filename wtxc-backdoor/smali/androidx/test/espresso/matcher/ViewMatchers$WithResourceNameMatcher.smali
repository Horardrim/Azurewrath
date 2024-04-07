.class final Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithResourceNameMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final stringMatcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "view.getId()\'s resource name should match "

    .line 2
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    .line 3
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected matchesSafely(Landroid/view/View;Lorg/hamcrest/Description;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string p1, "view.getId() was View.NO_ID"

    .line 3
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "view.getResources() was null, can\'t resolve resource name"

    .line 6
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return v1

    .line 8
    :cond_1
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->access$4300(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "view.getId() was generated by a call to View.generateViewId()"

    .line 9
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return v1

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v2, p1}, Landroidx/test/espresso/matcher/ViewMatchers;->access$4400(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "view.getId() was "

    .line 14
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string p2, " which fails to resolve resource name"

    .line 16
    invoke-interface {p1, p2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return v1

    .line 18
    :cond_3
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "view.getId() was <"

    .line 20
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 21
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string p2, ">"

    .line 22
    invoke-interface {p1, p2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 25
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->matchesSafely(Landroid/view/View;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method