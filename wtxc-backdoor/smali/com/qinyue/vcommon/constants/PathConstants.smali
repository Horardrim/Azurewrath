.class public final Lcom/qinyue/vcommon/constants/PathConstants;
.super Ljava/lang/Object;
.source "PathConstants.java"


# static fields
.field public static final APP_EXT_STORAGE_PATH:Ljava/lang/String;

.field public static final EXT_DCIM_PATH:Ljava/lang/String;

.field public static final EXT_DOWNLOADS_PATH:Ljava/lang/String;

.field public static final EXT_PICTURES_PATH:Ljava/lang/String;

.field public static final EXT_STORAGE_DIR:Ljava/lang/String;

.field public static final EXT_STORAGE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/qinyue/vcommon/utils/PathUtils;->getExtStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinyue/vcommon/constants/PathConstants;->EXT_STORAGE_PATH:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinyue/vcommon/constants/PathConstants;->EXT_STORAGE_DIR:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinyue/vcommon/constants/PathConstants;->APP_EXT_STORAGE_PATH:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/qinyue/vcommon/utils/PathUtils;->getExtDownloadsPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinyue/vcommon/constants/PathConstants;->EXT_DOWNLOADS_PATH:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/qinyue/vcommon/utils/PathUtils;->getExtPicturesPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinyue/vcommon/constants/PathConstants;->EXT_PICTURES_PATH:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/qinyue/vcommon/utils/PathUtils;->getExtDCIMPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinyue/vcommon/constants/PathConstants;->EXT_DCIM_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
