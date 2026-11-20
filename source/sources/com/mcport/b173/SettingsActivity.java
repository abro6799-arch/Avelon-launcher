package com.mcport.b173;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends Activity {
    private LinearLayout col;
    private float dp;
    private Prefs prefs;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.prefs = new Prefs(this);
        this.dp = getResources().getDisplayMetrics().density;
        ScrollView scrollView = new ScrollView(this);
        LinearLayout linearLayout = new LinearLayout(this);
        this.col = linearLayout;
        linearLayout.setOrientation(1);
        int i = (int) (this.dp * 16.0f);
        this.col.setPadding(i, i, i, i);
        scrollView.addView(this.col);
        title("Touch controls");
        slider("Control size", "ctlScale", this.prefs.controlScale(), 0.5f, 2.0f);
        slider("Control opacity", "ctlOpacity", this.prefs.controlOpacity(), 0.1f, 1.0f);
        slider("Look sensitivity (touch)", "lookSens", this.prefs.lookSensitivity(), 0.2f, 3.0f);
        check("Tap the view to use/place, hold to break", "tapToUse", this.prefs.tapToUse());
        check("Show Break and Use buttons", "showAttackUse", this.prefs.showAttackUse());
        check("D-pad layout instead of joystick", "controllerLayout", this.prefs.controllerLayout());
        Button button = new Button(this);
        button.setText("Edit control positions...");
        button.setAllCaps(false);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m30lambda$onCreate$0$commcportb173SettingsActivity(view);
            }
        });
        this.col.addView(button);
        Button button2 = new Button(this);
        button2.setText("Reset control positions");
        button2.setAllCaps(false);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m31lambda$onCreate$1$commcportb173SettingsActivity(view);
            }
        });
        this.col.addView(button2);
        title("Game controller");
        check("Hide touch controls while a controller is in use", "hideTouchCtl", this.prefs.hideTouchWithController());
        slider("Controller look speed", "padLook", this.prefs.controllerLookSpeed(), 0.3f, 3.0f);
        TextView textView = new TextView(this);
        textView.setTextSize(12.0f);
        textView.setText("Left stick: move (W/A/S/D)   Right stick: look   A: jump   B: sneak   X: inventory   Y: drop\nR1/R2: attack/break   L1/L2: use/place   D-pad left/right: hotbar   D-pad up: view (F5)   D-pad down: chat\nStart: pause (Esc)   Select: debug (F3). In menus the sticks move the pointer, A clicks, B goes back.");
        this.col.addView(textView);
        title("Display");
        check("V-Sync (limit to the display refresh rate)", "vsync", this.prefs.vsync());
        TextView textView2 = new TextView(this);
        textView2.setText("Render resolution");
        this.col.addView(textView2);
        RadioGroup radioGroup = new RadioGroup(this);
        final float[] fArr = {1.0f, 0.75f, 0.5f};
        String[] strArr = {"Native (100%)", "75%", "50%"};
        for (int i2 = 0; i2 < 3; i2++) {
            RadioButton radioButton = new RadioButton(this);
            radioButton.setText(strArr[i2]);
            radioButton.setId(i2 + 100);
            radioGroup.addView(radioButton);
            if (Math.abs(this.prefs.renderScale() - fArr[i2]) < 0.01f) {
                radioButton.setChecked(true);
            }
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda2
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i3) {
                this.f$0.m32lambda$onCreate$2$commcportb173SettingsActivity(fArr, radioGroup2, i3);
            }
        });
        this.col.addView(radioGroup);
        TextView textView3 = new TextView(this);
        textView3.setTextSize(12.0f);
        textView3.setText("Render distance, graphics quality, smooth lighting, GUI scale and key bindings are the original game options (Options... in the game menu).");
        this.col.addView(textView3);
        setContentView(scrollView);
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mcport-b173-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m30lambda$onCreate$0$commcportb173SettingsActivity(View view) {
        startActivity(new Intent(this, (Class<?>) LayoutEditorActivity.class));
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mcport-b173-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m31lambda$onCreate$1$commcportb173SettingsActivity(View view) {
        this.prefs.resetLayout();
        Toast.makeText(this, "Layout reset", 0).show();
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$com-mcport-b173-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m32lambda$onCreate$2$commcportb173SettingsActivity(float[] fArr, RadioGroup radioGroup, int i) {
        this.prefs.sp.edit().putFloat("renderScale", fArr[i - 100]).apply();
    }

    private void title(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(18.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        float f = this.dp;
        textView.setPadding(0, (int) (16.0f * f), 0, (int) (f * 4.0f));
        this.col.addView(textView);
    }

    private void check(String str, final String str2, boolean z) {
        CheckBox checkBox = new CheckBox(this);
        checkBox.setText(str);
        checkBox.setChecked(z);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.mcport.b173.SettingsActivity$$ExternalSyntheticLambda3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                this.f$0.m29lambda$check$3$commcportb173SettingsActivity(str2, compoundButton, z2);
            }
        });
        this.col.addView(checkBox);
    }

    /* JADX INFO: renamed from: lambda$check$3$com-mcport-b173-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m29lambda$check$3$commcportb173SettingsActivity(String str, CompoundButton compoundButton, boolean z) {
        this.prefs.sp.edit().putBoolean(str, z).apply();
    }

    private void slider(final String str, final String str2, float f, final float f2, final float f3) {
        final TextView textView = new TextView(this);
        this.col.addView(textView);
        SeekBar seekBar = new SeekBar(this);
        seekBar.setMax(100);
        seekBar.setProgress(Math.round(((f - f2) / (f3 - f2)) * 100.0f));
        textView.setText(str + ": " + String.format("%.2f", Float.valueOf(f)));
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mcport.b173.SettingsActivity.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                float f4 = f2;
                float f5 = f4 + (((f3 - f4) * i) / 100.0f);
                textView.setText(str + ": " + String.format("%.2f", Float.valueOf(f5)));
                SettingsActivity.this.prefs.sp.edit().putFloat(str2, f5).apply();
            }
        });
        this.col.addView(seekBar);
    }
}
