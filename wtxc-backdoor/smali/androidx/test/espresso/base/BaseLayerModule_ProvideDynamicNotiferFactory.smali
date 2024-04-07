.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideDynamicNotiferFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/IdleNotifier<",
        "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final dynamicRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Landroidx/test/espresso/base/BaseLayerModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 3
    iput-object p2, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;->dynamicRegistryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDynamicNotifer(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdleNotifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ")",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/BaseLayerModule;->provideDynamicNotifer(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdleNotifier;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/IdleNotifier;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/IdleNotifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;->dynamicRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;->provideDynamicNotifer(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdleNotifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDynamicNotiferFactory;->get()Landroidx/test/espresso/base/IdleNotifier;

    move-result-object v0

    return-object v0
.end method
