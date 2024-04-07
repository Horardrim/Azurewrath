.class public final Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;
.super Ljava/lang/Object;
.source "ViewInteractionModule_ProvideRootMatcherFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/hamcrest/Matcher<",
        "Landroidx/test/espresso/Root;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/ViewInteractionModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/ViewInteractionModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    return-void
.end method

.method public static create(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;-><init>(Landroidx/test/espresso/ViewInteractionModule;)V

    return-object v0
.end method

.method public static provideRootMatcher(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewInteractionModule;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule;->provideRootMatcher()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->get()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->provideRootMatcher(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method
