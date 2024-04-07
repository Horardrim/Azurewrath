.class public Landroidx/test/espresso/remote/NoopRemoteInteraction;
.super Ljava/lang/Object;
.source "NoopRemoteInteraction.java"

# interfaces
.implements Landroidx/test/espresso/remote/RemoteInteraction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRemoteCheckCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;Landroidx/test/espresso/ViewAssertion;)Ljava/util/concurrent/Callable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroidx/test/espresso/ViewAssertion;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroidx/test/espresso/remote/NoopRemoteInteraction$1;

    invoke-direct {p1, p0}, Landroidx/test/espresso/remote/NoopRemoteInteraction$1;-><init>(Landroidx/test/espresso/remote/NoopRemoteInteraction;)V

    return-object p1
.end method

.method public varargs createRemotePerformCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;[Landroidx/test/espresso/ViewAction;)Ljava/util/concurrent/Callable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;[",
            "Landroidx/test/espresso/ViewAction;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroidx/test/espresso/remote/NoopRemoteInteraction$2;

    invoke-direct {p1, p0}, Landroidx/test/espresso/remote/NoopRemoteInteraction$2;-><init>(Landroidx/test/espresso/remote/NoopRemoteInteraction;)V

    return-object p1
.end method

.method public isRemoteProcess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
