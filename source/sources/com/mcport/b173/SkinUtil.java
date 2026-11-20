package com.mcport.b173;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class SkinUtil {
    SkinUtil() {
    }

    static String validate(Bitmap bitmap) {
        if (bitmap == null) {
            return "Not a readable PNG image.";
        }
        if (bitmap.getWidth() == 64 && (bitmap.getHeight() == 32 || bitmap.getHeight() == 64)) {
            return null;
        }
        return "Skins must be 64x32 (or 64x64) pixels; this one is " + bitmap.getWidth() + "x" + bitmap.getHeight() + ".";
    }

    static Bitmap load(File file) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        return BitmapFactory.decodeFile(file.getPath(), options);
    }

    static Bitmap defaultSkin(Context context) {
        try {
            InputStream resourceAsStream = SkinUtil.class.getResourceAsStream("/mob/char.png");
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = false;
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(resourceAsStream, null, options);
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                return bitmapDecodeStream;
            } catch (Throwable th) {
                if (resourceAsStream != null) {
                    try {
                        resourceAsStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    static Bitmap preview(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i * 16, i * 32, Bitmap.Config.ARGB_8888);
        if (bitmap == null) {
            return bitmapCreateBitmap;
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setFilterBitmap(false);
        paint.setAntiAlias(false);
        part(canvas, paint, bitmap, 8, 8, 8, 8, 4, 0, i);
        part(canvas, paint, bitmap, 40, 8, 8, 8, 4, 0, i);
        part(canvas, paint, bitmap, 20, 20, 8, 12, 4, 8, i);
        part(canvas, paint, bitmap, 44, 20, 4, 12, 0, 8, i);
        partMirror(canvas, paint, bitmap, 44, 20, 4, 12, 12, 8, i);
        part(canvas, paint, bitmap, 4, 20, 4, 12, 4, 20, i);
        partMirror(canvas, paint, bitmap, 4, 20, 4, 12, 8, 20, i);
        return bitmapCreateBitmap;
    }

    private static void part(Canvas canvas, Paint paint, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        canvas.drawBitmap(bitmap, new Rect(i, i2, i + i3, i2 + i4), new Rect(i5 * i7, i6 * i7, (i5 + i3) * i7, (i6 + i4) * i7), paint);
    }

    private static void partMirror(Canvas canvas, Paint paint, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        canvas.save();
        canvas.scale(-1.0f, 1.0f, (i5 + (i3 / 2.0f)) * i7, 0.0f);
        part(canvas, paint, bitmap, i, i2, i3, i4, i5, i6, i7);
        canvas.restore();
    }

    static void copy(InputStream inputStream, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStream.read(bArr);
                if (i <= 0) {
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
