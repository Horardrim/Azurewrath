.class public Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
.super Ljava/lang/Object;
.source "AnalyticsBasedUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private analyticsURI:Ljava/net/URL;

.field private analyticsUri:Landroid/net/Uri;

.field private apiLevel:Ljava/lang/String;

.field private hashed:Z

.field private model:Ljava/lang/String;

.field private screenResolution:Ljava/lang/String;

.field private final targetContext:Landroid/content/Context;

.field private targetPackage:Ljava/lang/String;

.field private trackingId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetContext"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 81
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "www.google-analytics.com"

    .line 82
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "collect"

    .line 83
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    const-string v0, "UA-36650409-3"

    .line 85
    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->trackingId:Ljava/lang/String;

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->apiLevel:Ljava/lang/String;

    .line 87
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->model:Ljava/lang/String;

    const-string v0, "Context null!?"

    .line 96
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/net/URL;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsURI:Ljava/net/URL;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->apiLevel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->model:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method private hasInternetPermission()Z
    .locals 2

    .line 208
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public buildIfPossible()Landroidx/test/internal/runner/tracker/UsageTracker;
    .locals 6

    .line 139
    invoke-direct {p0}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hasInternetPermission()Z

    move-result v0

    const-string v1, "InfraTrack"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Tracking disabled due to lack of internet permissions"

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 144
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->withTargetPackage(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 148
    :cond_1
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "com.google.analytics"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Refusing to use analytics while testing analytics."

    .line 149
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 154
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "com.google."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "com.android."

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "android.support."

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 159
    :cond_3
    iget-boolean v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hashed:Z

    if-nez v0, :cond_5

    const-string v0, "SHA-256"

    .line 160
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 162
    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 163
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    const-string v0, "sha256-"

    const/16 v4, 0x10

    .line 164
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    :cond_5
    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hashed:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :cond_6
    :goto_1
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsURI:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 184
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    const-string v1, "window"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 186
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "0x0"

    .line 189
    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    goto :goto_2

    .line 191
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    .line 200
    :cond_8
    :goto_2
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 201
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    .line 204
    :cond_9
    new-instance v0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;

    invoke-direct {v0, p0, v2}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;-><init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$1;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v3, "Tracking disabled bad url: "

    .line 179
    iget-object v4, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_3
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception v0

    const-string v3, "Impossible - no utf-8 encoding?"

    .line 172
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_2
    move-exception v0

    const-string v3, "Cannot hash package name."

    .line 169
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public withAnalyticsUri(Landroid/net/Uri;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "analyticsUri"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    return-object p0
.end method

.method public withApiLevel(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiLevel"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->apiLevel:Ljava/lang/String;

    return-object p0
.end method

.method public withModel(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->model:Ljava/lang/String;

    return-object p0
.end method

.method public withScreenResolution(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionVal"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    return-object p0
.end method

.method public withTargetPackage(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetPackage"
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hashed:Z

    .line 134
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public withTrackingId(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackingId"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method
