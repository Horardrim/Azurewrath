.class Lcom/qinyue/vcommon/utils/ACache$CacheManager;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vcommon/utils/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheManager"
.end annotation


# instance fields
.field private final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final cacheDir:Ljava/io/File;

.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final countLimit:I

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;

.field private final sizeLimit:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcacheCount(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcacheSize(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastUsageDates(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclear(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->clear()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCacheCount(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->getCacheCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCacheSize(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->getCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetFileBeforePut(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->getFileBeforePut(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFileIfExists(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->getFileIfExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mput(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->put(Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveByKey(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->removeByKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateModify(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->updateModify(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 1

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 644
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    .line 649
    iput-object p1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheDir:Ljava/io/File;

    .line 650
    iput-wide p2, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->sizeLimit:J

    .line 651
    iput p4, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->countLimit:I

    .line 652
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 653
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 654
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/qinyue/vcommon/utils/ACache$CacheManager$1;

    invoke-direct {p3, p0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager$1;-><init>(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->mThread:Ljava/lang/Thread;

    .line 671
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;JILcom/qinyue/vcommon/utils/ACache$CacheManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;-><init>(Ljava/io/File;JI)V

    return-void
.end method

.method private clear()Z
    .locals 9

    .line 739
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 740
    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_2

    .line 744
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 745
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v3

    goto :goto_1

    .line 749
    :cond_1
    iget-object v6, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    neg-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 750
    iget-object v6, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 751
    iget-object v6, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 754
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 755
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 756
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_3
    :goto_2
    return v1
.end method

.method private getCacheCount()I
    .locals 1

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 689
    :goto_0
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private getCacheSize()J
    .locals 2

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFileBeforePut(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 693
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 695
    iget-object p1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 696
    iget-object p1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_0
    return-object v0
.end method

.method private getFileIfExists(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 702
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private put(Ljava/io/File;)V
    .locals 4

    .line 710
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 711
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 712
    :goto_0
    iget-object p1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->countLimit:I

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->sizeLimit:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 713
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->removeOldest()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 714
    iget-object p1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0
.end method

.method private removeByKey(Ljava/lang/String;)Z
    .locals 4

    .line 725
    invoke-direct {p0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->getFileIfExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 729
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 733
    iget-object v1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 734
    iget-object v1, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private removeOldest()J
    .locals 12

    .line 767
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-wide v3, 0x7fffffffffffffffL

    .line 770
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x0

    .line 772
    iget-object v4, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 773
    iget-object v5, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    monitor-enter v5

    .line 774
    :try_start_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 775
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 776
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 778
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v3, v0

    move-object v0, v7

    goto :goto_0

    .line 781
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    return-wide v1

    .line 785
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 786
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v4

    :cond_4
    return-wide v1

    :catchall_0
    move-exception v0

    .line 781
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateModify(Ljava/io/File;)V
    .locals 3

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 720
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 721
    iget-object v2, p0, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
