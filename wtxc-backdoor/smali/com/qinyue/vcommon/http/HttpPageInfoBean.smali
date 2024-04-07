.class public Lcom/qinyue/vcommon/http/HttpPageInfoBean;
.super Ljava/lang/Object;
.source "HttpPageInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qinyue/vcommon/http/HttpPageInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private page:I

.field private pageNum:I

.field private totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/qinyue/vcommon/http/HttpPageInfoBean$1;

    invoke-direct {v0}, Lcom/qinyue/vcommon/http/HttpPageInfoBean$1;-><init>()V

    sput-object v0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->page:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->pageNum:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->totalPage:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->page:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->pageNum:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->totalPage:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 26
    iget p2, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->page:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p2, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->pageNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget p2, p0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;->totalPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
