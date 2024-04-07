.class public final synthetic Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;->INSTANCE:Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/Response;

    invoke-static {p1}, Lrxhttp/BaseRxHttp;->lambda$asHeaders$0(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method
