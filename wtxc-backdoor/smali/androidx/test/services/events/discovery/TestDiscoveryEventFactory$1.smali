.class synthetic Landroidx/test/services/events/discovery/TestDiscoveryEventFactory$1;
.super Ljava/lang/Object;
.source "TestDiscoveryEventFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/discovery/TestDiscoveryEventFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$test$services$events$discovery$TestDiscoveryEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->values()[Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEventFactory$1;->$SwitchMap$androidx$test$services$events$discovery$TestDiscoveryEvent$EventType:[I

    :try_start_0
    sget-object v1, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->STARTED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEventFactory$1;->$SwitchMap$androidx$test$services$events$discovery$TestDiscoveryEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->TEST_FOUND:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroidx/test/services/events/discovery/TestDiscoveryEventFactory$1;->$SwitchMap$androidx$test$services$events$discovery$TestDiscoveryEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->FINISHED:Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/discovery/TestDiscoveryEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
