.class public Lcom/qinyue/vmain/activity/PersonBean;
.super Ljava/lang/Object;
.source "PersonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private body:Ljava/lang/String;

.field private imgPath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/qinyue/vmain/activity/PersonBean;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/qinyue/vmain/activity/PersonBean;->imgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/qinyue/vmain/activity/PersonBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/qinyue/vmain/activity/PersonBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/qinyue/vmain/activity/PersonBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/qinyue/vmain/activity/PersonBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/qinyue/vmain/activity/PersonBean;->type:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/qinyue/vmain/activity/PersonBean;->body:Ljava/lang/String;

    return-void
.end method

.method public setImgPath(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/qinyue/vmain/activity/PersonBean;->imgPath:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/qinyue/vmain/activity/PersonBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/qinyue/vmain/activity/PersonBean;->number:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/qinyue/vmain/activity/PersonBean;->phone:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/qinyue/vmain/activity/PersonBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/qinyue/vmain/activity/PersonBean;->type:I

    return-void
.end method
