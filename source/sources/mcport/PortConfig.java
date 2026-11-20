package mcport;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class PortConfig {
    public static volatile CrashSink crashSink = null;
    public static volatile File dataDir = null;
    public static volatile Runnable exitHandler = null;
    public static volatile File localSkin = null;
    public static volatile String username = "Player";

    public interface CrashSink {
        void onCrash(String str);
    }

    public static GameBridge launch(String str, int i) {
        try {
            return (GameBridge) Class.forName("MCPortMinecraft").getMethod("launch", String.class, String.class, Integer.TYPE).invoke(null, username, str, Integer.valueOf(i));
        } catch (Exception e) {
            throw new RuntimeException("could not start game", e);
        }
    }
}
