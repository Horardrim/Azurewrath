.class public interface abstract Lrxhttp/wrapper/callback/JsonConverter;
.super Ljava/lang/Object;
.source "JsonConverter.java"

# interfaces
.implements Lrxhttp/wrapper/callback/IConverter;


# static fields
.field public static final MEDIA_TYPE:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 13
    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lrxhttp/wrapper/callback/JsonConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method
