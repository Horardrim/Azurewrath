.class Landroidx/test/espresso/base/IdlingResourceRegistry$3;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;->registerResources(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

.field final synthetic val$resourceList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$3;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    iput-object p2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$3;->val$resourceList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$3;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$3;->val$resourceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->registerResources(Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
