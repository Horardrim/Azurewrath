.class Lrxhttp/wrapper/progress/ProgressRequestBody$1;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrxhttp/wrapper/progress/ProgressRequestBody;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bytesWritten:J

.field contentLength:J

.field lastProgress:I

.field final synthetic this$0:Lrxhttp/wrapper/progress/ProgressRequestBody;


# direct methods
.method constructor <init>(Lrxhttp/wrapper/progress/ProgressRequestBody;Lokio/Sink;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->this$0:Lrxhttp/wrapper/progress/ProgressRequestBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 p1, 0x0

    .line 55
    iput-wide p1, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->bytesWritten:J

    .line 56
    iput-wide p1, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 62
    iget-wide v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->this$0:Lrxhttp/wrapper/progress/ProgressRequestBody;

    invoke-virtual {p1}, Lrxhttp/wrapper/progress/ProgressRequestBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->contentLength:J

    .line 65
    :cond_0
    iget-wide v0, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->bytesWritten:J

    add-long v4, v0, p2

    iput-wide v4, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->bytesWritten:J

    const-wide/16 p1, 0x64

    mul-long/2addr p1, v4

    .line 67
    iget-wide v6, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->contentLength:J

    div-long/2addr p1, v6

    long-to-int v3, p1

    .line 68
    iget p1, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->lastProgress:I

    if-le v3, p1, :cond_1

    .line 69
    iput v3, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->lastProgress:I

    .line 70
    iget-object v2, p0, Lrxhttp/wrapper/progress/ProgressRequestBody$1;->this$0:Lrxhttp/wrapper/progress/ProgressRequestBody;

    invoke-static/range {v2 .. v7}, Lrxhttp/wrapper/progress/ProgressRequestBody;->access$000(Lrxhttp/wrapper/progress/ProgressRequestBody;IJJ)V

    :cond_1
    return-void
.end method
