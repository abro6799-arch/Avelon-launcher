package mcshim.awt.image;

/* JADX INFO: loaded from: classes.dex */
public class WritableRaster {
    private final DataBuffer b;

    public WritableRaster(DataBuffer dataBuffer) {
        this.b = dataBuffer;
    }

    public DataBuffer getDataBuffer() {
        return this.b;
    }
}
