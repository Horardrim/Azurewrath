.class public final Landroidx/test/espresso/matcher/RootMatchers;
.super Ljava/lang/Object;
.source "RootMatchers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/matcher/RootMatchers$IsSubwindowOfCurrentActivity;,
        Landroidx/test/espresso/matcher/RootMatchers$HasWindowLayoutParams;,
        Landroidx/test/espresso/matcher/RootMatchers$HasWindowFocus;,
        Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;,
        Landroidx/test/espresso/matcher/RootMatchers$IsPlatformPopup;,
        Landroidx/test/espresso/matcher/RootMatchers$IsSystemAlertWindow;,
        Landroidx/test/espresso/matcher/RootMatchers$IsDialog;,
        Landroidx/test/espresso/matcher/RootMatchers$IsTouchable;,
        Landroidx/test/espresso/matcher/RootMatchers$IsFocusable;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RootMatchers"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->hasWindowLayoutParams()Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->isDialog()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->hasWindowFocus()Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/matcher/RootMatchers;->withDecorView(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    .line 3
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->isSubwindowOfCurrentActivity()Lorg/hamcrest/Matcher;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    .line 5
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->isFocusable()Lorg/hamcrest/Matcher;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/matcher/RootMatchers;->DEFAULT:Lorg/hamcrest/Matcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->getResumedActivityTokens()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getResumedActivityTokens()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    .line 3
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RootMatchers"

    const-string v2, "suppressed: NoActivityResumedException(\"At least one activity should be in RESUMED stage.\""

    .line 5
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 8
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static hasWindowFocus()Lorg/hamcrest/Matcher;
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
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$HasWindowFocus;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$HasWindowFocus;-><init>()V

    return-object v0
.end method

.method public static hasWindowLayoutParams()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$HasWindowLayoutParams;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$HasWindowLayoutParams;-><init>()V

    return-object v0
.end method

.method public static isDialog()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$IsDialog;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$IsDialog;-><init>()V

    return-object v0
.end method

.method public static isFocusable()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$IsFocusable;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$IsFocusable;-><init>()V

    return-object v0
.end method

.method public static isPlatformPopup()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$IsPlatformPopup;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$IsPlatformPopup;-><init>()V

    return-object v0
.end method

.method private static isSubwindowOfCurrentActivity()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$IsSubwindowOfCurrentActivity;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$IsSubwindowOfCurrentActivity;-><init>()V

    return-object v0
.end method

.method public static isSystemAlertWindow()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$IsSystemAlertWindow;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$IsSystemAlertWindow;-><init>()V

    return-object v0
.end method

.method public static isTouchable()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$IsTouchable;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/RootMatchers$IsTouchable;-><init>()V

    return-object v0
.end method

.method public static withDecorView(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;

    invoke-direct {v0, p0}, Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
