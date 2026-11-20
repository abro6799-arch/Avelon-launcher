package mcshim.awt.image;

/* JADX INFO: loaded from: classes.dex */
public final class DataBufferInt extends DataBuffer {
    private final int[] d;

    public DataBufferInt(int[] iArr) {
        this.d = iArr;
    }

    public int[] getData() {
        return this.d;
    }

    @Override // mcshim.awt.image.DataBuffer
    public int getSize() {
        return this.d.length;
    }
}
