.class public final Landroidx/test/internal/runner/storage/RunnerTestStorageIO;
.super Ljava/lang/Object;
.source "RunnerTestStorageIO.java"

# interfaces
.implements Landroidx/test/internal/runner/storage/RunnerIO;


# instance fields
.field private final testStorage:Landroidx/test/services/storage/internal/InternalTestStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroidx/test/services/storage/internal/InternalTestStorage;

    invoke-direct {v0}, Landroidx/test/services/storage/internal/InternalTestStorage;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/storage/RunnerTestStorageIO;->testStorage:Landroidx/test/services/storage/internal/InternalTestStorage;

    return-void
.end method


# virtual methods
.method public openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Landroidx/test/internal/runner/storage/RunnerTestStorageIO;->testStorage:Landroidx/test/services/storage/internal/InternalTestStorage;

    invoke-virtual {v0, p1}, Landroidx/test/services/storage/internal/InternalTestStorage;->openInternalInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Landroidx/test/internal/runner/storage/RunnerTestStorageIO;->testStorage:Landroidx/test/services/storage/internal/InternalTestStorage;

    invoke-virtual {v0, p1}, Landroidx/test/services/storage/internal/InternalTestStorage;->openInternalOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method
