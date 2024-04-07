.class public final Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;
.super Ljava/lang/Object;
.source "ViewInteractionModule_ProvideRemoteInteractionFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/remote/RemoteInteraction;",
        ">;"
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
    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    return-void
.end method

.method public static create(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;-><init>(Landroidx/test/espresso/ViewInteractionModule;)V

    return-object v0
.end method

.method public static provideRemoteInteraction(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/remote/RemoteInteraction;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule;->provideRemoteInteraction()Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/remote/RemoteInteraction;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/remote/RemoteInteraction;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->provideRemoteInteraction(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->get()Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object v0

    return-object v0
.end method
