package mcshim.imageio;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import mcshim.awt.image.BufferedImage;
import mcshim.awt.image.RenderedImage;

/* JADX INFO: loaded from: classes.dex */
public final class ImageIO {
    private static int scale(int i, int i2) {
        if (i2 == 8 || i2 == 16) {
            return i;
        }
        if (i2 == 1) {
            return i * 255;
        }
        return i2 == 2 ? i * 85 : i * 17;
    }

    private ImageIO() {
    }

    public static BufferedImage read(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("input == null!");
        }
        try {
            return decodePNG(inputStream);
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static BufferedImage read(URL url) throws IOException {
        if (url == null) {
            throw new IllegalArgumentException("input == null!");
        }
        return read(url.openStream());
    }

    public static BufferedImage read(File file) throws IOException {
        return read(new FileInputStream(file));
    }

    public static boolean write(RenderedImage renderedImage, String str, File file) throws IOException {
        if (!(renderedImage instanceof BufferedImage)) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        try {
            encodePNG((BufferedImage) renderedImage, bufferedOutputStream);
            bufferedOutputStream.close();
            return true;
        } catch (Throwable th) {
            try {
                bufferedOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static int readInt(DataInputStream dataInputStream) throws IOException {
        return dataInputStream.readInt();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    public static BufferedImage decodePNG(InputStream inputStream) throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 16384));
        byte[] bArr = null;
        if (dataInputStream.readLong() != -8552249625308161526L) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i6 = 0;
        byte[] bArr2 = null;
        int unsignedByte = 0;
        int unsignedByte2 = 0;
        int i7 = 0;
        int i8 = 0;
        int unsignedByte3 = 0;
        while (true) {
            int i9 = readInt(dataInputStream);
            int i10 = readInt(dataInputStream);
            if (i9 < 0) {
                throw new IOException("bad PNG chunk");
            }
            byte[] bArr3 = new byte[i9];
            dataInputStream.readFully(bArr3);
            dataInputStream.readInt();
            if (i10 == 1229472850) {
                DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream(bArr3));
                i8 = dataInputStream2.readInt();
                i7 = dataInputStream2.readInt();
                unsignedByte3 = dataInputStream2.readUnsignedByte();
                unsignedByte2 = dataInputStream2.readUnsignedByte();
                dataInputStream2.readUnsignedByte();
                dataInputStream2.readUnsignedByte();
                unsignedByte = dataInputStream2.readUnsignedByte();
            } else if (i10 == 1347179589) {
                bArr = bArr3;
            } else if (i10 == 1951551059) {
                bArr2 = bArr3;
            } else {
                if (i10 == 1229209940) {
                    byteArrayOutputStream.write(bArr3);
                } else if (i10 == 1229278788) {
                    if (i8 <= 0 || i7 <= 0) {
                        throw new IOException("bad PNG header");
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Inflater inflater = new Inflater();
                    inflater.setInput(byteArray);
                    int i11 = 1;
                    if (unsignedByte2 == 0) {
                        i = 1;
                    } else if (unsignedByte2 == 2) {
                        i = 3;
                    } else if (unsignedByte2 == 3) {
                        i = 1;
                    } else {
                        i = unsignedByte2 == 4 ? 2 : 4;
                    }
                    int iMax = Math.max(1, (i * unsignedByte3) / 8);
                    int[] iArr2 = new int[i8 * i7];
                    try {
                        try {
                            if (unsignedByte == 0) {
                                i2 = 4;
                                i3 = unsignedByte2;
                                i4 = i7;
                                i5 = i8;
                                decodePass(inflater, iArr2, i8, i7, 0, 0, 1, 1, i8, i7, unsignedByte3, i3, i, iMax, bArr, bArr2);
                                iArr = iArr2;
                            } else {
                                i2 = 4;
                                i3 = unsignedByte2;
                                i4 = i7;
                                i5 = i8;
                                int[] iArr3 = iArr2;
                                char c = 2;
                                int i12 = 7;
                                int[][] iArr4 = new int[7][];
                                iArr4[i6] = new int[]{i6, i6, 8, 8};
                                iArr4[1] = new int[]{4, i6, 8, 8};
                                iArr4[2] = new int[]{i6, 4, 4, 8};
                                iArr4[3] = new int[]{2, i6, 4, 4};
                                iArr4[4] = new int[]{i6, 2, 2, 4};
                                iArr4[5] = new int[]{1, i6, 2, 2};
                                iArr4[6] = new int[]{i6, 1, 1, 2};
                                int i13 = i6;
                                while (i13 < i12) {
                                    int[] iArr5 = iArr4[i13];
                                    int i14 = iArr5[i6];
                                    int i15 = i5;
                                    int i16 = iArr5[c];
                                    int i17 = (((i15 - i14) + i16) - i11) / i16;
                                    int i18 = iArr5[i11];
                                    int i19 = i4;
                                    int i20 = iArr5[3];
                                    int i21 = (((i19 - i18) + i20) - i11) / i20;
                                    if (i17 <= 0 || i21 <= 0) {
                                        i4 = i19;
                                    } else {
                                        i4 = i19;
                                        decodePass(inflater, iArr3, i15, i4, i14, i18, i16, i20, i17, i21, unsignedByte3, i3, i, iMax, bArr, bArr2);
                                    }
                                    i13++;
                                    i5 = i15;
                                    i11 = i11;
                                    iArr4 = iArr4;
                                    i12 = i12;
                                    iArr3 = iArr3;
                                    i6 = 0;
                                    c = 2;
                                }
                                iArr = iArr3;
                            }
                            int i22 = i5;
                            inflater.end();
                            if (i3 != i2) {
                            }
                            return new BufferedImage(i22, i4, 2, iArr);
                        } catch (DataFormatException e) {
                            throw new IOException("corrupt PNG data", e);
                        }
                    } catch (Throwable th) {
                        inflater.end();
                        throw th;
                    }
                }
                i8 = i8;
                unsignedByte2 = unsignedByte2;
                i7 = i7;
            }
            i6 = 0;
        }
    }

    private static void inflateFully(Inflater inflater, byte[] bArr) throws DataFormatException, IOException {
        int i = 0;
        while (i < bArr.length) {
            int iInflate = inflater.inflate(bArr, i, bArr.length - i);
            if (iInflate == 0) {
                if (inflater.finished() || inflater.needsInput()) {
                    throw new IOException("truncated PNG");
                }
                if (inflater.needsDictionary()) {
                    throw new IOException("PNG dict");
                }
            }
            i += iInflate;
        }
    }

    private static void decodePass(Inflater inflater, int[] iArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, byte[] bArr, byte[] bArr2) throws DataFormatException, IOException {
        int i13;
        int i14 = (((i7 * i11) * i9) + 7) / 8;
        int i15 = 1;
        byte[] bArr3 = new byte[1];
        int i16 = 0;
        byte[] bArr4 = new byte[i14];
        byte[] bArr5 = new byte[i14];
        int i17 = 0;
        while (i17 < i8) {
            inflateFully(inflater, bArr3);
            inflateFully(inflater, bArr5);
            int i18 = bArr3[i16] & 255;
            int i19 = i16;
            while (i19 < i14) {
                int i20 = i19 >= i12 ? bArr5[i19 - i12] & 255 : i16;
                int i21 = bArr4[i19] & 255;
                int i22 = i19 >= i12 ? bArr4[i19 - i12] & 255 : i16;
                int i23 = bArr5[i19] & 255;
                if (i18 == 0) {
                    i13 = i15;
                } else if (i18 == i15) {
                    i13 = i15;
                    i23 += i20;
                } else if (i18 == 2) {
                    i13 = 1;
                    i23 += i21;
                } else if (i18 == 3) {
                    i13 = 1;
                    i23 += (i20 + i21) >>> 1;
                } else if (i18 == 4) {
                    int i24 = (i20 + i21) - i22;
                    int iAbs = Math.abs(i24 - i20);
                    int iAbs2 = Math.abs(i24 - i21);
                    int iAbs3 = Math.abs(i24 - i22);
                    if (iAbs > iAbs2 || iAbs > iAbs3) {
                        i20 = iAbs2 <= iAbs3 ? i21 : i22;
                    }
                    i23 += i20;
                    i13 = 1;
                } else {
                    throw new IOException("bad PNG filter " + i18);
                }
                bArr5[i19] = (byte) i23;
                i19++;
                i12 = i12;
                i15 = i13;
                i16 = 0;
            }
            int i25 = i15;
            int i26 = (i4 + (i17 * i6)) * i;
            int i27 = 0;
            while (i27 < i7) {
                iArr[i26 + i3 + (i27 * i5)] = pixel(bArr5, i27, i9, i10, bArr, bArr2);
                i27++;
                i17 = i17;
            }
            i17++;
            i15 = i25;
            i16 = 0;
            byte[] bArr6 = bArr4;
            bArr4 = bArr5;
            bArr5 = bArr6;
        }
    }

    private static int sample(byte[] bArr, int i, int i2) {
        if (i2 == 8) {
            return bArr[i] & 255;
        }
        if (i2 == 16) {
            return ((raw16(bArr, i) * 255) + 32767) / 65535;
        }
        int i3 = 8 / i2;
        return ((bArr[i / i3] & 255) >> (8 - (((i % i3) + 1) * i2))) & ((1 << i2) - 1);
    }

    private static int raw16(byte[] bArr, int i) {
        int i2 = i * 2;
        return (bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:54:0x0101  */
    private static int pixel(byte[] bArr, int i, int i2, int i3, byte[] bArr2, byte[] bArr3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int i9 = 255;
        if (i3 == 0) {
            int iSample = sample(bArr, i, i2);
            int iScale = scale(iSample, i2);
            if (bArr3 != null && bArr3.length >= 2) {
                int i10 = (bArr3[1] & 255) | ((bArr3[0] & 255) << 8);
                if (i2 == 16) {
                    iSample = raw16(bArr, i);
                }
                i8 = iSample != i10 ? 255 : 0;
            }
            return (i8 << 24) | (iScale << 16) | (iScale << 8) | iScale;
        }
        if (i3 == 2) {
            int i11 = i * 3;
            int iSample2 = sample(bArr, i11, i2);
            int i12 = i11 + 1;
            int iSample3 = sample(bArr, i12, i2);
            int i13 = i11 + 2;
            int iSample4 = sample(bArr, i13, i2);
            if (bArr3 != null && bArr3.length >= 6) {
                i8 = ((i2 == 16 ? raw16(bArr, i11) : iSample2) == ((bArr3[1] & 255) | ((bArr3[0] & 255) << 8)) && (i2 == 16 ? raw16(bArr, i12) : iSample3) == (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) && (i2 == 16 ? raw16(bArr, i13) : iSample4) == ((bArr3[5] & 255) | ((bArr3[4] & 255) << 8))) ? 0 : 255;
            }
            return (i8 << 24) | (iSample2 << 16) | (iSample3 << 8) | iSample4;
        }
        if (i3 != 3) {
            if (i3 != 4) {
                int i14 = i * 4;
                return (sample(bArr, i14 + 3, i2) << 24) | (sample(bArr, i14, i2) << 16) | (sample(bArr, i14 + 1, i2) << 8) | sample(bArr, i14 + 2, i2);
            }
            int i15 = i * 2;
            int iSample5 = sample(bArr, i15, i2);
            return (sample(bArr, i15 + 1, i2) << 24) | (iSample5 << 16) | (iSample5 << 8) | iSample5;
        }
        int iSample6 = sample(bArr, i, i2);
        if (bArr2 == null || (i7 = (i6 = iSample6 * 3) + 2) >= bArr2.length) {
            i4 = 0;
            i5 = 0;
        } else {
            i8 = bArr2[i6] & 255;
            i4 = bArr2[i6 + 1] & 255;
            i5 = bArr2[i7] & 255;
        }
        if (bArr3 != null && iSample6 < bArr3.length) {
            i9 = 255 & bArr3[iSample6];
        }
        return (i9 << 24) | (i8 << 16) | (i4 << 8) | i5;
    }

    public static void encodePNG(BufferedImage bufferedImage, OutputStream outputStream) throws IOException {
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        int i = 0;
        int[] rgb = bufferedImage.getRGB(0, 0, width, height, null, 0, width);
        byte b = 1;
        boolean z = bufferedImage.getType() != 1;
        int i2 = z ? 4 : 3;
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeLong(-8552249625308161526L);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream2.writeInt(width);
        dataOutputStream2.writeInt(height);
        dataOutputStream2.writeByte(8);
        dataOutputStream2.writeByte(z ? 6 : 2);
        dataOutputStream2.writeByte(0);
        dataOutputStream2.writeByte(0);
        dataOutputStream2.writeByte(0);
        chunk(dataOutputStream, 1229472850, byteArrayOutputStream.toByteArray());
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream2, new Deflater(6));
        byte[] bArr = new byte[(i2 * width) + 1];
        int i3 = 0;
        while (i3 < height) {
            bArr[i] = b;
            int i4 = i;
            int i5 = i4;
            int i6 = i5;
            int i7 = i6;
            int i8 = i7;
            int i9 = b;
            while (i4 < width) {
                int i10 = rgb[(i3 * width) + i4];
                int i11 = (i10 >> 16) & 255;
                int[] iArr = rgb;
                int i12 = (i10 >> 8) & 255;
                int i13 = width;
                int i14 = i10 & 255;
                int i15 = i10 >>> 24;
                int i16 = i9 + 1;
                bArr[i9] = (byte) (i11 - i5);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (i12 - i6);
                int i18 = i17 + 1;
                bArr[i17] = (byte) (i14 - i7);
                if (z) {
                    i9 = i18 + 1;
                    bArr[i18] = (byte) (i15 - i8);
                } else {
                    i9 = i18;
                }
                i4++;
                i6 = i12;
                i5 = i11;
                i8 = i15;
                i7 = i14;
                rgb = iArr;
                width = i13;
            }
            deflaterOutputStream.write(bArr);
            i3++;
            i = 0;
            b = 1;
        }
        deflaterOutputStream.finish();
        chunk(dataOutputStream, 1229209940, byteArrayOutputStream2.toByteArray());
        chunk(dataOutputStream, 1229278788, new byte[0]);
        dataOutputStream.flush();
    }

    private static void chunk(DataOutputStream dataOutputStream, int i, byte[] bArr) throws IOException {
        dataOutputStream.writeInt(bArr.length);
        dataOutputStream.writeInt(i);
        dataOutputStream.write(bArr);
        CRC32 crc32 = new CRC32();
        crc32.update(new byte[]{(byte) (i >>> 24), (byte) (i >>> 16), (byte) (i >>> 8), (byte) i});
        crc32.update(bArr);
        dataOutputStream.writeInt((int) crc32.getValue());
    }
}
