.class final synthetic Landroidx/test/runner/AndroidJUnitRunner$$Lambda$0;
.super Ljava/lang/Object;
.source "AndroidJUnitRunner.java"

# interfaces
.implements Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;


# static fields
.field static final $instance:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/test/runner/AndroidJUnitRunner$$Lambda$0;

    invoke-direct {v0}, Landroidx/test/runner/AndroidJUnitRunner$$Lambda$0;-><init>()V

    sput-object v0, Landroidx/test/runner/AndroidJUnitRunner$$Lambda$0;->$instance:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/test/internal/events/client/TestEventClientConnectListener;)Landroidx/test/internal/events/client/TestEventServiceConnection;
    .locals 1

    .line 337
    new-instance v0, Landroidx/test/orchestrator/callback/OrchestratorV1Connection;

    invoke-direct {v0, p1}, Landroidx/test/orchestrator/callback/OrchestratorV1Connection;-><init>(Landroidx/test/internal/events/client/TestEventClientConnectListener;)V

    check-cast v0, Landroidx/test/internal/events/client/TestEventServiceConnection;

    return-object v0
.end method
