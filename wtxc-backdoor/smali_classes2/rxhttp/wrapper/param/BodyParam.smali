.class public final Lrxhttp/wrapper/param/BodyParam;
.super Lrxhttp/wrapper/param/AbstractBodyParam;
.source "BodyParam.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/wrapper/param/AbstractBodyParam<",
        "Lrxhttp/wrapper/param/BodyParam;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBodyParam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BodyParam.kt\nrxhttp/wrapper/param/BodyParam\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0008H\u0016J\u0008\u0010\u000e\u001a\u00020\nH\u0016J\u001c\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0008J0\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017H\u0007J\u001c\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00192\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0008H\u0007R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lrxhttp/wrapper/param/BodyParam;",
        "Lrxhttp/wrapper/param/AbstractBodyParam;",
        "url",
        "",
        "method",
        "Lrxhttp/wrapper/param/Method;",
        "(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V",
        "body",
        "",
        "requestBody",
        "Lokhttp3/RequestBody;",
        "add",
        "key",
        "value",
        "getRequestBody",
        "setBody",
        "file",
        "Ljava/io/File;",
        "mediaType",
        "Lokhttp3/MediaType;",
        "content",
        "",
        "offset",
        "",
        "byteCount",
        "Lokio/ByteString;",
        "setJsonBody",
        "rxhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private body:Ljava/lang/Object;

.field private requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lrxhttp/wrapper/param/AbstractBodyParam;-><init>(Ljava/lang/String;Lrxhttp/wrapper/param/Method;)V

    return-void
.end method

.method public static synthetic setBody$default(Lrxhttp/wrapper/param/BodyParam;Ljava/io/File;Lokhttp3/MediaType;ILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lrxhttp/wrapper/utils/BuildUtil;->getMediaType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->setBody(Ljava/io/File;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setBody$default(Lrxhttp/wrapper/param/BodyParam;Ljava/lang/String;Lokhttp3/MediaType;ILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->setBody(Ljava/lang/String;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setBody$default(Lrxhttp/wrapper/param/BodyParam;Lokio/ByteString;Lokhttp3/MediaType;ILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokio/ByteString;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setBody$default(Lrxhttp/wrapper/param/BodyParam;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 65
    array-length p4, p1

    .line 61
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lrxhttp/wrapper/param/BodyParam;->setBody([BLokhttp3/MediaType;II)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lrxhttp/wrapper/param/BodyParam;->add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    check-cast p1, Lrxhttp/wrapper/param/Param;

    return-object p1
.end method

.method public getRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 75
    iget-object v0, p0, Lrxhttp/wrapper/param/BodyParam;->body:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/BodyParam;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/wrapper/param/BodyParam;->requestBody:Lokhttp3/RequestBody;

    .line 76
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/param/BodyParam;->requestBody:Lokhttp3/RequestBody;

    const-string v1, "requestBody cannot be null, please call the setBody series methods"

    .line 77
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public final setBody(Ljava/io/File;)Lrxhttp/wrapper/param/BodyParam;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lrxhttp/wrapper/param/BodyParam;->setBody$default(Lrxhttp/wrapper/param/BodyParam;Ljava/io/File;Lokhttp3/MediaType;ILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody(Ljava/io/File;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lrxhttp/wrapper/entity/FileRequestBody;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lrxhttp/wrapper/entity/FileRequestBody;-><init>(Ljava/io/File;JLokhttp3/MediaType;)V

    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {p0, v0}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody(Ljava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lrxhttp/wrapper/param/BodyParam;->body:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lrxhttp/wrapper/param/BodyParam;->requestBody:Lokhttp3/RequestBody;

    return-object p0
.end method

.method public final setBody(Ljava/lang/String;)Lrxhttp/wrapper/param/BodyParam;
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lrxhttp/wrapper/param/BodyParam;->setBody$default(Lrxhttp/wrapper/param/BodyParam;Ljava/lang/String;Lokhttp3/MediaType;ILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody(Ljava/lang/String;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p2, p1}, Lrxhttp/wrapper/OkHttpCompat;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string p2, "create(mediaType, content)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;
    .locals 1

    const-string v0, "requestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lrxhttp/wrapper/param/BodyParam;->requestBody:Lokhttp3/RequestBody;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lrxhttp/wrapper/param/BodyParam;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public final setBody(Lokio/ByteString;)Lrxhttp/wrapper/param/BodyParam;
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lrxhttp/wrapper/param/BodyParam;->setBody$default(Lrxhttp/wrapper/param/BodyParam;Lokio/ByteString;Lokhttp3/MediaType;ILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody(Lokio/ByteString;Lokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p2, p1}, Lrxhttp/wrapper/OkHttpCompat;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string p2, "create(mediaType, content)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody([B)Lrxhttp/wrapper/param/BodyParam;
    .locals 8

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lrxhttp/wrapper/param/BodyParam;->setBody$default(Lrxhttp/wrapper/param/BodyParam;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody([BLokhttp3/MediaType;)Lrxhttp/wrapper/param/BodyParam;
    .locals 8

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lrxhttp/wrapper/param/BodyParam;->setBody$default(Lrxhttp/wrapper/param/BodyParam;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody([BLokhttp3/MediaType;I)Lrxhttp/wrapper/param/BodyParam;
    .locals 8

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lrxhttp/wrapper/param/BodyParam;->setBody$default(Lrxhttp/wrapper/param/BodyParam;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setBody([BLokhttp3/MediaType;II)Lrxhttp/wrapper/param/BodyParam;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p2, p1, p3, p4}, Lrxhttp/wrapper/OkHttpCompat;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object p1

    const-string p2, "create(mediaType, content, offset, byteCount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Lokhttp3/RequestBody;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method

.method public final setJsonBody(Ljava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setBody(value)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/param/BodyParam;->setBody(Ljava/lang/Object;)Lrxhttp/wrapper/param/BodyParam;

    move-result-object p1

    return-object p1
.end method
