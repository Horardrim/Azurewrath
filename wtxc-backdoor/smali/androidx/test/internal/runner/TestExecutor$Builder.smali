.class public Landroidx/test/internal/runner/TestExecutor$Builder;
.super Ljava/lang/Object;
.source "TestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final instr:Landroid/app/Instrumentation;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instr"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestExecutor$Builder;->listeners:Ljava/util/List;

    .line 102
    iput-object p1, p0, Landroidx/test/internal/runner/TestExecutor$Builder;->instr:Landroid/app/Instrumentation;

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/TestExecutor$Builder;)Ljava/util/List;
    .locals 0

    .line 97
    iget-object p0, p0, Landroidx/test/internal/runner/TestExecutor$Builder;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/internal/runner/TestExecutor$Builder;)Landroid/app/Instrumentation;
    .locals 0

    .line 97
    iget-object p0, p0, Landroidx/test/internal/runner/TestExecutor$Builder;->instr:Landroid/app/Instrumentation;

    return-object p0
.end method


# virtual methods
.method public addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/test/internal/runner/TestExecutor$Builder;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroidx/test/internal/runner/TestExecutor;
    .locals 2

    .line 117
    new-instance v0, Landroidx/test/internal/runner/TestExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/internal/runner/TestExecutor;-><init>(Landroidx/test/internal/runner/TestExecutor$Builder;Landroidx/test/internal/runner/TestExecutor$1;)V

    return-object v0
.end method
