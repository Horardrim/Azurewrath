.class public Lrxhttp/wrapper/cahce/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mCacheMode:Lrxhttp/wrapper/cahce/CacheMode;

.field private mCacheValidTime:J


# direct methods
.method public constructor <init>(Lrxhttp/wrapper/cahce/CacheMode;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 12
    iput-wide v0, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheValidTime:J

    .line 22
    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheMode:Lrxhttp/wrapper/cahce/CacheMode;

    return-void
.end method

.method public constructor <init>(Lrxhttp/wrapper/cahce/CacheMode;J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheMode:Lrxhttp/wrapper/cahce/CacheMode;

    .line 27
    iput-wide p2, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheValidTime:J

    return-void
.end method

.method public constructor <init>(Lrxhttp/wrapper/cahce/CacheStrategy;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 12
    iput-wide v0, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheValidTime:J

    .line 16
    iget-object v0, p1, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheKey:Ljava/lang/String;

    .line 17
    iget-wide v0, p1, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheValidTime:J

    iput-wide v0, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheValidTime:J

    .line 18
    iget-object p1, p1, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheMode:Lrxhttp/wrapper/cahce/CacheMode;

    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheMode:Lrxhttp/wrapper/cahce/CacheMode;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lrxhttp/wrapper/cahce/CacheMode;
    .locals 1

    .line 47
    iget-object v0, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheMode:Lrxhttp/wrapper/cahce/CacheMode;

    return-object v0
.end method

.method public getCacheValidTime()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheValidTime:J

    return-wide v0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setCacheMode(Lrxhttp/wrapper/cahce/CacheMode;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheMode:Lrxhttp/wrapper/cahce/CacheMode;

    return-void
.end method

.method public setCacheValidTime(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lrxhttp/wrapper/cahce/CacheStrategy;->mCacheValidTime:J

    return-void
.end method
