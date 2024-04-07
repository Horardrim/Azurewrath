.class public final synthetic Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;->INSTANCE:Lrxhttp/BaseRxHttp$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lrxhttp/wrapper/utils/LogUtil;->log(Ljava/lang/Throwable;)V

    return-void
.end method
