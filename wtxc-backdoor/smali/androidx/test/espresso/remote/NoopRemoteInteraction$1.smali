.class Landroidx/test/espresso/remote/NoopRemoteInteraction$1;
.super Ljava/lang/Object;
.source "NoopRemoteInteraction.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/remote/NoopRemoteInteraction;->createRemoteCheckCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;Landroidx/test/espresso/ViewAssertion;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/test/espresso/remote/NoopRemoteInteraction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/remote/NoopRemoteInteraction$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/test/espresso/remote/NoRemoteEspressoInstanceException;

    const-string v1, "No remote instances available"

    invoke-direct {v0, v1}, Landroidx/test/espresso/remote/NoRemoteEspressoInstanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
