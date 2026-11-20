package defpackage;

import java.io.InputStream;
import paulscode.sound.codecs.CodecJOrbis;

/* JADX INFO: loaded from: classes.dex */
public class io extends CodecJOrbis {
    @Override // paulscode.sound.codecs.CodecJOrbis
    protected InputStream openInputStream() {
        return new np(this, this.url, this.urlConnection.getInputStream());
    }
}
