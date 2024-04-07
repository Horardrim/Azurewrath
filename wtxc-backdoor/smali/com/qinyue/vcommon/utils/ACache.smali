.class public final Lcom/qinyue/vcommon/utils/ACache;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinyue/vcommon/utils/ACache$CacheHelper;,
        Lcom/qinyue/vcommon/utils/ACache$CacheManager;
    }
.end annotation


# static fields
.field private static final CACHE_MAP:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/qinyue/vcommon/utils/ACache;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY:I = 0x15180

.field private static final DEFAULT_MAX_COUNT:I = 0x7fffffff

.field private static final DEFAULT_MAX_SIZE:J = 0x7fffffffffffffffL

.field public static final HOUR:I = 0xe10

.field public static final MIN:I = 0x3c

.field public static final SEC:I = 0x1


# instance fields
.field private mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/qinyue/vcommon/utils/ACache;->CACHE_MAP:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 7

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "can\'t make dirs in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 167
    :cond_1
    :goto_0
    new-instance v6, Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;-><init>(Ljava/io/File;JILcom/qinyue/vcommon/utils/ACache$CacheManager-IA;)V

    iput-object v6, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    return-void
.end method

.method public static get()Lcom/qinyue/vcommon/utils/ACache;
    .locals 4

    const-string v0, ""

    const-wide v1, 0x7fffffffffffffffL

    const v3, 0x7fffffff

    .line 84
    invoke-static {v0, v1, v2, v3}, Lcom/qinyue/vcommon/utils/ACache;->get(Ljava/lang/String;JI)Lcom/qinyue/vcommon/utils/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(JI)Lcom/qinyue/vcommon/utils/ACache;
    .locals 1

    const-string v0, ""

    .line 109
    invoke-static {v0, p0, p1, p2}, Lcom/qinyue/vcommon/utils/ACache;->get(Ljava/lang/String;JI)Lcom/qinyue/vcommon/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/io/File;)Lcom/qinyue/vcommon/utils/ACache;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    const v2, 0x7fffffff

    .line 139
    invoke-static {p0, v0, v1, v2}, Lcom/qinyue/vcommon/utils/ACache;->get(Ljava/io/File;JI)Lcom/qinyue/vcommon/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/io/File;JI)Lcom/qinyue/vcommon/utils/ACache;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/qinyue/vcommon/utils/ACache;->CACHE_MAP:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinyue/vcommon/utils/ACache;

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Lcom/qinyue/vcommon/utils/ACache;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;-><init>(Ljava/io/File;JI)V

    .line 158
    invoke-virtual {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public static get(Ljava/lang/String;)Lcom/qinyue/vcommon/utils/ACache;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    const v2, 0x7fffffff

    .line 97
    invoke-static {p0, v0, v1, v2}, Lcom/qinyue/vcommon/utils/ACache;->get(Ljava/lang/String;JI)Lcom/qinyue/vcommon/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;JI)Lcom/qinyue/vcommon/utils/ACache;
    .locals 2

    .line 122
    invoke-static {p0}, Lcom/qinyue/vcommon/utils/ACache;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ACache"

    .line 125
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/qinyue/vcommon/utils/XUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-static {v0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->get(Ljava/io/File;JI)Lcom/qinyue/vcommon/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1097
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1098
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mclear(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)Z

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, p1, v0}, Lcom/qinyue/vcommon/utils/ACache;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 436
    :cond_0
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {v0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mgetFileIfExists(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 226
    :cond_0
    invoke-static {v0}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smreadFile2Bytes(Ljava/io/File;)[B

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smisDue([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {v0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mremoveByKey(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/lang/String;)Z

    return-object p2

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {p1, v0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mupdateModify(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/io/File;)V

    .line 232
    invoke-static {v1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smgetDataWithoutDueTime([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getCacheCount()I
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mgetCacheCount(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)I

    move-result v0

    return v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {v0}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mgetCacheSize(Lcom/qinyue/vcommon/utils/ACache$CacheManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, p1, v0}, Lcom/qinyue/vcommon/utils/ACache;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 482
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 486
    :cond_0
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbytes2Drawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/qinyue/vcommon/utils/ACache;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 385
    :cond_0
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbytes2JSONArray([B)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/qinyue/vcommon/utils/ACache;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 334
    :cond_0
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbytes2JSONObject([B)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 539
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 543
    :cond_0
    invoke-static {p1, p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbytes2Parcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, p1, v0}, Lcom/qinyue/vcommon/utils/ACache;->getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 591
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 595
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbytes2Object([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, v0}, Lcom/qinyue/vcommon/utils/ACache;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/utils/ACache;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 282
    :cond_0
    invoke-static {p1}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbytes2String([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, -0x1

    .line 400
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 411
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smbitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 450
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smdrawable2Bytes(Landroid/graphics/drawable/Drawable;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 461
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smdrawable2Bytes(Landroid/graphics/drawable/Drawable;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, -0x1

    .line 500
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;I)V
    .locals 0

    .line 513
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smparcelable2Bytes(Landroid/os/Parcelable;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    const/4 v0, -0x1

    .line 557
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    .line 570
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smserializable2Bytes(Ljava/io/Serializable;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 246
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 257
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smstring2Bytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    const/4 v0, -0x1

    .line 349
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 0

    .line 360
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smjsonArray2Bytes(Lorg/json/JSONArray;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, -0x1

    .line 296
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 309
    invoke-static {p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smjsonObject2Bytes(Lorg/json/JSONObject;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, -0x1

    .line 181
    invoke-virtual {p0, p1, p2, v0}, Lcom/qinyue/vcommon/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 1

    .line 192
    array-length v0, p2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_1

    .line 196
    invoke-static {p3, p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smnewByteArrayWithTime(I[B)[B

    move-result-object p2

    .line 198
    :cond_1
    iget-object p3, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {p3, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mgetFileBeforePut(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 199
    invoke-static {p1, p2}, Lcom/qinyue/vcommon/utils/ACache$CacheHelper;->-$$Nest$smwriteFileFromBytes(Ljava/io/File;[B)V

    .line 200
    iget-object p2, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {p2, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mupdateModify(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/io/File;)V

    .line 201
    iget-object p2, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {p2, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mput(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/io/File;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/qinyue/vcommon/utils/ACache;->mCacheManager:Lcom/qinyue/vcommon/utils/ACache$CacheManager;

    invoke-static {v0, p1}, Lcom/qinyue/vcommon/utils/ACache$CacheManager;->-$$Nest$mremoveByKey(Lcom/qinyue/vcommon/utils/ACache$CacheManager;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
