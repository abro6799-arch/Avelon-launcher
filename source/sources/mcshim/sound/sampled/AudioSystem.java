package mcshim.sound.sampled;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class AudioSystem {
    public static AudioInputStream getAudioInputStream(InputStream inputStream) throws IOException, UnsupportedAudioFileException {
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream));
        byte[] bArr = new byte[4];
        dataInputStream.readFully(bArr);
        if (!"RIFF".equals(new String(bArr, "ISO-8859-1"))) {
            throw new UnsupportedAudioFileException("not RIFF");
        }
        le32(dataInputStream);
        dataInputStream.readFully(bArr);
        if (!"WAVE".equals(new String(bArr, "ISO-8859-1"))) {
            throw new UnsupportedAudioFileException("not WAVE");
        }
        int i = 0;
        int iLe16 = 0;
        int iLe17 = 0;
        while (true) {
            dataInputStream.readFully(bArr);
            int iLe32 = le32(dataInputStream);
            String str = new String(bArr, "ISO-8859-1");
            if (str.equals("fmt ")) {
                int iLe18 = le16(dataInputStream);
                iLe17 = le16(dataInputStream);
                int iLe33 = le32(dataInputStream);
                le32(dataInputStream);
                le16(dataInputStream);
                iLe16 = le16(dataInputStream);
                dataInputStream.skipBytes(iLe32 - 16);
                if (iLe18 != 1) {
                    throw new UnsupportedAudioFileException("not PCM");
                }
                i = iLe33;
            } else {
                if (str.equals("data")) {
                    return new AudioInputStream(dataInputStream, new AudioFormat(i, iLe16, iLe17, iLe16 > 8, false), iLe32 / Math.max(1, (iLe17 * iLe16) / 8));
                }
                dataInputStream.skipBytes(iLe32 + (iLe32 & 1));
            }
        }
    }

    private static int le16(DataInputStream dataInputStream) throws IOException {
        return (dataInputStream.read() << 8) | dataInputStream.read();
    }

    private static int le32(DataInputStream dataInputStream) throws IOException {
        return (le16(dataInputStream) << 16) | le16(dataInputStream);
    }
}
