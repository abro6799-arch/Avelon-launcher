package paulscode.sound;

import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class FilenameURL {
    private String filename;
    private SoundSystemLogger logger = SoundSystemConfig.getLogger();
    private URL url;

    public FilenameURL(URL url, String str) {
        this.filename = null;
        this.url = null;
        this.filename = str;
        this.url = url;
    }

    public FilenameURL(String str) {
        this.filename = null;
        this.url = null;
        this.filename = str;
        this.url = null;
    }

    public String getFilename() {
        return this.filename;
    }

    public URL getURL() {
        if (this.url == null) {
            if (this.filename.matches(SoundSystemConfig.PREFIX_URL)) {
                try {
                    this.url = new URL(this.filename);
                } catch (Exception e) {
                    errorMessage("Unable to access online URL in method 'getURL'");
                    printStackTrace(e);
                    return null;
                }
            } else {
                this.url = getClass().getClassLoader().getResource(SoundSystemConfig.getSoundFilesPackage() + this.filename);
            }
        }
        return this.url;
    }

    private void errorMessage(String str) {
        this.logger.errorMessage("MidiChannel", str, 0);
    }

    private void printStackTrace(Exception exc) {
        this.logger.printStackTrace(exc, 1);
    }
}
