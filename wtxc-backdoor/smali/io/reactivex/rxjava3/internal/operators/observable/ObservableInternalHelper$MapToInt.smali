.class final enum Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;
.super Ljava/lang/Enum;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MapToInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;",
        ">;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

.field public static final enum INSTANCE:Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 195
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    aput-object v0, v1, v2

    .line 194
    sput-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;->$VALUES:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 194
    const-class v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;
    .locals 1

    .line 194
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;->$VALUES:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    invoke-virtual {v0}, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableInternalHelper$MapToInt;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const/4 p1, 0x0

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
