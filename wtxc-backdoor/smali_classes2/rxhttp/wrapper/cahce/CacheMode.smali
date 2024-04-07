.class public final enum Lrxhttp/wrapper/cahce/CacheMode;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrxhttp/wrapper/cahce/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrxhttp/wrapper/cahce/CacheMode;

.field public static final enum NETWORK_SUCCESS_WRITE_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

.field public static final enum ONLY_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

.field public static final enum ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

.field public static final enum READ_CACHE_FAILED_REQUEST_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

.field public static final enum REQUEST_NETWORK_FAILED_READ_CACHE:Lrxhttp/wrapper/cahce/CacheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lrxhttp/wrapper/cahce/CacheMode;

    const-string v1, "ONLY_NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrxhttp/wrapper/cahce/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    .line 18
    new-instance v1, Lrxhttp/wrapper/cahce/CacheMode;

    const-string v3, "ONLY_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lrxhttp/wrapper/cahce/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrxhttp/wrapper/cahce/CacheMode;->ONLY_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

    .line 23
    new-instance v3, Lrxhttp/wrapper/cahce/CacheMode;

    const-string v5, "NETWORK_SUCCESS_WRITE_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lrxhttp/wrapper/cahce/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lrxhttp/wrapper/cahce/CacheMode;->NETWORK_SUCCESS_WRITE_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

    .line 28
    new-instance v5, Lrxhttp/wrapper/cahce/CacheMode;

    const-string v7, "READ_CACHE_FAILED_REQUEST_NETWORK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lrxhttp/wrapper/cahce/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lrxhttp/wrapper/cahce/CacheMode;->READ_CACHE_FAILED_REQUEST_NETWORK:Lrxhttp/wrapper/cahce/CacheMode;

    .line 33
    new-instance v7, Lrxhttp/wrapper/cahce/CacheMode;

    const-string v9, "REQUEST_NETWORK_FAILED_READ_CACHE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lrxhttp/wrapper/cahce/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lrxhttp/wrapper/cahce/CacheMode;->REQUEST_NETWORK_FAILED_READ_CACHE:Lrxhttp/wrapper/cahce/CacheMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lrxhttp/wrapper/cahce/CacheMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 8
    sput-object v9, Lrxhttp/wrapper/cahce/CacheMode;->$VALUES:[Lrxhttp/wrapper/cahce/CacheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrxhttp/wrapper/cahce/CacheMode;
    .locals 1

    .line 8
    const-class v0, Lrxhttp/wrapper/cahce/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrxhttp/wrapper/cahce/CacheMode;

    return-object p0
.end method

.method public static values()[Lrxhttp/wrapper/cahce/CacheMode;
    .locals 1

    .line 8
    sget-object v0, Lrxhttp/wrapper/cahce/CacheMode;->$VALUES:[Lrxhttp/wrapper/cahce/CacheMode;

    invoke-virtual {v0}, [Lrxhttp/wrapper/cahce/CacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrxhttp/wrapper/cahce/CacheMode;

    return-object v0
.end method
