.class public final Lrxhttp/wrapper/entity/DownloadOffSize;
.super Ljava/lang/Object;
.source "DownloadOffSize.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lrxhttp/wrapper/entity/DownloadOffSize;",
        "",
        "offSize",
        "",
        "(J)V",
        "getOffSize",
        "()J",
        "setOffSize",
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
.field private offSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lrxhttp/wrapper/entity/DownloadOffSize;->offSize:J

    return-void
.end method


# virtual methods
.method public final getOffSize()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lrxhttp/wrapper/entity/DownloadOffSize;->offSize:J

    return-wide v0
.end method

.method public final setOffSize(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lrxhttp/wrapper/entity/DownloadOffSize;->offSize:J

    return-void
.end method
