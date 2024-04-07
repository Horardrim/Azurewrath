.class synthetic Landroidx/test/services/events/run/TestRunEventFactory$1;
.super Ljava/lang/Object;
.source "TestRunEventFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/run/TestRunEventFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Landroidx/test/services/events/run/TestRunEvent$EventType;->values()[Landroidx/test/services/events/run/TestRunEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/test/services/events/run/TestRunEventFactory$1;->$SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I

    :try_start_0
    sget-object v1, Landroidx/test/services/events/run/TestRunEvent$EventType;->STARTED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/run/TestRunEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroidx/test/services/events/run/TestRunEventFactory$1;->$SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_STARTED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/run/TestRunEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroidx/test/services/events/run/TestRunEventFactory$1;->$SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_FINISHED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/run/TestRunEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Landroidx/test/services/events/run/TestRunEventFactory$1;->$SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_ASSUMPTION_FAILURE:Landroidx/test/services/events/run/TestRunEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/run/TestRunEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Landroidx/test/services/events/run/TestRunEventFactory$1;->$SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_FAILURE:Landroidx/test/services/events/run/TestRunEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/run/TestRunEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroidx/test/services/events/run/TestRunEventFactory$1;->$SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/run/TestRunEvent$EventType;->TEST_IGNORED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/run/TestRunEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Landroidx/test/services/events/run/TestRunEventFactory$1;->$SwitchMap$androidx$test$services$events$run$TestRunEvent$EventType:[I

    sget-object v1, Landroidx/test/services/events/run/TestRunEvent$EventType;->FINISHED:Landroidx/test/services/events/run/TestRunEvent$EventType;

    invoke-virtual {v1}, Landroidx/test/services/events/run/TestRunEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
