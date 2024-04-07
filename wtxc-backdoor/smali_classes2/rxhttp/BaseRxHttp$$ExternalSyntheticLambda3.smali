.class public final synthetic Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lrxhttp/BaseRxHttp;

.field public final synthetic f$1:Lrxhttp/wrapper/callback/OutputStreamFactory;


# direct methods
.method public synthetic constructor <init>(Lrxhttp/BaseRxHttp;Lrxhttp/wrapper/callback/OutputStreamFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda3;->f$0:Lrxhttp/BaseRxHttp;

    iput-object p2, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda3;->f$1:Lrxhttp/wrapper/callback/OutputStreamFactory;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda3;->f$0:Lrxhttp/BaseRxHttp;

    iget-object v1, p0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda3;->f$1:Lrxhttp/wrapper/callback/OutputStreamFactory;

    invoke-virtual {v0, v1}, Lrxhttp/BaseRxHttp;->lambda$asAppendDownload$1$rxhttp-BaseRxHttp(Lrxhttp/wrapper/callback/OutputStreamFactory;)Lrxhttp/wrapper/parse/StreamParser;

    move-result-object v0

    return-object v0
.end method
