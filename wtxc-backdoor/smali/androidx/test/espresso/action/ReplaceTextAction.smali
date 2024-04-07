.class public final Landroidx/test/espresso/action/ReplaceTextAction;
.super Ljava/lang/Object;
.source "ReplaceTextAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# instance fields
.field final stringToBeSet:Ljava/lang/String;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/test/espresso/action/ReplaceTextAction;->stringToBeSet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v0

    const-class v1, Landroid/widget/EditText;

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

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

    iget-object v2, p0, Landroidx/test/espresso/action/ReplaceTextAction;->stringToBeSet:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "replace text(%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/EditText;

    iget-object p1, p0, Landroidx/test/espresso/action/ReplaceTextAction;->stringToBeSet:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
