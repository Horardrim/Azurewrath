.class public final Landroidx/test/espresso/Root;
.super Ljava/lang/Object;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/Root$Builder;
    }
.end annotation


# instance fields
.field private final decorView:Landroid/view/View;

.field private final windowLayoutParams:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/Root$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/Root$Builder;->access$000(Landroidx/test/espresso/Root$Builder;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    .line 3
    invoke-static {p1}, Landroidx/test/espresso/Root$Builder;->access$100(Landroidx/test/espresso/Root$Builder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/util/EspressoOptional;->fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/Root;->windowLayoutParams:Landroidx/test/espresso/util/EspressoOptional;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/Root$Builder;Landroidx/test/espresso/Root$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroidx/test/espresso/Root;-><init>(Landroidx/test/espresso/Root$Builder;)V

    return-void
.end method


# virtual methods
.method public getDecorView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowLayoutParams()Landroidx/test/espresso/util/EspressoOptional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/Root;->windowLayoutParams:Landroidx/test/espresso/util/EspressoOptional;

    return-object v0
.end method

.method public isReady()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/Root;->windowLayoutParams:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v0}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3
    iget-object v2, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "application-window-token"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "window-token"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    const-string v2, "has-window-focus"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroidx/test/espresso/Root;->windowLayoutParams:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v1}, Landroidx/test/espresso/util/EspressoOptional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Landroidx/test/espresso/Root;->windowLayoutParams:Landroidx/test/espresso/util/EspressoOptional;

    .line 8
    invoke-virtual {v1}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v2, "layout-params-type"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/espresso/Root;->windowLayoutParams:Landroidx/test/espresso/util/EspressoOptional;

    .line 9
    invoke-virtual {v2}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "layout-params-string"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/test/espresso/Root;->decorView:Landroid/view/View;

    invoke-static {v1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "decor-view-string"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 11
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
