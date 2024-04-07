.class public final Lcom/rxjava/rxlife/RxLife;
.super Ljava/lang/Object;
.source "RxLife.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static as(Landroid/view/View;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static as(Landroid/view/View;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-static {p0, p1}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static as(Landroidx/lifecycle/LifecycleOwner;)Lcom/rxjava/rxlife/RxConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static as(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-static {p0, p1, v0}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method private static as(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .line 150
    invoke-static {p0, p1}, Lcom/rxjava/rxlife/LifecycleScope;->from(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)Lcom/rxjava/rxlife/LifecycleScope;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static as(Lcom/rxjava/rxlife/Scope;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rxjava/rxlife/Scope;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method private static as(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rxjava/rxlife/Scope;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    invoke-static {p0, p1}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static asOnMain(Landroid/view/View;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static asOnMain(Landroid/view/View;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-static {p0, p1}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static asOnMain(Landroidx/lifecycle/LifecycleOwner;)Lcom/rxjava/rxlife/RxConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static asOnMain(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 146
    invoke-static {p0, p1, v0}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static asOnMain(Lcom/rxjava/rxlife/Scope;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rxjava/rxlife/Scope;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 198
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static dispose(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 114
    invoke-static {p0}, Lcom/rxjava/rxlife/RxLife;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 118
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static to(Landroid/view/View;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static to(Landroid/view/View;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static to(Landroidx/lifecycle/LifecycleOwner;)Lcom/rxjava/rxlife/RxConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method private static to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/rxjava/rxlife/LifecycleScope;->from(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)Lcom/rxjava/rxlife/LifecycleScope;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lcom/rxjava/rxlife/Scope;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rxjava/rxlife/Scope;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method private static to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rxjava/rxlife/Scope;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/rxjava/rxlife/RxLife$1;

    invoke-direct {v0, p0, p1}, Lcom/rxjava/rxlife/RxLife$1;-><init>(Lcom/rxjava/rxlife/Scope;Z)V

    return-object v0
.end method

.method public static toMain(Landroid/view/View;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static toMain(Landroid/view/View;Z)Lcom/rxjava/rxlife/RxConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Z)",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .line 67
    invoke-static {p0, p1}, Lcom/rxjava/rxlife/ViewScope;->from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static toMain(Landroidx/lifecycle/LifecycleOwner;)Lcom/rxjava/rxlife/RxConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    .line 33
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static toMain(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 37
    invoke-static {p0, p1, v0}, Lcom/rxjava/rxlife/RxLife;->to(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method

.method public static toMain(Lcom/rxjava/rxlife/Scope;)Lcom/rxjava/rxlife/RxConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rxjava/rxlife/Scope;",
            ")",
            "Lcom/rxjava/rxlife/RxConverter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-static {p0, v0}, Lcom/rxjava/rxlife/RxLife;->to(Lcom/rxjava/rxlife/Scope;Z)Lcom/rxjava/rxlife/RxConverter;

    move-result-object p0

    return-object p0
.end method
