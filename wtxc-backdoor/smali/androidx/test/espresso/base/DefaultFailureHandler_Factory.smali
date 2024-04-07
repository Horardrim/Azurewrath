.class public final Landroidx/test/espresso/base/DefaultFailureHandler_Factory;
.super Ljava/lang/Object;
.source "DefaultFailureHandler_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/DefaultFailureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;->appContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/DefaultFailureHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroidx/test/espresso/base/DefaultFailureHandler_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Landroidx/test/espresso/base/DefaultFailureHandler;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/base/DefaultFailureHandler;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/DefaultFailureHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/DefaultFailureHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;->newInstance(Landroid/content/Context;)Landroidx/test/espresso/base/DefaultFailureHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;->get()Landroidx/test/espresso/base/DefaultFailureHandler;

    move-result-object v0

    return-object v0
.end method
