package mcshim.awt;

import mcport.Platform;

/* JADX INFO: loaded from: classes.dex */
public class Component {
    public void add(Component component, Object obj) {
    }

    public void addKeyListener(Object obj) {
    }

    public void addMouseListener(Object obj) {
    }

    public void addMouseMotionListener(Object obj) {
    }

    public Graphics getGraphics() {
        return null;
    }

    public boolean isDisplayable() {
        return true;
    }

    public void removeAll() {
    }

    public void requestFocus() {
    }

    public void setBackground(Color color) {
    }

    public void setFocusable(boolean z) {
    }

    public void setLayout(LayoutManager layoutManager) {
    }

    public void setPreferredSize(Dimension dimension) {
    }

    public void setSize(int i, int i2) {
    }

    public void setVisible(boolean z) {
    }

    public void validate() {
    }

    public int getHeight() {
        return Platform.get().surfaceHeight();
    }

    public int getWidth() {
        return Platform.get().surfaceWidth();
    }
}
