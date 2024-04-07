.class public final Landroidx/test/espresso/base/RootsOracle_Factory;
.super Ljava/lang/Object;
.source "RootsOracle_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/RootsOracle;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/base/RootsOracle_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootsOracle_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Landroidx/test/espresso/base/RootsOracle_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/base/RootsOracle_Factory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/RootsOracle_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/os/Looper;)Landroidx/test/espresso/base/RootsOracle;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/base/RootsOracle;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/RootsOracle;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/RootsOracle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/RootsOracle_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0}, Landroidx/test/espresso/base/RootsOracle_Factory;->newInstance(Landroid/os/Looper;)Landroidx/test/espresso/base/RootsOracle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootsOracle_Factory;->get()Landroidx/test/espresso/base/RootsOracle;

    move-result-object v0

    return-object v0
.end method
