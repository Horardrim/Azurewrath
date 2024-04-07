.class final Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;
.super Ljava/lang/Object;
.source "AdapterViewProtocols.java"

# interfaces
.implements Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StandardDataFunction"
.end annotation


# instance fields
.field private final dataAtPosition:Ljava/lang/Object;

.field private final position:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "position must be >= 0"

    .line 2
    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;->dataAtPosition:Ljava/lang/Object;

    .line 4
    iput p2, p0, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;->position:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILandroidx/test/espresso/action/AdapterViewProtocols$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;->dataAtPosition:Ljava/lang/Object;

    instance-of v1, v0, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;->position:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;->position:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot move cursor to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StdAdapterViewProtocol"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;->dataAtPosition:Ljava/lang/Object;

    return-object v0
.end method
