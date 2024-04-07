.class public final Landroidx/test/espresso/action/TypeTextAction;
.super Ljava/lang/Object;
.source "TypeTextAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "TypeTextAction"


# instance fields
.field final clickAction:Landroidx/test/espresso/action/GeneralClickAction;

.field final stringToBeTyped:Ljava/lang/String;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field

.field final tapToFocus:Z
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/test/espresso/action/TypeTextAction;->defaultClickAction()Landroidx/test/espresso/action/GeneralClickAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/test/espresso/action/TypeTextAction;-><init>(Ljava/lang/String;ZLandroidx/test/espresso/action/GeneralClickAction;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/TypeTextAction;-><init>(Ljava/lang/String;ZLandroidx/test/espresso/action/GeneralClickAction;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroidx/test/espresso/action/GeneralClickAction;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    .line 8
    iput-boolean p2, p0, Landroidx/test/espresso/action/TypeTextAction;->tapToFocus:Z

    .line 9
    iput-object p3, p0, Landroidx/test/espresso/action/TypeTextAction;->clickAction:Landroidx/test/espresso/action/GeneralClickAction;

    return-void
.end method

.method private static defaultClickAction()Landroidx/test/espresso/action/GeneralClickAction;
    .locals 7

    .line 1
    new-instance v6, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v1, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    sget-object v2, Landroidx/test/espresso/action/GeneralLocation;->CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v3, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V

    return-object v6
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/hamcrest/Matcher;

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/hamcrest/Matchers;->allOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Landroidx/test/espresso/action/TypeTextAction;->tapToFocus:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->hasFocus()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 5
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->supportsInputMethods()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->supportsInputMethods()Lorg/hamcrest/Matcher;

    move-result-object v1

    const-class v2, Landroid/widget/SearchView;

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "type text(%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 4

    const-string v0, "Failed to type text: "

    .line 1
    iget-object v1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Landroidx/test/espresso/action/TypeTextAction;->TAG:Ljava/lang/String;

    const-string p2, "Supplied string is empty resulting in no-op (nothing is typed)."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Landroidx/test/espresso/action/TypeTextAction;->tapToFocus:Z

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/test/espresso/action/TypeTextAction;->clickAction:Landroidx/test/espresso/action/GeneralClickAction;

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Landroidx/test/espresso/action/TypeTextAction;->defaultClickAction()Landroidx/test/espresso/action/GeneralClickAction;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/test/espresso/action/GeneralClickAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroidx/test/espresso/action/GeneralClickAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 8
    :goto_0
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 9
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroidx/test/espresso/UiController;->injectString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 11
    sget-object p1, Landroidx/test/espresso/action/TypeTextAction;->TAG:Ljava/lang/String;

    iget-object v1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroidx/test/espresso/action/TypeTextAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 14
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 18
    sget-object v1, Landroidx/test/espresso/action/TypeTextAction;->TAG:Ljava/lang/String;

    iget-object v2, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroidx/test/espresso/action/TypeTextAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 21
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1
.end method
