.class public final Lrxhttp/wrapper/utils/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIOUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IOUtil.kt\nrxhttp/wrapper/utils/IOUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0007\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\t0\u0008\"\u0004\u0018\u00010\tH\u0007\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0007JM\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2&\u0008\u0002\u0010\u0019\u001a \u0008\u0001\u0012\u0004\u0012\u00020\u001b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u001aH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ:\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00132\u0008\u0008\u0002\u0010 \u001a\u00020\u00112\u0016\u0008\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010!H\u0007J:\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u00152\u0008\u0008\u0002\u0010 \u001a\u00020\u00112\u0016\u0008\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010!H\u0007J4\u0010\u001e\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0016\u0008\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0006\u0018\u00010!H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lrxhttp/wrapper/utils/IOUtil;",
        "",
        "()V",
        "LENGTH_BYTE",
        "",
        "close",
        "",
        "closeables",
        "",
        "Ljava/io/Closeable;",
        "([Ljava/io/Closeable;)V",
        "copy",
        "inStream",
        "Ljava/io/InputStream;",
        "outStream",
        "Ljava/io/OutputStream;",
        "isFile",
        "",
        "dir",
        "Ljava/io/File;",
        "read",
        "",
        "file",
        "filePath",
        "suspendWrite",
        "progress",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "write",
        "dstFile",
        "append",
        "Lkotlin/Function1;",
        "path",
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


# static fields
.field public static final INSTANCE:Lrxhttp/wrapper/utils/IOUtil;

