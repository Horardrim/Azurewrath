.class public final Landroidx/test/espresso/IdlingPolicies;
.super Ljava/lang/Object;
.source "IdlingPolicies.java"


# static fields
.field private static volatile dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

.field private static volatile dynamicIdlingResourceWarningPolicy:Landroidx/test/espresso/IdlingPolicy;

.field private static volatile masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>()V

    const-wide/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->throwAppNotIdleException()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 6
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>()V

    const-wide/16 v1, 0x1a

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {v0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->throwIdlingResourceTimeoutException()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 11
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>()V

    const-wide/16 v1, 0x5

    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-virtual {v0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->logWarning()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceWarningPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDynamicIdlingResourceErrorPolicy()Landroidx/test/espresso/IdlingPolicy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-object v0
.end method

.method public static getDynamicIdlingResourceWarningPolicy()Landroidx/test/espresso/IdlingPolicy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceWarningPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-object v0
.end method

.method public static getMasterIdlingPolicy()Landroidx/test/espresso/IdlingPolicy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-object v0
.end method

.method public static setIdlingResourceTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 2
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 4
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy;->toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object p0

    sput-object p0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-void
.end method

.method public static setMasterPolicyTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 2
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 4
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy;->toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object p0

    sput-object p0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-void
.end method

.method public static setMasterPolicyTimeoutWhenDebuggerAttached(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 2
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy;->toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/test/espresso/IdlingPolicy$Builder;->withTimeoutIfDebuggerAttached(Z)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object p0

    sput-object p0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-void
.end method
