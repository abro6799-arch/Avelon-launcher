package mcport;

/* JADX INFO: loaded from: classes.dex */
public interface GameBridge {
    int[] hotbarRect();

    boolean isContainerScreen();

    boolean isInGameplay();

    boolean isMultiplayer();

    boolean isRiding();

    boolean isScreenOpen();

    boolean isTitleScreen();

    void onBackground();

    boolean screenWantsText();
}
