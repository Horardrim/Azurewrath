.class final Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;
.super Landroidx/test/espresso/matcher/BoundedDiagnosingMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsJavascriptEnabledMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedDiagnosingMatcher<",
        "Landroid/view/View;",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    const-class v0, Landroid/webkit/WebView;

    .line 1
    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedDiagnosingMatcher;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method protected describeMoreTo(Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "webView.getSettings().getJavaScriptEnabled() is "

    .line 1
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method protected matchesSafely(Landroid/webkit/WebView;Lorg/hamcrest/Description;)Z
    .locals 1

    const-string v0, "webView.getSettings().getJavaScriptEnabled() was "

    .line 2
    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 0

    .line 5
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;->matchesSafely(Landroid/webkit/WebView;Lorg/hamcrest/Description;)Z

    move-result p1

    return p1
.end method
