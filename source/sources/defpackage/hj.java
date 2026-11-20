package defpackage;

import java.io.File;
import java.nio.ByteBuffer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class hj {
    private static DateFormat a = new SimpleDateFormat("yyyy-MM-dd_HH.mm.ss");
    private static ByteBuffer b;
    private static byte[] c;
    private static int[] d;

    public static String a(File file, int i, int i2) {
        File file2;
        try {
            File file3 = new File(file, "screenshots");
            file3.mkdir();
            ByteBuffer byteBuffer = b;
            if (byteBuffer == null || byteBuffer.capacity() < i * i2) {
                b = BufferUtils.createByteBuffer(i * i2 * 3);
            }
            int[] iArr = d;
            if (iArr == null || iArr.length < i * i2 * 3) {
                int i3 = i * i2;
                c = new byte[i3 * 3];
                d = new int[i3];
            }
            GL11.glPixelStorei(3333, 1);
            GL11.glPixelStorei(3317, 1);
            b.clear();
            GL11.glReadPixels(0, 0, i, i2, 6407, 5121, b);
            b.clear();
            String str = "" + a.format(new Date());
            int i4 = 1;
            while (true) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(i4 == 1 ? "" : "_" + i4);
                sb.append(".png");
                file2 = new File(file3, sb.toString());
                if (!file2.exists()) {
                    break;
                }
                i4++;
            }
            b.get(c);
            for (int i5 = 0; i5 < i; i5++) {
                for (int i6 = 0; i6 < i2; i6++) {
                    byte[] bArr = c;
                    int i7 = ((((i2 - i6) - 1) * i) + i5) * 3;
                    d[(i6 * i) + i5] = (bArr[i7 + 2] & 255) | ((bArr[i7 + 0] & 255) << 16) | (-16777216) | ((bArr[i7 + 1] & 255) << 8);
                }
            }
            BufferedImage bufferedImage = new BufferedImage(i, i2, 1);
            bufferedImage.setRGB(0, 0, i, i2, d, 0, i);
            ImageIO.write(bufferedImage, "png", file2);
            return "Saved screenshot as " + file2.getName();
        } catch (Exception e) {
            e.printStackTrace();
            return "Failed to save: " + e;
        }
    }
}
