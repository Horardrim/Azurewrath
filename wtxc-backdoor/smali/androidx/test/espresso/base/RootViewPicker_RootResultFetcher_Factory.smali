.class public final Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;
.super Ljava/lang/Object;
.source "RootViewPicker_RootResultFetcher_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeRootListerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            ">;"
        }
    .end annotation
.end field

.field private final rootMatcherRefProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->activeRootListerProvider:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->rootMatcherRefProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;)",
            "Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/test/espresso/base/ActiveRootLister;Ljava/util/concurrent/atomic/AtomicReference;)Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;)",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;-><init>(Landroidx/test/espresso/base/ActiveRootLister;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->activeRootListerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/ActiveRootLister;

    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->rootMatcherRefProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->newInstance(Landroidx/test/espresso/base/ActiveRootLister;Ljava/util/concurrent/atomic/AtomicReference;)Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->get()Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    move-result-object v0

    return-object v0
.end method
