.class Lcom/android/exsettings/users/EditUserPhotoController$3;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/EditUserPhotoController;

.field final synthetic val$cropped:Z

.field final synthetic val$data:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/EditUserPhotoController;ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/users/EditUserPhotoController;
    .param p2, "val$cropped"    # Z
    .param p3, "val$data"    # Landroid/net/Uri;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    iput-boolean p2, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->val$cropped:Z

    iput-object p3, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->val$cropped:Z

    if-eqz v13, :cond_3

    .line 246
    const/4 v5, 0x0

    .line 248
    .local v5, "imageStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/exsettings/users/EditUserPhotoController;->-get0(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->val$data:Landroid/net/Uri;

    .line 248
    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 250
    .local v5, "imageStream":Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 255
    if-eqz v5, :cond_0

    .line 257
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-object v13

    .line 258
    :catch_0
    move-exception v6

    .line 259
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "EditUserPhotoController"

    const-string/jumbo v15, "Cannot close image stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v5    # "imageStream":Ljava/io/InputStream;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 252
    .local v3, "fe":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string/jumbo v13, "EditUserPhotoController"

    const-string/jumbo v14, "Cannot find image file"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    const/4 v13, 0x0

    .line 255
    if-eqz v5, :cond_1

    .line 257
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 253
    :cond_1
    :goto_1
    return-object v13

    .line 258
    :catch_2
    move-exception v6

    .line 259
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "EditUserPhotoController"

    const-string/jumbo v15, "Cannot close image stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 254
    .end local v3    # "fe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 255
    if-eqz v5, :cond_2

    .line 257
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    :cond_2
    :goto_2
    throw v13

    .line 258
    :catch_3
    move-exception v6

    .line 259
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "EditUserPhotoController"

    const-string/jumbo v15, "Cannot close image stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 265
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/exsettings/users/EditUserPhotoController;->-get4(Lcom/android/exsettings/users/EditUserPhotoController;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v14}, Lcom/android/exsettings/users/EditUserPhotoController;->-get4(Lcom/android/exsettings/users/EditUserPhotoController;)I

    move-result v14

    .line 266
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 265
    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 267
    .local v2, "croppedImage":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    .line 270
    .local v4, "fullImage":Landroid/graphics/Bitmap;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/exsettings/users/EditUserPhotoController;->-get0(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->val$data:Landroid/net/Uri;

    .line 270
    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 272
    .restart local v5    # "imageStream":Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v4

    .line 276
    .local v4, "fullImage":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_4

    .line 277
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 278
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 277
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 279
    .local v11, "squareSize":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v13, v11

    div-int/lit8 v7, v13, 0x2

    .line 280
    .local v7, "left":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v13, v11

    div-int/lit8 v12, v13, 0x2

    .line 281
    .local v12, "top":I
    new-instance v10, Landroid/graphics/Rect;

    .line 282
    add-int v13, v7, v11

    add-int v14, v12, v11

    .line 281
    invoke-direct {v10, v7, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    .local v10, "rectSource":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/exsettings/users/EditUserPhotoController;->-get4(Lcom/android/exsettings/users/EditUserPhotoController;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v14}, Lcom/android/exsettings/users/EditUserPhotoController;->-get4(Lcom/android/exsettings/users/EditUserPhotoController;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v9, v15, v0, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 284
    .local v9, "rectDest":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 285
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v4, v10, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 286
    return-object v2

    .line 273
    .end local v5    # "imageStream":Ljava/io/InputStream;
    .end local v7    # "left":I
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "rectDest":Landroid/graphics/Rect;
    .end local v10    # "rectSource":Landroid/graphics/Rect;
    .end local v11    # "squareSize":I
    .end local v12    # "top":I
    .local v4, "fullImage":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v3

    .line 274
    .restart local v3    # "fe":Ljava/io/FileNotFoundException;
    const/4 v13, 0x0

    return-object v13

    .line 289
    .end local v3    # "fe":Ljava/io/FileNotFoundException;
    .local v4, "fullImage":Landroid/graphics/Bitmap;
    .restart local v5    # "imageStream":Ljava/io/InputStream;
    :cond_4
    const/4 v13, 0x0

    return-object v13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 244
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/users/EditUserPhotoController$3;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v0, p1}, Lcom/android/exsettings/users/EditUserPhotoController;->-set0(Lcom/android/exsettings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 298
    iget-object v0, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    .line 299
    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/exsettings/users/EditUserPhotoController;->-get1(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v2}, Lcom/android/exsettings/users/EditUserPhotoController;->-get2(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Lcom/android/exsettingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/exsettingslib/drawable/CircleFramedDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exsettings/users/EditUserPhotoController;->-set1(Lcom/android/exsettings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 300
    iget-object v0, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/exsettings/users/EditUserPhotoController;->-get1(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/exsettings/users/EditUserPhotoController;->-get3(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/exsettings/users/EditUserPhotoController;->-get0(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "TakeEditUserPhoto2.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 303
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/exsettings/users/EditUserPhotoController$3;->this$0:Lcom/android/exsettings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/exsettings/users/EditUserPhotoController;->-get0(Lcom/android/exsettings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "CropEditUserPhoto.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 295
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bitmap"    # Ljava/lang/Object;

    .prologue
    .line 295
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/users/EditUserPhotoController$3;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
