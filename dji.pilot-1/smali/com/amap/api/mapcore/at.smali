.class Lcom/amap/api/mapcore/at;
.super Ljava/lang/Object;
.source "PolygonDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/ad;


# static fields
.field private static p:F


# instance fields
.field private a:Lcom/amap/api/mapcore/v;

.field private b:F

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:F

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/nio/FloatBuffer;

.field private k:Ljava/nio/FloatBuffer;

.field private l:I

.field private m:I

.field private n:Lcom/amap/api/maps/model/LatLngBounds;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    const v0, 0x501502f9

    sput v0, Lcom/amap/api/mapcore/at;->p:F

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/v;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/at;->b:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/at;->c:Z

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    iput v1, p0, Lcom/amap/api/mapcore/at;->l:I

    iput v1, p0, Lcom/amap/api/mapcore/at;->m:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->n:Lcom/amap/api/maps/model/LatLngBounds;

    .line 39
    iput-boolean v1, p0, Lcom/amap/api/mapcore/at;->o:Z

    .line 42
    iput-object p1, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/at;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 335
    array-length v2, p0

    .line 336
    new-array v3, v2, [Lcom/autonavi/amap/mapcore/FPoint;

    move v1, v0

    .line 337
    :goto_0
    if-ge v1, v2, :cond_0

    .line 338
    new-instance v4, Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sget v6, Lcom/amap/api/mapcore/at;->p:F

    mul-float/2addr v5, v6

    aget-object v6, p0, v1

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sget v7, Lcom/amap/api/mapcore/at;->p:F

    mul-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    aput-object v4, v3, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-static {v3, v2}, Lcom/amap/api/mapcore/util/w;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Z

    .line 343
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 344
    new-array v4, v3, [Lcom/autonavi/amap/mapcore/FPoint;

    move v1, v0

    .line 345
    :goto_1
    if-ge v1, v3, :cond_1

    .line 346
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    aput-object v0, v4, v1

    .line 347
    aget-object v5, v4, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sget v6, Lcom/amap/api/mapcore/at;->p:F

    div-float/2addr v0, v6

    iput v0, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    .line 348
    aget-object v5, v4, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sget v6, Lcom/amap/api/mapcore/at;->p:F

    div-float/2addr v0, v6

    iput v0, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 350
    :cond_1
    return-object v4
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iput p1, p0, Lcom/amap/api/mapcore/at;->b:F

    .line 79
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    invoke-interface {v0}, Lcom/amap/api/mapcore/v;->H()V

    .line 80
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 81
    return-void
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    iput p1, p0, Lcom/amap/api/mapcore/at;->f:I

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 292
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amap/api/mapcore/at;->h:Ljava/util/List;

    .line 67
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/at;->b(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 69
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/at;->l:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/at;->m:I

    if-nez v0, :cond_3

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/at;->g()V

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/at;->l:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/at;->m:I

    if-lez v0, :cond_4

    .line 269
    iget v1, p0, Lcom/amap/api/mapcore/at;->f:I

    iget v2, p0, Lcom/amap/api/mapcore/at;->g:I

    iget-object v3, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/at;->e:F

    iget-object v5, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/mapcore/at;->l:I

    iget v7, p0, Lcom/amap/api/mapcore/at;->m:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/r;->a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V

    .line 274
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/at;->o:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/amap/api/mapcore/at;->c:Z

    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 92
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    iget-object v2, p0, Lcom/amap/api/mapcore/at;->n:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    invoke-interface {v2}, Lcom/amap/api/mapcore/v;->B()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v2

    .line 247
    if-nez v2, :cond_2

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/at;->n:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/LatLngBounds;->contains(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/at;->n:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/LatLngBounds;->intersects(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/ac;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/mapcore/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/at;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/amap/api/mapcore/at;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/x;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/at;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->a(Ljava/lang/String;)Z

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 54
    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iput p1, p0, Lcom/amap/api/mapcore/at;->e:F

    .line 280
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 281
    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    iput p1, p0, Lcom/amap/api/mapcore/at;->g:I

    .line 302
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 303
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 110
    .line 111
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v7

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 113
    if-eqz p1, :cond_2

    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v6

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amap/api/maps/model/LatLng;

    .line 116
    invoke-virtual {v6, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    iget-wide v1, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/mapcore/v;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v7, v6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-object v1, v6

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 125
    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 127
    iget-object v1, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    .line 128
    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ne v3, v4, :cond_2

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ne v0, v1, :cond_2

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    :cond_2
    invoke-virtual {v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->n:Lcom/amap/api/maps/model/LatLngBounds;

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 140
    :cond_4
    iput v9, p0, Lcom/amap/api/mapcore/at;->l:I

    .line 141
    iput v9, p0, Lcom/amap/api/mapcore/at;->m:I

    .line 142
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    invoke-interface {v0, v9}, Lcom/amap/api/mapcore/v;->e(Z)V

    .line 143
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "Polygon"

    invoke-static {v0}, Lcom/amap/api/mapcore/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->d:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lcom/amap/api/mapcore/at;->b:F

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/amap/api/mapcore/at;->c:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const v9, 0x501502f9

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 167
    iput-boolean v2, p0, Lcom/amap/api/mapcore/at;->o:Z

    .line 168
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    .line 169
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v4, v0, [F

    .line 171
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    .line 172
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    aput-object v6, v3, v1

    .line 173
    iget-object v6, p0, Lcom/amap/api/mapcore/at;->a:Lcom/amap/api/mapcore/v;

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    aget-object v8, v3, v1

    invoke-interface {v6, v7, v0, v8}, Lcom/amap/api/mapcore/v;->b(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 174
    mul-int/lit8 v0, v1, 0x3

    aget-object v6, v3, v1

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v6, v4, v0

    .line 175
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x1

    aget-object v6, v3, v1

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v6, v4, v0

    .line 176
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x2

    aput v10, v4, v0

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {v3}, Lcom/amap/api/mapcore/at;->a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 181
    array-length v1, v0

    if-nez v1, :cond_1

    .line 182
    sget v0, Lcom/amap/api/mapcore/at;->p:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_2

    .line 183
    const v0, 0x4cbebc20

    sput v0, Lcom/amap/api/mapcore/at;->p:F

    .line 187
    :goto_1
    invoke-static {v3}, Lcom/amap/api/mapcore/at;->a([Lcom/autonavi/amap/mapcore/FPoint;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 189
    :cond_1
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [F

    .line 191
    array-length v6, v0

    move v1, v2

    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v7, v0, v2

    .line 192
    mul-int/lit8 v8, v1, 0x3

    iget v9, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v9, v5, v8

    .line 193
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v7, v5, v8

    .line 194
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aput v10, v5, v7

    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 185
    :cond_2
    sput v9, Lcom/amap/api/mapcore/at;->p:F

    goto :goto_1

    .line 198
    :cond_3
    array-length v1, v3

    iput v1, p0, Lcom/amap/api/mapcore/at;->l:I

    .line 199
    array-length v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/at;->m:I

    .line 201
    invoke-static {v4}, Lcom/amap/api/mapcore/util/x;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    .line 202
    invoke-static {v5}, Lcom/amap/api/mapcore/util/x;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;

    .line 204
    return-void
.end method

.method public h()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    iget v0, p0, Lcom/amap/api/mapcore/at;->e:F

    return v0
.end method

.method public i()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    iget v0, p0, Lcom/amap/api/mapcore/at;->f:I

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->j:Ljava/nio/FloatBuffer;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/at;->k:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    const-string v0, "destroy erro"

    const-string v1, "PolygonDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/amap/api/mapcore/at;->o:Z

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amap/api/mapcore/at;->h:Ljava/util/List;

    return-object v0
.end method

.method public m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    iget v0, p0, Lcom/amap/api/mapcore/at;->g:I

    return v0
.end method