.field private static final LENGTH_BYTE:I = 0x2000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrxhttp/wrapper/utils/IOUtil;

    invoke-direct {v0}, Lrxhttp/wrapper/utils/IOUtil;-><init>()V

    sput-object v0, Lrxhttp/wrapper/utils/IOUtil;->INSTANCE:Lrxhttp/wrapper/utils/IOUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs close([Ljava/io/Closeable;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "closeables"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 20
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 21
    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 p1, 0x0

    move v3, p1

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 25
    :try_start_0
    invoke-virtual {v2, v1, p1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 26
    invoke-virtual {p0, v1, p1, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v3, v6

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v5, [Ljava/io/Closeable;

    .line 33
    check-cast v2, Ljava/io/Closeable;

    aput-object v2, v0, p1

    check-cast p0, Ljava/io/Closeable;

    aput-object p0, v0, v4

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 31
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v5, [Ljava/io/Closeable;

    .line 33
    check-cast v2, Ljava/io/Closeable;

    aput-object v2, v0, p1

    check-cast p0, Ljava/io/Closeable;

    aput-object p0, v0, v4

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    :goto_1
    return v3

    :goto_2
    new-array v1, v5, [Ljava/io/Closeable;

    check-cast v2, Ljava/io/Closeable;

    aput-object v2, v1, p1

    check-cast p0, Ljava/io/Closeable;

    aput-object p0, v1, v4

    invoke-static {v1}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    throw v0
.end method

.method private final isFile(Ljava/io/File;)Z
    .locals 1

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final read(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    :try_start_0
    sget-object v1, Lrxhttp/wrapper/utils/IOUtil;->INSTANCE:Lrxhttp/wrapper/utils/IOUtil;

    invoke-direct {v1, p0}, Lrxhttp/wrapper/utils/IOUtil;->isFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Lrxhttp/wrapper/utils/IOUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public static final read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 77
    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 78
    new-instance v5, Ljava/lang/String;

    iget v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v0, [Ljava/io/Closeable;

    .line 84
    check-cast p0, Ljava/io/Closeable;

    aput-object p0, v0, v1

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 82
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v0, [Ljava/io/Closeable;

    .line 84
    check-cast p0, Ljava/io/Closeable;

    aput-object p0, v0, v1

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return-object p0

    :goto_1
    new-array v0, v0, [Ljava/io/Closeable;

    check-cast p0, Ljava/io/Closeable;

    aput-object p0, v0, v1

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    throw v2
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "filePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic suspendWrite$default(Lrxhttp/wrapper/utils/IOUtil;Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrxhttp/wrapper/utils/IOUtil;->suspendWrite(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final write(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lrxhttp/wrapper/utils/IOUtil;->write$default(Ljava/io/InputStream;Ljava/io/File;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final write(Ljava/io/InputStream;Ljava/io/File;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lrxhttp/wrapper/utils/IOUtil;->write$default(Ljava/io/InputStream;Ljava/io/File;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final write(Ljava/io/InputStream;Ljava/io/File;ZLkotlin/jvm/functions/Function1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Directory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " create fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v0, Ljava/io/OutputStream;

    invoke-static {p0, v0, p3}, Lrxhttp/wrapper/utils/IOUtil;->write(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static final write(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0x2000

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v0, [B

    const-wide/16 v5, 0x0

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 127
    invoke-virtual {p1, v4, v3, v7}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p2, :cond_0

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 130
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p2, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    new-array p2, v1, [Ljava/io/Closeable;

    .line 135
    check-cast p0, Ljava/io/Closeable;

    aput-object p0, p2, v3

    check-cast p1, Ljava/io/Closeable;

    aput-object p1, p2, v2

    invoke-static {p2}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception p2

    new-array v0, v1, [Ljava/io/Closeable;

    check-cast p0, Ljava/io/Closeable;

    aput-object p0, v0, v3

    check-cast p1, Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    throw p2

    .line 120
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inStream or outStream can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final write(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lrxhttp/wrapper/utils/IOUtil;->write$default(Ljava/io/InputStream;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final write(Ljava/io/InputStream;Ljava/lang/String;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lrxhttp/wrapper/utils/IOUtil;->write$default(Ljava/io/InputStream;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final write(Ljava/io/InputStream;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Lrxhttp/wrapper/utils/IOUtil;->write(Ljava/io/InputStream;Ljava/io/File;ZLkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic write$default(Ljava/io/InputStream;Ljava/io/File;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 108
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lrxhttp/wrapper/utils/IOUtil;->write(Ljava/io/InputStream;Ljava/io/File;ZLkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic write$default(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 118
    :cond_0
    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/utils/IOUtil;->write(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic write$default(Ljava/io/InputStream;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 92
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lrxhttp/wrapper/utils/IOUtil;->write(Ljava/io/InputStream;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final suspendWrite(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;

    iget v2, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;-><init>(Lrxhttp/wrapper/utils/IOUtil;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 141
    iget v4, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v4, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iget-object v4, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$3:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v10, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iget-object v11, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/io/OutputStream;

    iget-object v12, v1, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/io/InputStream;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v10

    move-object v10, v8

    move-object v8, v3

    move-object v3, v11

    move-object v11, v9

    move-object v9, v4

    move-object v4, v1

    move-object v1, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v11

    move-object v1, v12

    goto/16 :goto_2

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    .line 151
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 152
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v0

    move-object v10, v4

    move-object v9, v8

    move-object/from16 v0, p3

    move-object v4, v1

    move-object v8, v3

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 153
    :cond_3
    :goto_1
    :try_start_2
    array-length v12, v11

    invoke-virtual {v1, v11, v6, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    iput v12, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 154
    iget v12, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v11, v6, v12}, Ljava/io/OutputStream;->write([BII)V

    if-eqz v0, :cond_3

    .line 156
    iget-wide v12, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v14, v14

    add-long/2addr v12, v14

    iput-wide v12, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 157
    iget-wide v12, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v1, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$3:Ljava/lang/Object;

    iput-object v10, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$4:Ljava/lang/Object;

    iput-object v9, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$5:Ljava/lang/Object;

    iput-object v0, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->L$6:Ljava/lang/Object;

    iput v7, v4, Lrxhttp/wrapper/utils/IOUtil$suspendWrite$1;->label:I

    invoke-interface {v0, v12, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v12, v8, :cond_3

    return-object v8

    :cond_4
    new-array v0, v5, [Ljava/io/Closeable;

    .line 162
    check-cast v1, Ljava/io/Closeable;

    aput-object v1, v0, v6

    check-cast v3, Ljava/io/Closeable;

    aput-object v3, v0, v7

    invoke-static {v0}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    :goto_2
    new-array v4, v5, [Ljava/io/Closeable;

    check-cast v1, Ljava/io/Closeable;

    aput-object v1, v4, v6

    check-cast v3, Ljava/io/Closeable;

    aput-object v3, v4, v7

    invoke-static {v4}, Lrxhttp/wrapper/utils/IOUtil;->close([Ljava/io/Closeable;)V

    throw v0

    .line 147
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inStream or outStream can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
