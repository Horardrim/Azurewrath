.class public final Landroidx/test/internal/events/client/TestEventClientArgs;
.super Ljava/lang/Object;
.source "TestEventClientArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;,
        Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    }
.end annotation


# instance fields
.field public final connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

.field public final isOrchestrated:Z

.field public final isPrimaryInstrProcess:Z

.field public final isTestDiscoveryRequested:Z

.field public final isTestRunEventsRequested:Z

.field public final orchestratorVersion:I

.field public final testDiscoveryService:Ljava/lang/String;

.field public final testPlatformMigration:Z

.field public final testRunEventService:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZILandroidx/test/internal/events/client/TestEventClientArgs$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isOrchestrated",
            "orchestratorVersion",
            "builder"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->isOrchestrated:Z

    .line 45
    iget-boolean p1, p3, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->isPrimaryInstProcess:Z

    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->isPrimaryInstrProcess:Z

    .line 46
    iget-boolean p1, p3, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testDiscoveryRequested:Z

    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->isTestDiscoveryRequested:Z

    .line 47
    iget-boolean p1, p3, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testRunEventsRequested:Z

    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->isTestRunEventsRequested:Z

    .line 48
    invoke-static {p3}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->access$000(Landroidx/test/internal/events/client/TestEventClientArgs$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->testDiscoveryService:Ljava/lang/String;

    .line 49
    invoke-static {p3}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->access$100(Landroidx/test/internal/events/client/TestEventClientArgs$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->testRunEventService:Ljava/lang/String;

    .line 50
    invoke-static {p3}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->access$200(Landroidx/test/internal/events/client/TestEventClientArgs$Builder;)Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->connectionFactory:Landroidx/test/internal/events/client/TestEventClientArgs$ConnectionFactory;

    .line 51
    iput p2, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->orchestratorVersion:I

    .line 52
    iget-boolean p1, p3, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;->testPlatformMigration:Z

    iput-boolean p1, p0, Landroidx/test/internal/events/client/TestEventClientArgs;->testPlatformMigration:Z

    return-void
.end method

.method synthetic constructor <init>(ZILandroidx/test/internal/events/client/TestEventClientArgs$Builder;Landroidx/test/internal/events/client/TestEventClientArgs$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/internal/events/client/TestEventClientArgs;-><init>(ZILandroidx/test/internal/events/client/TestEventClientArgs$Builder;)V

    return-void
.end method

.method public static builder()Landroidx/test/internal/events/client/TestEventClientArgs$Builder;
    .locals 1

    .line 58
    new-instance v0, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;

    invoke-direct {v0}, Landroidx/test/internal/events/client/TestEventClientArgs$Builder;-><init>()V

    return-object v0
.end method
