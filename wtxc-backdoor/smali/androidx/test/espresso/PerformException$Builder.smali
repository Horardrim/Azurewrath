.class public Landroidx/test/espresso/PerformException$Builder;
.super Ljava/lang/Object;
.source "PerformException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/PerformException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actionDescription:Ljava/lang/String;

.field private cause:Ljava/lang/Throwable;

.field private viewDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/PerformException$Builder;->actionDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/PerformException$Builder;->viewDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/PerformException$Builder;->cause:Ljava/lang/Throwable;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/PerformException;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/PerformException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/PerformException;-><init>(Landroidx/test/espresso/PerformException$Builder;Landroidx/test/espresso/PerformException$1;)V

    return-object v0
.end method

.method public from(Landroidx/test/espresso/PerformException;)Landroidx/test/espresso/PerformException$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException;->getActionDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/PerformException$Builder;->actionDescription:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException;->getViewDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/PerformException$Builder;->viewDescription:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/PerformException$Builder;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/PerformException$Builder;->actionDescription:Ljava/lang/String;

    return-object p0
.end method

.method public withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/PerformException$Builder;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/PerformException$Builder;->viewDescription:Ljava/lang/String;

    return-object p0
.end method
