.class Lcom/amap/api/mapcore/a;
.super Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
.source "AMapCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/a$1;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/amap/mapcore/IPoint;

.field b:F

.field c:F

.field d:F

.field e:Lcom/autonavi/amap/mapcore/IPoint;

.field private f:Lcom/amap/api/mapcore/b;

.field private g:F

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/b;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;-><init>()V

    .line 62
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/amap/api/mapcore/a;->g:F

    .line 132
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    .line 136
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 35
    iput-object p1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    .line 36
    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;II)F
    .locals 18

    .prologue
    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/b;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v15

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 254
    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 255
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 256
    new-instance v12, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v12}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v7 .. v12}, Lcom/amap/api/mapcore/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 259
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v12, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v2

    int-to-double v3, v1

    .line 260
    iget v1, v12, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    .line 261
    const-wide/16 v7, 0x0

    cmpg-double v5, v3, v7

    if-gtz v5, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L

    .line 262
    :cond_0
    const-wide/16 v7, 0x0

    cmpg-double v5, v1, v7

    if-gtz v5, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L

    .line 263
    :cond_1
    move/from16 v0, p3

    int-to-double v7, v0

    div-double v3, v7, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x4000000000000000L

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    .line 264
    move/from16 v0, p4

    int-to-double v7, v0

    div-double v1, v7, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v7, 0x4000000000000000L

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v1, v7

    .line 265
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 266
    sub-double v1, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3e7ad7f29abcaf48L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    const/4 v1, 0x1

    move v13, v1

    .line 267
    :goto_0
    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/x;->b(F)F

    move-result v1

    .line 269
    const-wide v16, 0x3fb999999999999aL

    .line 271
    :goto_1
    float-to-double v1, v1

    add-double v1, v1, v16

    double-to-float v1, v1

    .line 272
    invoke-static {v1}, Lcom/amap/api/mapcore/util/x;->b(F)F

    move-result v14

    .line 273
    invoke-virtual {v15, v14}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 274
    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v7 .. v12}, Lcom/amap/api/mapcore/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 279
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v12, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    .line 280
    iget v3, v12, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v4, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    .line 282
    if-eqz v13, :cond_5

    move/from16 v0, p3

    int-to-double v3, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_6

    .line 284
    :cond_2
    float-to-double v1, v14

    sub-double v1, v1, v16

    double-to-float v14, v1

    .line 293
    :cond_3
    return v14

    .line 266
    :cond_4
    const/4 v1, 0x0

    move v13, v1

    goto :goto_0

    .line 282
    :cond_5
    move/from16 v0, p4

    int-to-double v1, v0

    cmpl-double v1, v3, v1

    if-gez v1, :cond_2

    .line 288
    :cond_6
    const/high16 v1, 0x41a00000

    cmpl-float v1, v14, v1

    if-gez v1, :cond_3

    move v1, v14

    goto :goto_1
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 2

    .prologue
    .line 559
    iget v0, p0, Lcom/amap/api/mapcore/a;->h:I

    iget v1, p0, Lcom/amap/api/mapcore/a;->i:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 3

    .prologue
    .line 563
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 564
    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 565
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 566
    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v2, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 567
    return-object v1
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;F)V
    .locals 2

    .prologue
    .line 505
    iget v0, p0, Lcom/amap/api/mapcore/a;->h:I

    iget v1, p0, Lcom/amap/api/mapcore/a;->i:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;FII)V

    .line 507
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;FII)V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0, p1, p3, p4}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 511
    invoke-virtual {p1, p2}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 512
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V

    .line 514
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V
    .locals 1

    .prologue
    .line 500
    iget v0, p2, Lcom/amap/api/mapcore/m;->g:F

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 501
    iget-object v0, p2, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 502
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lcom/amap/api/mapcore/a;->h:I

    iget v1, p0, Lcom/amap/api/mapcore/a;->i:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V

    .line 546
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;FFF)V
    .locals 0

    .prologue
    .line 518
    invoke-virtual {p1, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 519
    invoke-virtual {p1, p4}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 520
    invoke-virtual {p1, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 521
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 522
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V
    .locals 4

    .prologue
    .line 550
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 551
    invoke-direct {p0, p1, p3, p4}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 552
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 553
    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 554
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 556
    return-void
.end method

.method private b(Lcom/amap/api/mapcore/m;)V
    .locals 13

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v2

    .line 217
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v3

    .line 218
    iget-object v4, p1, Lcom/amap/api/mapcore/m;->i:Lcom/amap/api/maps/model/LatLngBounds;

    .line 219
    iget v0, p1, Lcom/amap/api/mapcore/m;->k:I

    .line 220
    iget v5, p1, Lcom/amap/api/mapcore/m;->l:I

    .line 221
    iget v6, p1, Lcom/amap/api/mapcore/m;->j:I

    .line 223
    new-instance v7, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 224
    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 225
    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v9, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v11, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12, v7}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 227
    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v9, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v11, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12, v8}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 229
    iget v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v9, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v9, v1, v9

    .line 230
    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v10, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v10, v1, v10

    .line 231
    mul-int/lit8 v1, v6, 0x2

    sub-int v1, v0, v1

    .line 232
    mul-int/lit8 v0, v6, 0x2

    sub-int v0, v5, v0

    .line 233
    if-gez v9, :cond_0

    if-gez v10, :cond_0

    .line 247
    :goto_0
    return-void

    .line 236
    :cond_0
    if-gtz v1, :cond_1

    const/4 v1, 0x1

    .line 237
    :cond_1
    if-gtz v0, :cond_2

    const/4 v0, 0x1

    .line 238
    :cond_2
    iget-object v5, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-object v4, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, v5, v4, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;II)F

    move-result v0

    .line 240
    iget v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 241
    iget v4, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v5, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 242
    invoke-virtual {v3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 243
    invoke-virtual {v3, v1, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 245
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 246
    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0
.end method

.method private b(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V
    .locals 1

    .prologue
    .line 526
    iget v0, p2, Lcom/amap/api/mapcore/m;->d:F

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 527
    iget-object v0, p2, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 528
    return-void
.end method

.method private c(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V
    .locals 2

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 533
    iget v1, p2, Lcom/amap/api/mapcore/m;->f:F

    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 534
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 535
    return-void
.end method

.method private d(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V
    .locals 2

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 540
    iget v1, p2, Lcom/amap/api/mapcore/m;->g:F

    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 541
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 542
    return-void
.end method


# virtual methods
.method public OnMapDestory(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 572
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 573
    return-void
.end method

.method public OnMapLoaderError(I)V
    .locals 3

    .prologue
    .line 614
    const-string v0, "MapCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMapLoaderError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 616
    return-void
.end method

.method public OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 12

    .prologue
    const/16 v1, 0x7da

    const/16 v11, 0x7db

    const/4 v3, 0x0

    .line 66
    const/4 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/b;->J()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/b;->K()V

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    if-eqz v2, :cond_8

    .line 72
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->z()F

    move-result v10

    .line 73
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/b;->a:Lcom/amap/api/mapcore/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/am;->a()Lcom/amap/api/mapcore/al;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 76
    iget v0, v6, Lcom/amap/api/mapcore/al;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 77
    invoke-virtual {v6}, Lcom/amap/api/mapcore/al;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v2, 0x4

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 87
    :cond_2
    :goto_1
    iget v0, v6, Lcom/amap/api/mapcore/al;->a:I

    if-ne v0, v11, :cond_5

    .line 88
    iget-boolean v0, v6, Lcom/amap/api/mapcore/al;->b:Z

    if-eqz v0, :cond_4

    .line 89
    const/4 v6, 0x3

    move-object v4, p1

    move v5, v11

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    move v2, v3

    move v4, v3

    move v5, v3

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_1

    :cond_4
    move-object v4, p1

    move v5, v11

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v3

    .line 101
    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_0

    .line 109
    :cond_5
    iget v0, v6, Lcom/amap/api/mapcore/al;->a:I

    const/16 v2, 0x7dc

    if-ne v0, v2, :cond_1

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-boolean v2, v6, Lcom/amap/api/mapcore/al;->b:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/b;->j(Z)V

    goto :goto_0

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 114
    iget v0, p0, Lcom/amap/api/mapcore/a;->b:F

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/b;->n()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/amap/api/mapcore/a;->g:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/b;->i:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/b;->i:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    move v0, v10

    .line 129
    :cond_8
    iput v0, p0, Lcom/amap/api/mapcore/a;->g:F

    .line 130
    return-void
.end method

.method public OnMapReferencechanged(Lcom/autonavi/amap/mapcore/MapCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->u()Lcom/amap/api/mapcore/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->e()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->u()Lcom/amap/api/mapcore/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->f()V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/b;->i(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->P()V

    .line 592
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public OnMapSufaceChanged(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;II)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public OnMapSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapSurfaceCreate(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 41
    return-void
.end method

.method public OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/b;->g:Lcom/amap/api/mapcore/t;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/b;->L()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/t;->a(Ljavax/microedition/khronos/opengles/GL10;ZI)V

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/b;->f:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/b;->f:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/CustomRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 54
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 631
    iput p1, p0, Lcom/amap/api/mapcore/a;->h:I

    .line 632
    iput p2, p0, Lcom/amap/api/mapcore/a;->i:I

    .line 633
    return-void
.end method

.method a(Lcom/amap/api/mapcore/m;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f800000

    .line 304
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v6

    .line 305
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    .line 306
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget v2, p1, Lcom/amap/api/mapcore/m;->d:F

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/b;->b(F)F

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/m;->d:F

    .line 308
    iget v0, p1, Lcom/amap/api/mapcore/m;->f:F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/x;->a(F)F

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/m;->f:F

    .line 311
    sget-object v0, Lcom/amap/api/mapcore/a$1;->a:[I

    iget-object v2, p1, Lcom/amap/api/mapcore/m;->a:Lcom/amap/api/mapcore/m$a;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/m$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 493
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 496
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-boolean v0, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 319
    :goto_1
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    goto :goto_1

    .line 323
    :pswitch_1
    iget-boolean v0, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->d(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V

    .line 328
    :goto_2
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 326
    :cond_1
    iget v0, p1, Lcom/amap/api/mapcore/m;->g:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    goto :goto_2

    .line 332
    :pswitch_2
    iget-boolean v0, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v0, :cond_2

    .line 333
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V

    .line 340
    :goto_3
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 336
    :cond_2
    iget v0, p1, Lcom/amap/api/mapcore/m;->g:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 337
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    goto :goto_3

    .line 344
    :pswitch_3
    iget-boolean v0, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v0, :cond_3

    .line 345
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->c(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V

    .line 349
    :goto_4
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 347
    :cond_3
    iget v0, p1, Lcom/amap/api/mapcore/m;->f:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    goto :goto_4

    .line 353
    :pswitch_4
    iget-boolean v0, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v0, :cond_4

    .line 354
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->b(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/amap/api/mapcore/m;)V

    .line 360
    :goto_5
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_0

    .line 356
    :cond_4
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 358
    iget v0, p1, Lcom/amap/api/mapcore/m;->d:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_5

    .line 364
    :pswitch_5
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 365
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 366
    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4, v7, v8, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 368
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/x;->b(F)F

    move-result v3

    .line 370
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v4, v0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    .line 371
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->h:Lcom/amap/api/maps/model/CameraPosition;

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/x;->a(F)F

    move-result v5

    .line 373
    iget-boolean v0, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 374
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;FFF)V

    .line 382
    :goto_6
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 377
    :cond_5
    iget v0, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 378
    invoke-virtual {v1, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 379
    invoke-virtual {v1, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 380
    invoke-virtual {v1, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    goto :goto_6

    .line 386
    :pswitch_6
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    add-float/2addr v0, v3

    .line 387
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/b;->b(F)F

    move-result v0

    .line 388
    iget-boolean v2, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v2, :cond_6

    .line 389
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    .line 393
    :goto_7
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 391
    :cond_6
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_7

    .line 397
    :pswitch_7
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    sub-float/2addr v0, v3

    .line 398
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/b;->b(F)F

    move-result v0

    .line 399
    iget-boolean v2, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v2, :cond_7

    .line 400
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    .line 404
    :goto_8
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 405
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 402
    :cond_7
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_8

    .line 409
    :pswitch_8
    iget v0, p1, Lcom/amap/api/mapcore/m;->d:F

    .line 410
    iget-boolean v2, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v2, :cond_8

    .line 411
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    .line 415
    :goto_9
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 413
    :cond_8
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_9

    .line 419
    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v2

    iget v3, p1, Lcom/amap/api/mapcore/m;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/b;->b(F)F

    move-result v0

    .line 421
    iget-object v2, p1, Lcom/amap/api/mapcore/m;->m:Landroid/graphics/Point;

    .line 423
    if-eqz v2, :cond_9

    .line 424
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;FII)V

    .line 432
    :goto_a
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 426
    :cond_9
    iget-boolean v2, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v2, :cond_a

    .line 427
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;F)V

    goto :goto_a

    .line 429
    :cond_a
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    goto :goto_a

    .line 436
    :pswitch_a
    iget v0, p1, Lcom/amap/api/mapcore/m;->b:F

    .line 437
    iget v2, p1, Lcom/amap/api/mapcore/m;->c:F

    .line 438
    iget-object v3, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/b;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 439
    iget-object v3, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/b;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 440
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 441
    iget-object v4, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    float-to-int v0, v0

    float-to-int v2, v2

    invoke-virtual {v4, v0, v2, v3}, Lcom/amap/api/mapcore/b;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 442
    iget v0, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 443
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 447
    :pswitch_b
    sget-object v0, Lcom/amap/api/mapcore/m$a;->n:Lcom/amap/api/mapcore/m$a;

    iput-object v0, p1, Lcom/amap/api/mapcore/m;->a:Lcom/amap/api/mapcore/m$a;

    .line 448
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/m;->k:I

    .line 449
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/amap/api/mapcore/m;->l:I

    .line 450
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/m;)V

    goto/16 :goto_0

    .line 454
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/m;)V

    goto/16 :goto_0

    .line 458
    :pswitch_d
    iget-boolean v0, p1, Lcom/amap/api/mapcore/m;->n:Z

    if-eqz v0, :cond_b

    .line 459
    iget-object v2, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, p1, Lcom/amap/api/mapcore/m;->d:F

    iget v4, p1, Lcom/amap/api/mapcore/m;->g:F

    iget v5, p1, Lcom/amap/api/mapcore/m;->f:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;FFF)V

    .line 471
    :goto_b
    invoke-virtual {v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto/16 :goto_0

    .line 465
    :cond_b
    iget-object v0, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p1, Lcom/amap/api/mapcore/m;->o:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 467
    iget v0, p1, Lcom/amap/api/mapcore/m;->d:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 468
    iget v0, p1, Lcom/amap/api/mapcore/m;->g:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 469
    iget v0, p1, Lcom/amap/api/mapcore/m;->f:F

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    goto :goto_b

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method a(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v5

    .line 143
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v6

    .line 144
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v7

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v4, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    move v0, v1

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v2, v2, Lcom/amap/api/mapcore/b;->a:Lcom/amap/api/mapcore/am;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/am;->c()Lcom/amap/api/mapcore/m;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/m;)V

    .line 153
    iget-boolean v2, v2, Lcom/amap/api/mapcore/m;->p:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v2

    goto :goto_0

    .line 163
    :catch_0
    move-exception v2

    .line 164
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/a;->b:F

    .line 168
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/a;->c:F

    .line 169
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/a;->d:F

    .line 170
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v4, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 171
    iget v2, p0, Lcom/amap/api/mapcore/a;->b:F

    cmpl-float v2, v5, v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/amap/api/mapcore/a;->c:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_1

    iget v2, p0, Lcom/amap/api/mapcore/a;->d:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v4, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v4, p0, Lcom/amap/api/mapcore/a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-eq v2, v4, :cond_2

    :cond_1
    move v1, v3

    .line 177
    :cond_2
    if-eqz v1, :cond_8

    .line 178
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/b;->e(Z)V

    .line 179
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/b;->w()Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_3

    .line 182
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 183
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->a:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v3, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 184
    new-instance v2, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v10, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget v1, p0, Lcom/amap/api/mapcore/a;->b:F

    iget v4, p0, Lcom/amap/api/mapcore/a;->c:F

    iget v8, p0, Lcom/amap/api/mapcore/a;->d:F

    invoke-direct {v2, v3, v1, v4, v8}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    .line 186
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/b;->a(Lcom/amap/api/maps/model/CameraPosition;)V

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/b;->A()V

    .line 192
    :goto_1
    if-eqz v0, :cond_4

    .line 193
    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/b;->i(Z)V

    .line 197
    :goto_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 198
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 199
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    iget-object v1, v1, Lcom/amap/api/mapcore/b;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    :cond_4
    iget v0, p0, Lcom/amap/api/mapcore/a;->c:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_5

    iget v0, p0, Lcom/amap/api/mapcore/a;->d:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->u()Lcom/amap/api/mapcore/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->e()V

    .line 205
    :cond_6
    iget v0, p0, Lcom/amap/api/mapcore/a;->b:F

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->u()Lcom/amap/api/mapcore/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->f()V

    .line 212
    :cond_7
    :goto_3
    return-void

    .line 190
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/b;->e(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 209
    :catch_1
    move-exception v0

    .line 210
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 196
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/b;->i(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMapSvrAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "http://mm.amap.com"

    return-object v0
.end method

.method public isMapEngineValid()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSetParameter(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/b;->e(Z)V

    .line 628
    return-void
.end method
