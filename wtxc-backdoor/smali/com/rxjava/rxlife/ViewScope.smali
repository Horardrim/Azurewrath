.class public final Lcom/rxjava/rxlife/ViewScope;
.super Ljava/lang/Object;
.source "ViewScope.java"

# interfaces
.implements Lcom/rxjava/rxlife/Scope;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final ignoreAttach:Z

.field private final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/rxjava/rxlife/ViewScope;->view:Landroid/view/View;

    .line 25
    iput-boolean p2, p0, Lcom/rxjava/rxlife/ViewScope;->ignoreAttach:Z

    return-void
.end method

.method static from(Landroid/view/View;Z)Lcom/rxjava/rxlife/ViewScope;
    .locals 1

    .line 34
    new-instance v0, Lcom/rxjava/rxlife/ViewScope;

    invoke-direct {v0, p0, p1}, Lcom/rxjava/rxlife/ViewScope;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method


# virtual methods
.method public onScopeEnd()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/rxjava/rxlife/ViewScope;->view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onScopeStart(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2

    .line 39
    iput-object p1, p0, Lcom/rxjava/rxlife/ViewScope;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 40
    iget-object p1, p0, Lcom/rxjava/rxlife/ViewScope;->view:Landroid/view/View;

    const-string v0, "view is null"

    .line 42
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 45
    iget-boolean v0, p0, Lcom/rxjava/rxlife/ViewScope;->ignoreAttach:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 46
    :cond_3
    new-instance p1, Lcom/rxjava/rxlife/OutsideScopeException;

    const-string v0, "View is not attached!"

    invoke-direct {p1, v0}, Lcom/rxjava/rxlife/OutsideScopeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_4
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/rxjava/rxlife/ViewScope;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
