package com.mcport.b173;

import android.app.Activity;
import android.os.Bundle;
import mcport.GameBridge;

/* JADX INFO: loaded from: classes.dex */
public class LayoutEditorActivity extends Activity implements TouchOverlay.Host {
    private Prefs prefs;

    @Override // com.mcport.b173.TouchOverlay.Host
    public GameBridge bridge() {
        return null;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public void openProfile() {
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public boolean padActive() {
        return false;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public int surfaceH() {
        return 1;
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public int surfaceW() {
        return 1;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.prefs = new Prefs(this);
        getWindow().addFlags(1024);
        setContentView(new TouchOverlay(this, this, true));
        getWindow().getDecorView().setSystemUiVisibility(4102);
    }

    @Override // com.mcport.b173.TouchOverlay.Host
    public Prefs prefs() {
        return this.prefs;
    }
}
