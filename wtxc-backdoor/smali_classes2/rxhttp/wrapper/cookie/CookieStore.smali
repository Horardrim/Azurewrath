.class public Lrxhttp/wrapper/cookie/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"

# interfaces
.implements Lrxhttp/wrapper/cookie/ICookieJar;


# static fields
.field private static final appVersion:I = 0x1


# instance fields
.field private final directory:Ljava/io/File;

.field private diskCache:Lokhttp3/internal/cache/DiskLruCache;

.field private final maxSize:J

.field private memoryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const-wide/32 v1, 0x7fffffff

    const/4 v3, 0x1

    .line 41
    invoke-direct {p0, v0, v1, v2, v3}, Lrxhttp/wrapper/cookie/CookieStore;-><init>(Ljava/io/File;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    const-wide/32 v0, 0x7fffffff

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, p1, v0, v1, v2}, Lrxhttp/wrapper/cookie/CookieStore;-><init>(Ljava/io/File;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JZ)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Memory or disk caching must be enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 63
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    .line 65
    :cond_2
    iput-object p1, p0, Lrxhttp/wrapper/cookie/CookieStore;->directory:Ljava/io/File;

    .line 66
    iput-wide p2, p0, Lrxhttp/wrapper/cookie/CookieStore;->maxSize:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 49
    invoke-direct {p0, p1, v0, v1, p2}, Lrxhttp/wrapper/cookie/CookieStore;-><init>(Ljava/io/File;JZ)V

    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getDiskLruCache()Lokhttp3/internal/cache/DiskLruCache;
    .locals 7

    .line 71
    iget-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->directory:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->diskCache:Lokhttp3/internal/cache/DiskLruCache;

    if-nez v0, :cond_0

    .line 72
    sget-object v1, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lrxhttp/wrapper/cookie/CookieStore;->directory:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-wide v5, p0, Lrxhttp/wrapper/cookie/CookieStore;->maxSize:J

    invoke-static/range {v1 .. v6}, Lrxhttp/wrapper/OkHttpCompat;->newDiskLruCache(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->diskCache:Lokhttp3/internal/cache/DiskLruCache;

    .line 74
    :cond_0
    iget-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->diskCache:Lokhttp3/internal/cache/DiskLruCache;

    return-object v0
.end method

.method private getToken(Lokhttp3/Cookie;)Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Cookie;->secure()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private matchCookies(Lokhttp3/HttpUrl;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    .line 172
    invoke-virtual {v1, p1}, Lokhttp3/Cookie;->matches(Lokhttp3/HttpUrl;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 259
    invoke-static {p0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readCookie(Lokhttp3/HttpUrl;Lokio/Source;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokio/Source;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :try_start_0
    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 227
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 229
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {p1, v4}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-interface {p2}, Lokio/Source;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lokio/Source;->close()V

    .line 234
    throw p1
.end method

.method private writeCookie(Lokhttp3/internal/cache/DiskLruCache$Editor;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$Editor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 242
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 243
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 244
    invoke-virtual {v0}, Lokhttp3/Cookie;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_0

    .line 246
    :cond_0
    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    return-void
.end method


# virtual methods
.method public loadCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, p1, v1}, Lrxhttp/wrapper/cookie/CookieStore;->matchCookies(Lokhttp3/HttpUrl;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 146
    invoke-direct {p0}, Lrxhttp/wrapper/cookie/CookieStore;->getDiskLruCache()Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 151
    :try_start_0
    invoke-static {v0}, Lrxhttp/wrapper/cookie/CookieStore;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v3

    if-nez v3, :cond_1

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v3, v0, v5

    .line 160
    invoke-static {v0}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly([Ljava/io/Closeable;)V

    return-object p1

    .line 153
    :cond_1
    :try_start_1
    invoke-virtual {v3, v5}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lrxhttp/wrapper/cookie/CookieStore;->readCookie(Lokhttp3/HttpUrl;Lokio/Source;)Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/Cookie;

    .line 155
    invoke-direct {p0, v6}, Lrxhttp/wrapper/cookie/CookieStore;->getToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v3, v2, v5

    .line 160
    invoke-static {v2}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 158
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v3, v2, v5

    .line 160
    invoke-static {v2}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v3, v0, v5

    invoke-static {v0}, Lrxhttp/wrapper/OkHttpCompat;->closeQuietly([Ljava/io/Closeable;)V

    .line 161
    throw p1

    .line 163
    :cond_3
    :goto_2
    iget-object v2, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 164
    iget-object v2, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_4
    invoke-direct {p0, p1, v1}, Lrxhttp/wrapper/cookie/CookieStore;->matchCookies(Lokhttp3/HttpUrl;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lrxhttp/wrapper/cookie/ICookieJar$-CC;->$default$loadForRequest(Lrxhttp/wrapper/cookie/ICookieJar;Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAllCookie()V
    .locals 1

    .line 210
    iget-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    :cond_0
    invoke-direct {p0}, Lrxhttp/wrapper/cookie/CookieStore;->getDiskLruCache()Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCookie(Lokhttp3/HttpUrl;)V
    .locals 1

    .line 191
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    invoke-direct {p0}, Lrxhttp/wrapper/cookie/CookieStore;->getDiskLruCache()Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    invoke-static {p1}, Lrxhttp/wrapper/cookie/CookieStore;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveCookie(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lrxhttp/wrapper/cookie/CookieStore;->memoryCache:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 108
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    .line 109
    invoke-direct {p0, v1}, Lrxhttp/wrapper/cookie/CookieStore;->getToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    :cond_2
    invoke-direct {p0}, Lrxhttp/wrapper/cookie/CookieStore;->getDiskLruCache()Lokhttp3/internal/cache/DiskLruCache;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-static {p1}, Lrxhttp/wrapper/cookie/CookieStore;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 125
    invoke-direct {p0, v1}, Lrxhttp/wrapper/cookie/CookieStore;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    return-void

    .line 120
    :cond_3
    :try_start_1
    invoke-direct {p0, v1, v0}, Lrxhttp/wrapper/cookie/CookieStore;->writeCookie(Lokhttp3/internal/cache/DiskLruCache$Editor;Ljava/util/Map;)V

    .line 121
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 123
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_2
    invoke-direct {p0, v1}, Lrxhttp/wrapper/cookie/CookieStore;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_4

    :goto_3
    invoke-direct {p0, v1}, Lrxhttp/wrapper/cookie/CookieStore;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 126
    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
    .locals 1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0, p1, v0}, Lrxhttp/wrapper/cookie/CookieStore;->saveCookie(Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method public synthetic saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/cookie/ICookieJar$-CC;->$default$saveFromResponse(Lrxhttp/wrapper/cookie/ICookieJar;Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method
