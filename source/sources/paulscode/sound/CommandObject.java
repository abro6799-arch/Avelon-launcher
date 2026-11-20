package paulscode.sound;

/* JADX INFO: loaded from: classes.dex */
public class CommandObject {
    public static final int ACTIVATE = 28;
    public static final int CHECK_FADE_VOLUMES = 9;
    public static final int CULL = 27;
    public static final int DEQUEUE_SOUND = 6;
    public static final int FADE_OUT = 7;
    public static final int FADE_OUT_IN = 8;
    public static final int FEED_RAW_AUDIO_DATA = 22;
    public static final int FLUSH = 26;
    public static final int INITIALIZE = 1;
    public static final int LOAD_SOUND = 2;
    public static final int MOVE_LISTENER = 31;
    public static final int NEW_LIBRARY = 37;
    public static final int NEW_SOURCE = 10;
    public static final int PAUSE = 23;
    public static final int PLAY = 21;
    public static final int QUEUE_SOUND = 5;
    public static final int QUICK_PLAY = 12;
    public static final int RAW_DATA_STREAM = 11;
    public static final int REMOVE_SOURCE = 30;
    public static final int REWIND = 25;
    public static final int SET_ATTENUATION = 18;
    public static final int SET_DIST_OR_ROLL = 19;
    public static final int SET_LISTENER_ANGLE = 34;
    public static final int SET_LISTENER_ORIENTATION = 35;
    public static final int SET_LISTENER_POSITION = 32;
    public static final int SET_LOOPING = 17;
    public static final int SET_MASTER_VOLUME = 36;
    public static final int SET_PITCH = 15;
    public static final int SET_POSITION = 13;
    public static final int SET_PRIORITY = 16;
    public static final int SET_TEMPORARY = 29;
    public static final int SET_VOLUME = 14;
    public static final int STOP = 24;
    public static final int TURN_LISTENER = 33;
    public static final int UNLOAD_SOUND = 4;
    public int Command;
    public boolean[] boolArgs;
    public byte[] buffer;
    public Class[] classArgs;
    public float[] floatArgs;
    public int[] intArgs;
    public long[] longArgs;
    public Object[] objectArgs;
    public String[] stringArgs;

    public CommandObject(int i) {
        this.Command = i;
    }

    public CommandObject(int i, int i2) {
        this.Command = i;
        this.intArgs = new int[]{i2};
    }

    public CommandObject(int i, Class cls) {
        this.Command = i;
        this.classArgs = new Class[]{cls};
    }

    public CommandObject(int i, float f) {
        this.Command = i;
        this.floatArgs = new float[]{f};
    }

    public CommandObject(int i, String str) {
        this.Command = i;
        this.stringArgs = new String[]{str};
    }

    public CommandObject(int i, Object obj) {
        this.Command = i;
        this.objectArgs = new Object[]{obj};
    }

    public CommandObject(int i, String str, Object obj) {
        this.Command = i;
        this.stringArgs = new String[]{str};
        this.objectArgs = new Object[]{obj};
    }

    public CommandObject(int i, String str, byte[] bArr) {
        this.Command = i;
        this.stringArgs = new String[]{str};
        this.buffer = bArr;
    }

    public CommandObject(int i, String str, Object obj, long j) {
        this.Command = i;
        this.stringArgs = new String[]{str};
        this.objectArgs = new Object[]{obj};
        this.longArgs = new long[]{j};
    }

    public CommandObject(int i, String str, Object obj, long j, long j2) {
        this.Command = i;
        this.stringArgs = new String[]{str};
        this.objectArgs = new Object[]{obj};
        this.longArgs = new long[]{j, j2};
    }

    public CommandObject(int i, String str, String str2) {
        this.Command = i;
        this.stringArgs = new String[]{str, str2};
    }

    public CommandObject(int i, String str, int i2) {
        this.Command = i;
        this.intArgs = new int[]{i2};
        this.stringArgs = new String[]{str};
    }

    public CommandObject(int i, String str, float f) {
        this.Command = i;
        this.floatArgs = new float[]{f};
        this.stringArgs = new String[]{str};
    }

    public CommandObject(int i, String str, boolean z) {
        this.Command = i;
        this.boolArgs = new boolean[]{z};
        this.stringArgs = new String[]{str};
    }

    public CommandObject(int i, float f, float f2, float f3) {
        this.Command = i;
        this.floatArgs = new float[]{f, f2, f3};
    }

    public CommandObject(int i, String str, float f, float f2, float f3) {
        this.Command = i;
        this.floatArgs = new float[]{f, f2, f3};
        this.stringArgs = new String[]{str};
    }

    public CommandObject(int i, float f, float f2, float f3, float f4, float f5, float f6) {
        this.Command = i;
        this.floatArgs = new float[]{f, f2, f3, f4, f5, f6};
    }

    public CommandObject(int i, boolean z, boolean z2, boolean z3, String str, Object obj, float f, float f2, float f3, int i2, float f4) {
        this.Command = i;
        this.intArgs = new int[]{i2};
        this.floatArgs = new float[]{f, f2, f3, f4};
        this.boolArgs = new boolean[]{z, z2, z3};
        this.stringArgs = new String[]{str};
        this.objectArgs = new Object[]{obj};
    }

    public CommandObject(int i, boolean z, boolean z2, boolean z3, String str, Object obj, float f, float f2, float f3, int i2, float f4, boolean z4) {
        this.Command = i;
        this.intArgs = new int[]{i2};
        this.floatArgs = new float[]{f, f2, f3, f4};
        this.boolArgs = new boolean[]{z, z2, z3, z4};
        this.stringArgs = new String[]{str};
        this.objectArgs = new Object[]{obj};
    }

    public CommandObject(int i, Object obj, boolean z, String str, float f, float f2, float f3, int i2, float f4) {
        this.Command = i;
        this.intArgs = new int[]{i2};
        this.floatArgs = new float[]{f, f2, f3, f4};
        this.boolArgs = new boolean[]{z};
        this.stringArgs = new String[]{str};
        this.objectArgs = new Object[]{obj};
    }
}
