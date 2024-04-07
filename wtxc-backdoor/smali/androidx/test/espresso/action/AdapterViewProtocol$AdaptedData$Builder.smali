.class public Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;
.super Ljava/lang/Object;
.source "AdapterViewProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

.field private opaqueToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->data:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->data:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder$1;-><init>(Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;)V

    iput-object v0, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

    .line 4
    :goto_0
    new-instance v0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->data:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->opaqueToken:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;Landroidx/test/espresso/action/AdapterViewProtocol$1;)V

    return-object v0
.end method

.method public withData(Ljava/lang/Object;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public withDataFunction(Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->dataFunction:Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;

    return-object p0
.end method

.method public withOpaqueToken(Ljava/lang/Object;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->opaqueToken:Ljava/lang/Object;

    return-object p0
.end method
