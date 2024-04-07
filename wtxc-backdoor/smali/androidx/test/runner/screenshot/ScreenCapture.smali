.class public final Landroidx/test/runner/screenshot/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# static fields
.field private static final DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

.field private filename:Ljava/lang/String;

.field private format:Landroid/graphics/Bitmap$CompressFormat;

.field private processorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Landroidx/test/runner/screenshot/ScreenCapture;->DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;

    invoke-direct {v0}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    .line 56
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    sget-object p1, Landroidx/test/runner/screenshot/ScreenCapture;->DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Landroidx/test/runner/screenshot/ScreenCaptureProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "defaultProcessor"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;

    invoke-direct {v0}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    .line 61
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    .line 62
    sget-object p1, Landroidx/test/runner/screenshot/ScreenCapture;->DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    .line 63
    iput-object p2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 175
    :cond_1
    instance-of v2, p1, Landroidx/test/runner/screenshot/ScreenCapture;

    if-nez v2, :cond_2

    return v1

    .line 179
    :cond_2
    check-cast p1, Landroidx/test/runner/screenshot/ScreenCapture;

    .line 181
    iget-object v2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 182
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {p0}, Landroidx/test/runner/screenshot/ScreenCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 188
    :goto_0
    iget-object v3, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 189
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_1

    .line 191
    :cond_6
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 194
    :goto_1
    iget-object v4, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    if-nez v4, :cond_8

    .line 195
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v0

    goto :goto_2

    :cond_7
    move v4, v1

    goto :goto_2

    .line 197
    :cond_8
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 199
    iget-object v2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    .line 202
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getProcessors()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 203
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getProcessors()Ljava/util/Set;

    move-result-object p1

    iget-object v2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    return-object v0
.end method

.method getProcessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x25

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 155
    :goto_0
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 158
    :cond_1
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 161
    :cond_2
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    .line 162
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public process()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroidx/test/runner/screenshot/ScreenCapture;->process(Ljava/util/Set;)V

    return-void
.end method

.method public process(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processorSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    invoke-interface {p1, p0}, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;->process(Landroidx/test/runner/screenshot/ScreenCapture;)Ljava/lang/String;

    return-void

    .line 143
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 144
    invoke-interface {v0, p0}, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;->process(Landroidx/test/runner/screenshot/ScreenCapture;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFormat(Landroid/graphics/Bitmap$CompressFormat;)Landroidx/test/runner/screenshot/ScreenCapture;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/test/runner/screenshot/ScreenCapture;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    return-object p0
.end method

.method setProcessors(Ljava/util/Set;)Landroidx/test/runner/screenshot/ScreenCapture;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processorSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;)",
            "Landroidx/test/runner/screenshot/ScreenCapture;"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    return-object p0
.end method
