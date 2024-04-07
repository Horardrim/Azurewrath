.class final synthetic Landroidx/test/orchestrator/callback/OrchestratorV1Connection$$Lambda$0;
.super Ljava/lang/Object;
.source "OrchestratorV1Connection.java"

# interfaces
.implements Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;


# static fields
.field static final $instance:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection$$Lambda$0;

    invoke-direct {v0}, Landroidx/test/orchestrator/callback/OrchestratorV1Connection$$Lambda$0;-><init>()V

    sput-object v0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection$$Lambda$0;->$instance:Landroidx/test/internal/events/client/TestEventServiceConnectionBase$ServiceFromBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 50
    invoke-static {p1}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/test/orchestrator/callback/OrchestratorCallback;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method
