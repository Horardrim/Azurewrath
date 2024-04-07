.class public final Landroidx/test/espresso/base/UiControllerImpl_Factory;
.super Ljava/lang/Object;
.source "UiControllerImpl_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/UiControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final asyncIdleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final compatIdleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dynamicIdleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/EventInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final idlingResourceRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final mainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/EventInjector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->eventInjectorProvider:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->asyncIdleProvider:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->compatIdleProvider:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->dynamicIdleProvider:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->idlingResourceRegistryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/UiControllerImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/EventInjector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ">;)",
            "Landroidx/test/espresso/base/UiControllerImpl_Factory;"
        }
    .end annotation

    .line 1
    new-instance v7, Landroidx/test/espresso/base/UiControllerImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/base/UiControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljavax/inject/Provider;Landroid/os/Looper;Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/UiControllerImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;>;",
            "Landroid/os/Looper;",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ")",
            "Landroidx/test/espresso/base/UiControllerImpl;"
        }
    .end annotation

    .line 1
    new-instance v7, Landroidx/test/espresso/base/UiControllerImpl;

    move-object v1, p0

    check-cast v1, Landroidx/test/espresso/base/EventInjector;

    move-object v2, p1

    check-cast v2, Landroidx/test/espresso/base/IdleNotifier;

    move-object v3, p2

    check-cast v3, Landroidx/test/espresso/base/IdleNotifier;

    move-object v0, v7

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/test/espresso/base/UiControllerImpl;-><init>(Landroidx/test/espresso/base/EventInjector;Landroidx/test/espresso/base/IdleNotifier;Landroidx/test/espresso/base/IdleNotifier;Ljavax/inject/Provider;Landroid/os/Looper;Landroidx/test/espresso/base/IdlingResourceRegistry;)V

    return-object v7
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/UiControllerImpl;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->eventInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->asyncIdleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->compatIdleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->dynamicIdleProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Looper;

    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl_Factory;->idlingResourceRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static/range {v1 .. v6}, Landroidx/test/espresso/base/UiControllerImpl_Factory;->newInstance(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljavax/inject/Provider;Landroid/os/Looper;Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/UiControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl_Factory;->get()Landroidx/test/espresso/base/UiControllerImpl;

    move-result-object v0

    return-object v0
.end method
