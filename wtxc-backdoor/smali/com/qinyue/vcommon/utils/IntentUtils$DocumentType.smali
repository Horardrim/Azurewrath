.class public interface abstract annotation Lcom/qinyue/vcommon/utils/IntentUtils$DocumentType;
.super Ljava/lang/Object;
.source "IntentUtils.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinyue/vcommon/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DocumentType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ANY:Ljava/lang/String; = "*/*"

.field public static final AUDIO:Ljava/lang/String; = "audio/*"

.field public static final IMAGE:Ljava/lang/String; = "image/*"

.field public static final VIDEO:Ljava/lang/String; = "video/*"
