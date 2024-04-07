.class final enum Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
.super Ljava/lang/Enum;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker$RootResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/base/RootViewPicker$RootResults$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

.field public static final enum NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

.field public static final enum NO_ROOTS_PRESENT:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

.field public static final enum ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 1
    sget-object v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PRESENT:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const-string v1, "NO_ROOTS_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PRESENT:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 2
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const-string v1, "NO_ROOTS_PICKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->NO_ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 3
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    const-string v1, "ROOTS_PICKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 4
    invoke-static {}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->$values()[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->$VALUES:[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
    .locals 1

    const-class v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->$VALUES:[Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-virtual {v0}, [Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    return-object v0
.end method
