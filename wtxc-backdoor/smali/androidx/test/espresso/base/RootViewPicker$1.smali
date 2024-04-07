.class synthetic Landroidx/test/espresso/base/RootViewPicker$1;
.super Ljava/lang/Object;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$test$espresso$base$RootViewPicker$RootResults$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->values()[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$1;->$SwitchMap$androidx$test$espresso$base$RootViewPicker$RootResults$State:[I

    :try_start_0
    sget-object v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-virtual {v1}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$1;->$SwitchMap$androidx$test$espresso$base$RootViewPicker$RootResults$State:[I

    sget-object v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PRESENT:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-virtual {v1}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$1;->$SwitchMap$androidx$test$espresso$base$RootViewPicker$RootResults$State:[I

    sget-object v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-virtual {v1}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
