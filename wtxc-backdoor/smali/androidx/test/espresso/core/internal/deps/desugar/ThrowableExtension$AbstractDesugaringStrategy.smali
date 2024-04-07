.class abstract Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDesugaringStrategy"
.end annotation


# static fields
.field protected static final EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    .line 1
    sput-object v0, Landroidx/test/espresso/core/internal/deps/desugar/ThrowableExtension$AbstractDesugaringStrategy;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
.end method
