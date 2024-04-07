.class public Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
.super Ljava/lang/Object;
.source "AmbiguousViewMatcherException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/AmbiguousViewMatcherException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private includeViewHierarchy:Z

.field private others:[Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private view1:Landroid/view/View;

.field private view2:Landroid/view/View;

.field private viewMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->includeViewHierarchy:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Lorg/hamcrest/Matcher;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)[Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->includeViewHierarchy:Z

    return p0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/AmbiguousViewMatcherException;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Landroidx/test/espresso/AmbiguousViewMatcherException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/AmbiguousViewMatcherException;-><init>(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;Landroidx/test/espresso/AmbiguousViewMatcherException$1;)V

    return-object v0
.end method

.method public from(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$600(Landroidx/test/espresso/AmbiguousViewMatcherException;)Lorg/hamcrest/Matcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$700(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    .line 3
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$800(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    .line 4
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$900(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$1000(Landroidx/test/espresso/AmbiguousViewMatcherException;)[Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    return-object p0
.end method

.method public includeViewHierarchy(Z)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->includeViewHierarchy:Z

    return-object p0
.end method

.method public varargs withOtherAmbiguousViews([Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    return-object p0
.end method

.method public withRootView(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public withView1(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    return-object p0
.end method

.method public withView2(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    return-object p0
.end method

.method public withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method
