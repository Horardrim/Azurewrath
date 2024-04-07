.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field private static final SUPPLIER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;-><init>()V

    .line 2
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$1;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$2;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$2;-><init>()V

    .line 5
    :goto_0
    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->SUPPLIER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    return-void
.end method

.method public static create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->SUPPLIER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    return-object v0
.end method
