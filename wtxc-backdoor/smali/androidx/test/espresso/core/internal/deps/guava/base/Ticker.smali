.class public abstract Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final SYSTEM_TICKER:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker$1;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker$1;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->SYSTEM_TICKER:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static systemTicker()Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->SYSTEM_TICKER:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    return-object v0
.end method


# virtual methods
.method public abstract read()J
.end method
