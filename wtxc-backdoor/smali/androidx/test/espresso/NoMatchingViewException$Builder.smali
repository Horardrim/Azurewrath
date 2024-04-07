.class public Landroidx/test/espresso/NoMatchingViewException$Builder;
.super Ljava/lang/Object;
.source "NoMatchingViewException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/NoMatchingViewException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adapterViewWarning:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adapterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private cause:Ljava/lang/Throwable;

.field private includeViewHierarchy:Z

.field private rootView:Landroid/view/View;

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

    .line 2
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViews:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->includeViewHierarchy:Z

    .line 4
    invoke-static {}, Landroidx/test/espresso/util/EspressoOptional;->absent()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViewWarning:Landroidx/test/espresso/util/EspressoOptional;

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/NoMatchingViewException$Builder;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/NoMatchingViewException$Builder;)Lorg/hamcrest/Matcher;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/NoMatchingViewException$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/test/espresso/NoMatchingViewException$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/NoMatchingViewException$Builder;)Landroidx/test/espresso/util/EspressoOptional;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViewWarning:Landroidx/test/espresso/util/EspressoOptional;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/test/espresso/NoMatchingViewException$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->includeViewHierarchy:Z

    return p0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/NoMatchingViewException;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViews:Ljava/util/List;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViewWarning:Landroidx/test/espresso/util/EspressoOptional;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Landroidx/test/espresso/NoMatchingViewException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/NoMatchingViewException;-><init>(Landroidx/test/espresso/NoMatchingViewException$Builder;Landroidx/test/espresso/NoMatchingViewException$1;)V

    return-object v0
.end method

.method public from(Landroidx/test/espresso/NoMatchingViewException;)Landroidx/test/espresso/NoMatchingViewException$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/test/espresso/NoMatchingViewException;->access$600(Landroidx/test/espresso/NoMatchingViewException;)Lorg/hamcrest/Matcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/NoMatchingViewException;->access$700(Landroidx/test/espresso/NoMatchingViewException;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->rootView:Landroid/view/View;

    .line 3
    invoke-static {p1}, Landroidx/test/espresso/NoMatchingViewException;->access$800(Landroidx/test/espresso/NoMatchingViewException;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViews:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroidx/test/espresso/NoMatchingViewException;->access$900(Landroidx/test/espresso/NoMatchingViewException;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViewWarning:Landroidx/test/espresso/util/EspressoOptional;

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/NoMatchingViewException;->access$1000(Landroidx/test/espresso/NoMatchingViewException;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->includeViewHierarchy:Z

    return-object p0
.end method

.method public includeViewHierarchy(Z)Landroidx/test/espresso/NoMatchingViewException$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->includeViewHierarchy:Z

    return-object p0
.end method

.method public withAdapterViewWarning(Landroidx/test/espresso/util/EspressoOptional;)Landroidx/test/espresso/NoMatchingViewException$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/NoMatchingViewException$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViewWarning:Landroidx/test/espresso/util/EspressoOptional;

    return-object p0
.end method

.method public withAdapterViews(Ljava/util/List;)Landroidx/test/espresso/NoMatchingViewException$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/NoMatchingViewException$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->adapterViews:Ljava/util/List;

    return-object p0
.end method

.method public withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/NoMatchingViewException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public withRootView(Landroid/view/View;)Landroidx/test/espresso/NoMatchingViewException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/NoMatchingViewException$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/NoMatchingViewException$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/NoMatchingViewException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method
