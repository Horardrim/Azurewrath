.class Landroidx/test/espresso/base/RootViewPicker$RootResults;
.super Ljava/lang/Object;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
    }
.end annotation


# instance fields
.field private final allRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation
.end field

.field private final pickedRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation
.end field

.field private final rootSelector:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->allRoots:Ljava/util/List;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    .line 4
    iput-object p3, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->rootSelector:Lorg/hamcrest/Matcher;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/hamcrest/Matcher;Landroidx/test/espresso/base/RootViewPicker$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/base/RootViewPicker$RootResults;-><init>(Ljava/util/List;Ljava/util/List;Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/base/RootViewPicker$RootResults;)Lorg/hamcrest/Matcher;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->rootSelector:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/base/RootViewPicker$RootResults;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->allRoots:Ljava/util/List;

    return-object p0
.end method

.method private getRootFromMultipleRoots()Landroidx/test/espresso/Root;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/Root;

    .line 2
    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/Root;

    .line 4
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->isDialog()Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 5
    :cond_1
    invoke-static {v0, v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->isTopmostRoot(Landroidx/test/espresso/Root;Landroidx/test/espresso/Root;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static isTopmostRoot(Landroidx/test/espresso/Root;Landroidx/test/espresso/Root;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getWindowLayoutParams()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/Root;->getWindowLayoutParams()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getPickedRoot()Landroidx/test/espresso/Root;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2
    invoke-static {}, Landroidx/test/espresso/base/RootViewPicker;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    aput-object v3, v2, v1

    const-string v1, "Multiple root windows detected: %s"

    invoke-static {v0, v1, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getRootFromMultipleRoots()Landroidx/test/espresso/Root;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/Root;

    return-object v0
.end method

.method public getState()Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->allRoots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PRESENT:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResults;->pickedRoots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object v0
.end method
