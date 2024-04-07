.class final Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithEffectiveVisibilityMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)V
    .locals 0
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "view has effective visibility "

    .line 1
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected matchesSafely(Landroid/view/View;Lorg/hamcrest/Description;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v0}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_0

    const-string v0, "ancestor "

    .line 11
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 12
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p2

    const-string v0, "\'s getVisibility() was "

    .line 13
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 14
    invoke-static {p1}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->forViewVisibility(Landroid/view/View;)Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return v1

    :cond_1
    return v2

    :cond_2
    const-string v0, "view.getVisibility() was "

    .line 4
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->forViewVisibility(Landroid/view/View;)Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return v1

    .line 17
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_6

    .line 19
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_4

    return v2

    :cond_5
    const-string p1, "neither view nor its ancestors have getVisibility() set to "

    .line 24
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object p2, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 25
    invoke-interface {p1, p2}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return v1

    :cond_6
    return v2
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 27
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->matchesSafely(Landroid/view/View;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method
