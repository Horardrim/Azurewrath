.class synthetic Landroidx/test/espresso/IdlingPolicy$1;
.super Ljava/lang/Object;
.source "IdlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/IdlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$test$espresso$IdlingPolicy$ResponseAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->values()[Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/test/espresso/IdlingPolicy$1;->$SwitchMap$androidx$test$espresso$IdlingPolicy$ResponseAction:[I

    :try_start_0
    sget-object v1, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->THROW_APP_NOT_IDLE:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$1;->$SwitchMap$androidx$test$espresso$IdlingPolicy$ResponseAction:[I

    sget-object v1, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->THROW_IDLE_TIMEOUT:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$1;->$SwitchMap$androidx$test$espresso$IdlingPolicy$ResponseAction:[I

    sget-object v1, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->LOG_ERROR:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
