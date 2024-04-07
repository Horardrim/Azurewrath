.class final synthetic Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$$Lambda$0;
.super Ljava/lang/Object;
.source "ViewMatchers.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;


# instance fields
.field private final arg$1:Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;

.field private final arg$2:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$$Lambda$0;->arg$1:Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;

    iput-object p2, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$$Lambda$0;->arg$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$$Lambda$0;->arg$1:Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;

    iget-object v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$$Lambda$0;->arg$2:Landroid/view/View;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;->lambda$matchesSafely$0$ViewMatchers$HasDescendantMatcher(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
