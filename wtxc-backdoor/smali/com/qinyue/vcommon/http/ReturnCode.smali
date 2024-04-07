.class public Lcom/qinyue/vcommon/http/ReturnCode;
.super Ljava/lang/Object;
.source "ReturnCode.java"


# static fields
.field public static final REQUEST_ERROR:I = 0x7d2

.field public static final REQUEST_PARAMETER:I = 0x3e8

.field public static final SERVICE_ERROR:I = 0x1f4

.field public static final SUCCESS:I = 0x0

.field public static final TOKEN_ERROR:I = -0x3e9

.field public static final VSCODE_ERROR:I = 0x7d3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x3e9

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "\u53c2\u6570\u9519\u8bef"

    return-object p0

    :cond_1
    const-string p0, "\u6210\u529f"

    return-object p0

    :cond_2
    const-string p0, "token\u5931\u6548,\u8bf7\u91cd\u65b0\u767b\u5f55"

    return-object p0
.end method

.method public static isSuccess(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
