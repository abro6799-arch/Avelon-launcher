package mcshim.awt;

import mcshim.awt.event.WindowListener;

/* JADX INFO: loaded from: classes.dex */
public class Frame extends Window implements MenuContainer {
    public Frame(String str) {
        throw new UnsupportedOperationException("desktop API not available on Android: <init>");
    }

    @Override // mcshim.awt.Component
    public void add(Component component, Object obj) {
        throw new UnsupportedOperationException("desktop API not available on Android: add");
    }

    public void addWindowListener(WindowListener windowListener) {
        throw new UnsupportedOperationException("desktop API not available on Android: addWindowListener");
    }

    public void pack() {
        throw new UnsupportedOperationException("desktop API not available on Android: pack");
    }

    @Override // mcshim.awt.Component
    public void removeAll() {
        throw new UnsupportedOperationException("desktop API not available on Android: removeAll");
    }

    @Override // mcshim.awt.Component
    public void setLayout(LayoutManager layoutManager) {
        throw new UnsupportedOperationException("desktop API not available on Android: setLayout");
    }

    public void setLocationRelativeTo(Component component) {
        throw new UnsupportedOperationException("desktop API not available on Android: setLocationRelativeTo");
    }

    @Override // mcshim.awt.Component
    public void setVisible(boolean z) {
        throw new UnsupportedOperationException("desktop API not available on Android: setVisible");
    }

    @Override // mcshim.awt.Component
    public void validate() {
        throw new UnsupportedOperationException("desktop API not available on Android: validate");
    }
}
