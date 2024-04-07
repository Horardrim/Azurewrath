.class public Landroidx/test/runner/UsageTrackerFacilitator;
.super Ljava/lang/Object;
.source "UsageTrackerFacilitator.java"

# interfaces
.implements Landroidx/test/internal/runner/tracker/UsageTracker;


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageTrackerFacilitator"


# instance fields
.field private final shouldTrackUsage:Z


# direct methods
.method public constructor <init>(Landroidx/test/internal/runner/RunnerArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerArgs"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "runnerArgs cannot be null!"

    .line 40
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->orchestratorService:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 44
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->disableAnalytics:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Landroidx/test/internal/runner/RunnerArgs;->listTestsForOrchestrator:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    goto :goto_1

    .line 46
    :cond_1
    iget-boolean p1, p1, Landroidx/test/internal/runner/RunnerArgs;->disableAnalytics:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    :goto_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldTrackUsage"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    return-void
.end method


# virtual methods
.method public registerUsageTracker(Landroidx/test/internal/runner/tracker/UsageTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usageTracker"
        }
    .end annotation

    const-string v0, "UsageTrackerFacilitator"

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Usage tracking enabled"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->registerInstance(Landroidx/test/internal/runner/tracker/UsageTracker;)V

    return-void

    :cond_0
    const-string p1, "Usage tracking disabled"

    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p1, Landroidx/test/internal/runner/tracker/UsageTracker$NoOpUsageTracker;

    invoke-direct {p1}, Landroidx/test/internal/runner/tracker/UsageTracker$NoOpUsageTracker;-><init>()V

    invoke-static {p1}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->registerInstance(Landroidx/test/internal/runner/tracker/UsageTracker;)V

    return-void
.end method

.method public sendUsages()V
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->getInstance()Landroidx/test/internal/runner/tracker/UsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/internal/runner/tracker/UsageTracker;->sendUsages()V

    :cond_0
    return-void
.end method

.method public shouldTrackUsage()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    return v0
.end method

.method public trackUsage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "version"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->getInstance()Landroidx/test/internal/runner/tracker/UsageTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/test/internal/runner/tracker/UsageTracker;->trackUsage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
