.class public final Landroidx/test/espresso/action/KeyEventAction;
.super Landroidx/test/espresso/action/KeyEventActionBase;
.source "KeyEventAction.java"


# direct methods
.method public constructor <init>(Landroidx/test/espresso/action/EspressoKey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/espresso/action/KeyEventActionBase;-><init>(Landroidx/test/espresso/action/EspressoKey;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConstraints()Lorg/hamcrest/Matcher;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/test/espresso/action/KeyEventActionBase;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/test/espresso/action/KeyEventActionBase;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/test/espresso/action/KeyEventAction;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/test/espresso/action/KeyEventActionBase;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 3
    iget-object p2, p0, Landroidx/test/espresso/action/KeyEventAction;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    invoke-virtual {p2}, Landroidx/test/espresso/action/EspressoKey;->getKeyCode()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 4
    invoke-static {p1, v0}, Landroidx/test/espresso/action/KeyEventAction;->waitForStageChangeInitialActivity(Landroidx/test/espresso/UiController;Landroid/app/Activity;)V

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p2}, Landroidx/test/espresso/action/KeyEventAction;->waitForPendingForegroundActivities(Landroidx/test/espresso/UiController;Z)V

    :cond_0
    return-void
.end method
