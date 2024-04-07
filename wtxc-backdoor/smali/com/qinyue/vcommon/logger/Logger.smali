.class public final Lcom/qinyue/vcommon/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEFAULT_LOG_TAG:Ljava/lang/String; = "[Logger]"

.field private static final MAX_LOG_PRIORITY:I = 0xa

.field private static final MIN_LOG_PRIORITY:I

.field private static sILogger:Lcom/qinyue/vcommon/logger/ILogger;

.field private static sIsDebug:Z

.field private static sLogPriority:I

.field private static sTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/qinyue/vcommon/logger/LogcatLogger;

    invoke-direct {v0}, Lcom/qinyue/vcommon/logger/LogcatLogger;-><init>()V

    sput-object v0, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const-string v0, "[Logger]"

    .line 60
    sput-object v0, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/qinyue/vcommon/logger/Logger;->sIsDebug:Z

    const/16 v0, 0xa

    .line 68
    sput v0, Lcom/qinyue/vcommon/logger/Logger;->sLogPriority:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not need instantiate!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    .line 171
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static dTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 183
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->setDebug(Z)V

    .line 131
    invoke-static {v1}, Lcom/qinyue/vcommon/logger/Logger;->setPriority(I)V

    .line 132
    invoke-static {p0}, Lcom/qinyue/vcommon/logger/Logger;->setTag(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {v1}, Lcom/qinyue/vcommon/logger/Logger;->setDebug(Z)V

    const/16 p0, 0xa

    .line 135
    invoke-static {p0}, Lcom/qinyue/vcommon/logger/Logger;->setPriority(I)V

    const-string p0, ""

    .line 136
    invoke-static {p0}, Lcom/qinyue/vcommon/logger/Logger;->setTag(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static debug(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "[Logger]"

    .line 117
    invoke-static {p0}, Lcom/qinyue/vcommon/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 119
    invoke-static {p0}, Lcom/qinyue/vcommon/logger/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x6

    .line 240
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    .line 288
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p0, p1}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x6

    .line 263
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3, p0}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 252
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x6

    .line 301
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    invoke-interface {v1, v0, p0, p1, p2}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    .line 275
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, v2, p1}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static enableLog(I)Z
    .locals 1

    .line 336
    sget-object v0, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/qinyue/vcommon/logger/Logger;->sIsDebug:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/qinyue/vcommon/logger/Logger;->sLogPriority:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    .line 194
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static iTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 206
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 96
    sput-boolean p0, Lcom/qinyue/vcommon/logger/Logger;->sIsDebug:Z

    return-void
.end method

.method public static setLogger(Lcom/qinyue/vcommon/logger/ILogger;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    return-void
.end method

.method public static setPriority(I)V
    .locals 0

    .line 105
    sput p0, Lcom/qinyue/vcommon/logger/Logger;->sLogPriority:I

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0

    .line 87
    sput-object p0, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 148
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static vTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 160
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x5

    .line 217
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static wTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    .line 229
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x7

    .line 312
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    sget-object v2, Lcom/qinyue/vcommon/logger/Logger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static wtfTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x7

    .line 324
    invoke-static {v0}, Lcom/qinyue/vcommon/logger/Logger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    sget-object v1, Lcom/qinyue/vcommon/logger/Logger;->sILogger:Lcom/qinyue/vcommon/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/qinyue/vcommon/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
