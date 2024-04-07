.class public Lcom/qinyue/vmain/activity/LoginBean;
.super Ljava/lang/Object;
.source "LoginBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/qinyue/vmain/activity/LoginBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/qinyue/vmain/activity/LoginBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/qinyue/vmain/activity/LoginBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/qinyue/vmain/activity/LoginBean;->userId:Ljava/lang/String;

    return-void
.end method
