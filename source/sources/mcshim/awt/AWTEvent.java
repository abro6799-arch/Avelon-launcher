package mcshim.awt;

import java.util.EventObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AWTEvent extends EventObject {
    protected AWTEvent() {
        throw new UnsupportedOperationException("desktop API not available on Android: <init>");
    }
}
