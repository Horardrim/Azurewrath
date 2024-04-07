.class public final Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;
.super Ljava/lang/Object;
.source "AnalyticsBasedUsageTracker.java"

# interfaces
.implements Landroidx/test/internal/runner/tracker/UsageTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    }
.end annotation


# static fields
.field private static final API_LEVEL_PARAM:Ljava/lang/String; = "&cd2="

.field private static final APP_NAME_PARAM:Ljava/lang/String; = "an="

.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "&av="

.field private static final CLIENT_ID_PARAM:Ljava/lang/String; = "&cid="

.field private static final MODEL_NAME_PARAM:Ljava/lang/String; = "&cd3="

.field private static final SCREEN_NAME_PARAM:Ljava/lang/String; = "&cd="

.field private static final SCREEN_RESOLUTION_PARAM:Ljava/lang/String; = "&sr="

.field private static final TAG:Ljava/lang/String; = "InfraTrack"

.field private static final TRACKER_ID_PARAM:Ljava/lang/String; = "&tid="

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final analyticsURI:Ljava/net/URL;

.field private final apiLevel:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final screenResolution:Ljava/lang/String;

.field private final targetPackage:Ljava/lang/String;

.field private final trackingId:Ljava/lang/String;

.field private final usageTypeToVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    .line 67
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$000(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->trackingId:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$100(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->targetPackage:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$200(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->analyticsURI:Ljava/net/URL;

    .line 70
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$300(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->apiLevel:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$400(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->model:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$500(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->screenResolution:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$600(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->userId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;-><init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)V

    return-void
.end method


# virtual methods
.method public sendUsages()V
    .locals 11

    .line 223
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 228
    iget-object v2, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 229
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 233
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "an="

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->targetPackage:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 236
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&tid="

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->trackingId:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 238
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&v=1"

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&z="

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "&cid="

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->userId:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 243
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sr="

    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->screenResolution:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 245
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&cd2="

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->apiLevel:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 247
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&cd3="

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->model:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 249
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&t=appview"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sc=start"

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "InfraTrack"

    const-string v4, "Impossible error happened. analytics disabled."

    .line 254
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    .line 257
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 260
    :try_start_2
    iget-object v4, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->analyticsURI:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&cd="

    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&av="

    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0xbb8

    .line 273
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x1388

    .line 274
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v6, 0x1

    .line 275
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 276
    array-length v6, v5

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 277
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 278
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 279
    div-int/lit8 v5, v5, 0x64

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const-string v5, "InfraTrack"

    .line 280
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 285
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 287
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2d

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Analytics post: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed. code: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v4, :cond_1

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v5

    move-object v4, v0

    :goto_2
    :try_start_4
    const-string v6, "InfraTrack"

    .line 290
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Analytics post: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed. "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_1

    .line 293
    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 295
    :cond_3
    throw v0

    :cond_4
    return-void

    :catchall_2
    move-exception v1

    .line 229
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public trackUsage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usageType",
            "version"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
