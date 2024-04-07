.class public Lrxhttp/wrapper/utils/GsonUtil;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrxhttp/wrapper/utils/GsonUtil$LongDefault0Adapter;,
        Lrxhttp/wrapper/utils/GsonUtil$DoubleDefault0Adapter;,
        Lrxhttp/wrapper/utils/GsonUtil$IntegerDefault0Adapter;,
        Lrxhttp/wrapper/utils/GsonUtil$StringAdapter;
    }
.end annotation


# static fields
.field private static gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildGson()Lcom/google/gson/Gson;
    .locals 4

    .line 69
    sget-object v0, Lrxhttp/wrapper/utils/GsonUtil;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    new-instance v2, Lrxhttp/wrapper/utils/GsonUtil$StringAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lrxhttp/wrapper/utils/GsonUtil$StringAdapter;-><init>(Lrxhttp/wrapper/utils/GsonUtil$1;)V

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lrxhttp/wrapper/utils/GsonUtil$IntegerDefault0Adapter;

    invoke-direct {v2, v3}, Lrxhttp/wrapper/utils/GsonUtil$IntegerDefault0Adapter;-><init>(Lrxhttp/wrapper/utils/GsonUtil$1;)V

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lrxhttp/wrapper/utils/GsonUtil$IntegerDefault0Adapter;

    invoke-direct {v2, v3}, Lrxhttp/wrapper/utils/GsonUtil$IntegerDefault0Adapter;-><init>(Lrxhttp/wrapper/utils/GsonUtil$1;)V

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lrxhttp/wrapper/utils/GsonUtil$DoubleDefault0Adapter;

    invoke-direct {v2, v3}, Lrxhttp/wrapper/utils/GsonUtil$DoubleDefault0Adapter;-><init>(Lrxhttp/wrapper/utils/GsonUtil$1;)V

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lrxhttp/wrapper/utils/GsonUtil$DoubleDefault0Adapter;

    invoke-direct {v2, v3}, Lrxhttp/wrapper/utils/GsonUtil$DoubleDefault0Adapter;-><init>(Lrxhttp/wrapper/utils/GsonUtil$1;)V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lrxhttp/wrapper/utils/GsonUtil$LongDefault0Adapter;

    invoke-direct {v2, v3}, Lrxhttp/wrapper/utils/GsonUtil$LongDefault0Adapter;-><init>(Lrxhttp/wrapper/utils/GsonUtil$1;)V

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lrxhttp/wrapper/utils/GsonUtil$LongDefault0Adapter;

    invoke-direct {v2, v3}, Lrxhttp/wrapper/utils/GsonUtil$LongDefault0Adapter;-><init>(Lrxhttp/wrapper/utils/GsonUtil$1;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lrxhttp/wrapper/utils/GsonUtil;->gson:Lcom/google/gson/Gson;

    .line 81
    :cond_0
    sget-object v0, Lrxhttp/wrapper/utils/GsonUtil;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lrxhttp/wrapper/utils/GsonUtil;->buildGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' could not be deserialized to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " object"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-static {p0, p1}, Lrxhttp/wrapper/utils/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Lrxhttp/wrapper/utils/GsonUtil;->buildGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
