.class final Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;
.super Landroidx/test/espresso/matcher/BoundedDiagnosingMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithSpinnerTextMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedDiagnosingMatcher<",
        "Landroid/view/View;",
        "Landroid/widget/Spinner;",
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
    .locals 1
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

    const-class v0, Landroid/widget/Spinner;

    .line 1
    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedDiagnosingMatcher;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method protected describeMoreTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "spinner.getSelectedItem().toString() to match "

    .line 2
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    .line 3
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected matchesSafely(Landroid/widget/Spinner;Lorg/hamcrest/Description;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "spinner.getSelectedItem() was null"

    .line 3
    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "spinner.getSelectedItem().toString() was "

    .line 6
    invoke-interface {p2, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 8
    iget-object p2, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 9
    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;->matchesSafely(Landroid/widget/Spinner;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method
