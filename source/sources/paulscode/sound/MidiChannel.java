package paulscode.sound;

import java.io.IOException;
import java.net.URL;
import java.util.LinkedList;
import java.util.ListIterator;
import mcshim.sound.midi.InvalidMidiDataException;
import mcshim.sound.midi.MetaEventListener;
import mcshim.sound.midi.MetaMessage;
import mcshim.sound.midi.MidiDevice;
import mcshim.sound.midi.MidiSystem;
import mcshim.sound.midi.MidiUnavailableException;
import mcshim.sound.midi.Receiver;
import mcshim.sound.midi.Sequence;
import mcshim.sound.midi.Sequencer;
import mcshim.sound.midi.ShortMessage;
import mcshim.sound.midi.Synthesizer;

/* JADX INFO: loaded from: classes.dex */
public class MidiChannel implements MetaEventListener {
    private static final int CHANGE_VOLUME = 7;
    private static final int END_OF_TRACK = 47;
    private static final boolean GET = false;
    private static final boolean SET = true;
    private static final boolean XXX = false;
    private FilenameURL filenameURL;
    private SoundSystemLogger logger;
    private String sourcename;
    private Sequencer sequencer = null;
    private Synthesizer synthesizer = null;
    private MidiDevice synthDevice = null;
    private Sequence sequence = null;
    private boolean toLoop = SET;
    private float gain = 1.0f;
    private boolean loading = SET;
    private LinkedList sequenceQueue = null;
    private final Object sequenceQueueLock = new Object();
    protected float fadeOutGain = -1.0f;
    protected float fadeInGain = 1.0f;
    protected long fadeOutMilis = 0;
    protected long fadeInMilis = 0;
    protected long lastFadeCheck = 0;
    private FadeThread fadeThread = null;

    public MidiChannel(boolean z, String str, String str2) {
        loading(SET, SET);
        this.logger = SoundSystemConfig.getLogger();
        filenameURL(SET, new FilenameURL(str2));
        sourcename(SET, str);
        setLooping(z);
        init();
        loading(SET, GET);
    }

    public MidiChannel(boolean z, String str, URL url, String str2) {
        loading(SET, SET);
        this.logger = SoundSystemConfig.getLogger();
        filenameURL(SET, new FilenameURL(url, str2));
        sourcename(SET, str);
        setLooping(z);
        init();
        loading(SET, GET);
    }

    public MidiChannel(boolean z, String str, FilenameURL filenameURL) {
        loading(SET, SET);
        this.logger = SoundSystemConfig.getLogger();
        filenameURL(SET, filenameURL);
        sourcename(SET, str);
        setLooping(z);
        init();
        loading(SET, GET);
    }

    private void init() {
        getSequencer();
        setSequence(filenameURL(GET, null).getURL());
        getSynthesizer();
        resetGain();
    }

    public void cleanup() {
        boolean z;
        loading(SET, SET);
        setLooping(SET);
        Sequencer sequencer = this.sequencer;
        if (sequencer != null) {
            try {
                sequencer.stop();
                this.sequencer.close();
                this.sequencer.removeMetaEventListener(this);
            } catch (Exception unused) {
            }
        }
        this.logger = null;
        this.sequencer = null;
        this.synthesizer = null;
        this.sequence = null;
        synchronized (this.sequenceQueueLock) {
            LinkedList linkedList = this.sequenceQueue;
            if (linkedList != null) {
                linkedList.clear();
            }
            this.sequenceQueue = null;
        }
        FadeThread fadeThread = this.fadeThread;
        if (fadeThread != null) {
            try {
                fadeThread.kill();
                this.fadeThread.interrupt();
                z = false;
            } catch (Exception unused2) {
                z = true;
            }
            if (!z) {
                for (int i = 0; i < 50 && this.fadeThread.alive(); i++) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused3) {
                    }
                }
            }
            if (z || this.fadeThread.alive()) {
                errorMessage("MIDI fade effects thread did not die!");
                message("Ignoring errors... continuing clean-up.");
            }
        }
        this.fadeThread = null;
        loading(SET, GET);
    }

    public void queueSound(FilenameURL filenameURL) {
        if (filenameURL == null) {
            errorMessage("Filename/URL not specified in method 'queueSound'");
            return;
        }
        synchronized (this.sequenceQueueLock) {
            if (this.sequenceQueue == null) {
                this.sequenceQueue = new LinkedList();
            }
            this.sequenceQueue.add(filenameURL);
        }
    }

    public void dequeueSound(String str) {
        if (str == null || str.equals("")) {
            errorMessage("Filename not specified in method 'dequeueSound'");
            return;
        }
        synchronized (this.sequenceQueueLock) {
            LinkedList linkedList = this.sequenceQueue;
            if (linkedList != null) {
                ListIterator listIterator = linkedList.listIterator();
                while (listIterator.hasNext()) {
                    if (((FilenameURL) listIterator.next()).getFilename().equals(str)) {
                        listIterator.remove();
                        break;
                    }
                }
            }
        }
    }

    public void fadeOut(FilenameURL filenameURL, long j) {
        if (j < 0) {
            errorMessage("Miliseconds may not be negative in method 'fadeOut'.");
            return;
        }
        this.fadeOutMilis = j;
        this.fadeInMilis = 0L;
        this.fadeOutGain = 1.0f;
        this.lastFadeCheck = System.currentTimeMillis();
        synchronized (this.sequenceQueueLock) {
            LinkedList linkedList = this.sequenceQueue;
            if (linkedList != null) {
                linkedList.clear();
            }
            if (filenameURL != null) {
                if (this.sequenceQueue == null) {
                    this.sequenceQueue = new LinkedList();
                }
                this.sequenceQueue.add(filenameURL);
            }
        }
        if (this.fadeThread == null) {
            FadeThread fadeThread = new FadeThread();
            this.fadeThread = fadeThread;
            fadeThread.start();
        }
        this.fadeThread.interrupt();
    }

    public void fadeOutIn(FilenameURL filenameURL, long j, long j2) {
        if (filenameURL == null) {
            errorMessage("Filename/URL not specified in method 'fadeOutIn'.");
            return;
        }
        if (j < 0 || j2 < 0) {
            errorMessage("Miliseconds may not be negative in method 'fadeOutIn'.");
            return;
        }
        this.fadeOutMilis = j;
        this.fadeInMilis = j2;
        this.fadeOutGain = 1.0f;
        this.lastFadeCheck = System.currentTimeMillis();
        synchronized (this.sequenceQueueLock) {
            if (this.sequenceQueue == null) {
                this.sequenceQueue = new LinkedList();
            }
            this.sequenceQueue.clear();
            this.sequenceQueue.add(filenameURL);
        }
        if (this.fadeThread == null) {
            FadeThread fadeThread = new FadeThread();
            this.fadeThread = fadeThread;
            fadeThread.start();
        }
        this.fadeThread.interrupt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean checkFadeOut() {
        if (this.fadeOutGain == -1.0f && this.fadeInGain == 1.0f) {
            return GET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastFadeCheck;
        this.lastFadeCheck = jCurrentTimeMillis;
        float f = this.fadeOutGain;
        if (f >= 0.0f) {
            long j2 = this.fadeOutMilis;
            if (j2 == 0) {
                this.fadeOutGain = 0.0f;
                this.fadeInGain = 0.0f;
                if (!incrementSequence()) {
                    stop();
                }
                rewind();
                resetGain();
                return GET;
            }
            float f2 = f - (j / j2);
            this.fadeOutGain = f2;
            if (f2 <= 0.0f) {
                this.fadeOutGain = -1.0f;
                this.fadeInGain = 0.0f;
                if (!incrementSequence()) {
                    stop();
                }
                rewind();
                resetGain();
                return GET;
            }
            resetGain();
            return SET;
        }
        float f3 = this.fadeInGain;
        if (f3 < 1.0f) {
            this.fadeOutGain = -1.0f;
            long j3 = this.fadeInMilis;
            if (j3 == 0) {
                this.fadeOutGain = -1.0f;
                this.fadeInGain = 1.0f;
            } else {
                float f4 = f3 + (j / j3);
                this.fadeInGain = f4;
                if (f4 >= 1.0f) {
                    this.fadeOutGain = -1.0f;
                    this.fadeInGain = 1.0f;
                }
            }
            resetGain();
        }
        return GET;
    }

    private boolean incrementSequence() {
        synchronized (this.sequenceQueueLock) {
            LinkedList linkedList = this.sequenceQueue;
            if (linkedList == null || linkedList.size() <= 0) {
                return GET;
            }
            filenameURL(SET, (FilenameURL) this.sequenceQueue.remove(0));
            loading(SET, SET);
            Sequencer sequencer = this.sequencer;
            if (sequencer == null) {
                getSequencer();
            } else {
                sequencer.stop();
                this.sequencer.setMicrosecondPosition(0L);
                this.sequencer.removeMetaEventListener(this);
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
            if (this.sequencer == null) {
                errorMessage("Unable to set the sequence in method 'incrementSequence', because there wasn't a sequencer to use.");
                loading(SET, GET);
                return GET;
            }
            setSequence(filenameURL(GET, null).getURL());
            this.sequencer.start();
            resetGain();
            this.sequencer.addMetaEventListener(this);
            loading(SET, GET);
            return SET;
        }
    }

    public void play() {
        Sequencer sequencer;
        if (loading() || (sequencer = this.sequencer) == null) {
            return;
        }
        try {
            sequencer.start();
            this.sequencer.addMetaEventListener(this);
        } catch (Exception e) {
            errorMessage("Exception in method 'play'");
            printStackTrace(e);
            SoundSystem.setException(new SoundSystemException(e.getMessage()));
        }
    }

    public void stop() {
        Sequencer sequencer;
        if (loading() || (sequencer = this.sequencer) == null) {
            return;
        }
        try {
            sequencer.stop();
            this.sequencer.setMicrosecondPosition(0L);
            this.sequencer.removeMetaEventListener(this);
        } catch (Exception e) {
            errorMessage("Exception in method 'stop'");
            printStackTrace(e);
            SoundSystem.setException(new SoundSystemException(e.getMessage()));
        }
    }

    public void pause() {
        Sequencer sequencer;
        if (loading() || (sequencer = this.sequencer) == null) {
            return;
        }
        try {
            sequencer.stop();
        } catch (Exception e) {
            errorMessage("Exception in method 'pause'");
            printStackTrace(e);
            SoundSystem.setException(new SoundSystemException(e.getMessage()));
        }
    }

    public void rewind() {
        Sequencer sequencer;
        if (loading() || (sequencer = this.sequencer) == null) {
            return;
        }
        try {
            sequencer.setMicrosecondPosition(0L);
        } catch (Exception e) {
            errorMessage("Exception in method 'rewind'");
            printStackTrace(e);
            SoundSystem.setException(new SoundSystemException(e.getMessage()));
        }
    }

    public void setVolume(float f) {
        this.gain = f;
        resetGain();
    }

    public float getVolume() {
        return this.gain;
    }

    public void switchSource(boolean z, String str, String str2) {
        loading(SET, SET);
        filenameURL(SET, new FilenameURL(str2));
        sourcename(SET, str);
        setLooping(z);
        reset();
        loading(SET, GET);
    }

    public void switchSource(boolean z, String str, URL url, String str2) {
        loading(SET, SET);
        filenameURL(SET, new FilenameURL(url, str2));
        sourcename(SET, str);
        setLooping(z);
        reset();
        loading(SET, GET);
    }

    public void switchSource(boolean z, String str, FilenameURL filenameURL) {
        loading(SET, SET);
        filenameURL(SET, filenameURL);
        sourcename(SET, str);
        setLooping(z);
        reset();
        loading(SET, GET);
    }

    private void reset() {
        synchronized (this.sequenceQueueLock) {
            LinkedList linkedList = this.sequenceQueue;
            if (linkedList != null) {
                linkedList.clear();
            }
        }
        Sequencer sequencer = this.sequencer;
        if (sequencer == null) {
            getSequencer();
        } else {
            sequencer.stop();
            this.sequencer.setMicrosecondPosition(0L);
            this.sequencer.removeMetaEventListener(this);
            try {
                Thread.sleep(100L);
            } catch (InterruptedException unused) {
            }
        }
        if (this.sequencer == null) {
            errorMessage("Unable to set the sequence in method 'reset', because there wasn't a sequencer to use.");
            return;
        }
        setSequence(filenameURL(GET, null).getURL());
        this.sequencer.start();
        resetGain();
        this.sequencer.addMetaEventListener(this);
    }

    public void setLooping(boolean z) {
        toLoop(SET, z);
    }

    public boolean getLooping() {
        return toLoop(GET, GET);
    }

    private synchronized boolean toLoop(boolean z, boolean z2) {
        if (z) {
            this.toLoop = z2;
        }
        return this.toLoop;
    }

    public boolean loading() {
        return loading(GET, GET);
    }

    private synchronized boolean loading(boolean z, boolean z2) {
        if (z) {
            this.loading = z2;
        }
        return this.loading;
    }

    public void setSourcename(String str) {
        sourcename(SET, str);
    }

    public String getSourcename() {
        return sourcename(GET, null);
    }

    private synchronized String sourcename(boolean z, String str) {
        if (z) {
            this.sourcename = str;
        }
        return this.sourcename;
    }

    public void setFilenameURL(FilenameURL filenameURL) {
        filenameURL(SET, filenameURL);
    }

    public String getFilename() {
        return filenameURL(GET, null).getFilename();
    }

    public FilenameURL getFilenameURL() {
        return filenameURL(GET, null);
    }

    private synchronized FilenameURL filenameURL(boolean z, FilenameURL filenameURL) {
        if (z) {
            this.filenameURL = filenameURL;
        }
        return this.filenameURL;
    }

    public void meta(MetaMessage metaMessage) {
        if (metaMessage.getType() == 47) {
            try {
                if (this.toLoop) {
                    if (!checkFadeOut()) {
                        if (incrementSequence()) {
                            return;
                        }
                        this.sequencer.setMicrosecondPosition(0L);
                        this.sequencer.start();
                        resetGain();
                    } else {
                        Sequencer sequencer = this.sequencer;
                        if (sequencer == null) {
                            return;
                        }
                        sequencer.setMicrosecondPosition(0L);
                        this.sequencer.start();
                        resetGain();
                    }
                } else {
                    if (!checkFadeOut() && incrementSequence()) {
                        return;
                    }
                    this.sequencer.stop();
                    this.sequencer.setMicrosecondPosition(0L);
                    this.sequencer.removeMetaEventListener(this);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void resetGain() {
        if (this.gain < 0.0f) {
            this.gain = 0.0f;
        }
        if (this.gain > 1.0f) {
            this.gain = 1.0f;
        }
        int masterGain = (int) (this.gain * SoundSystemConfig.getMasterGain() * Math.abs(this.fadeOutGain) * this.fadeInGain * 127.0f);
        Synthesizer synthesizer = this.synthesizer;
        int i = 0;
        if (synthesizer != null) {
            mcshim.sound.midi.MidiChannel[] channels = synthesizer.getChannels();
            while (channels != null && i < channels.length) {
                channels[i].controlChange(7, masterGain);
                i++;
            }
            return;
        }
        if (this.synthDevice != null) {
            try {
                ShortMessage shortMessage = new ShortMessage();
                while (i < 16) {
                    shortMessage.setMessage(176, i, 7, masterGain);
                    this.synthDevice.getReceiver().send(shortMessage, -1L);
                    i++;
                }
                return;
            } catch (Exception e) {
                errorMessage("Error resetting gain on MIDI device");
                printStackTrace(e);
                return;
            }
        }
        Sequencer sequencer = this.sequencer;
        if (sequencer != null && (sequencer instanceof Synthesizer)) {
            Synthesizer synthesizer2 = (Synthesizer) sequencer;
            this.synthesizer = synthesizer2;
            mcshim.sound.midi.MidiChannel[] channels2 = synthesizer2.getChannels();
            while (channels2 != null && i < channels2.length) {
                channels2[i].controlChange(7, masterGain);
                i++;
            }
            return;
        }
        try {
            Receiver receiver = MidiSystem.getReceiver();
            ShortMessage shortMessage2 = new ShortMessage();
            while (i < 16) {
                shortMessage2.setMessage(176, i, 7, masterGain);
                receiver.send(shortMessage2, -1L);
                i++;
            }
        } catch (Exception e2) {
            errorMessage("Error resetting gain on default receiver");
            printStackTrace(e2);
        }
    }

    private void getSequencer() {
        try {
            Sequencer sequencer = MidiSystem.getSequencer();
            this.sequencer = sequencer;
            if (sequencer != null) {
                try {
                    sequencer.getTransmitter();
                } catch (MidiUnavailableException unused) {
                    message("Unable to get a transmitter from the default MIDI sequencer");
                }
                this.sequencer.open();
            }
        } catch (MidiUnavailableException unused2) {
            message("Unable to open the default MIDI sequencer");
            this.sequencer = null;
        }
        if (this.sequencer == null) {
            this.sequencer = openSequencer("Real Time Sequencer");
        }
        if (this.sequencer == null) {
            this.sequencer = openSequencer("Java Sound Sequencer");
        }
        if (this.sequencer == null) {
            errorMessage("Failed to find an available MIDI sequencer");
        }
    }

    private void setSequence(URL url) {
        if (this.sequencer == null) {
            errorMessage("Unable to update the sequence in method 'setSequence', because variable 'sequencer' is null");
            return;
        }
        if (url == null) {
            errorMessage("Unable to load Midi file in method 'setSequence'.");
            return;
        }
        try {
            Sequence sequence = MidiSystem.getSequence(url);
            this.sequence = sequence;
            if (sequence == null) {
                errorMessage("MidiSystem 'getSequence' method returned null in method 'setSequence'.");
                return;
            }
            try {
                this.sequencer.setSequence(sequence);
            } catch (InvalidMidiDataException e) {
                errorMessage("Invalid MIDI data encountered, or not a MIDI file in method 'setSequence' (2).");
                printStackTrace(e);
            } catch (Exception e2) {
                errorMessage("Problem setting sequence from MIDI file in method 'setSequence'.");
                printStackTrace(e2);
            }
        } catch (IOException e3) {
            errorMessage("Input failed while reading from MIDI file in method 'setSequence'.");
            printStackTrace(e3);
        } catch (InvalidMidiDataException e4) {
            errorMessage("Invalid MIDI data encountered, or not a MIDI file in method 'setSequence' (1).");
            printStackTrace(e4);
        }
    }

    private void getSynthesizer() {
        Sequencer sequencer = this.sequencer;
        if (sequencer == null) {
            errorMessage("Unable to load a Synthesizer in method 'getSynthesizer', because variable 'sequencer' is null");
            return;
        }
        if (sequencer instanceof Synthesizer) {
            this.synthesizer = (Synthesizer) sequencer;
            return;
        }
        try {
            Synthesizer synthesizer = MidiSystem.getSynthesizer();
            this.synthesizer = synthesizer;
            synthesizer.open();
        } catch (MidiUnavailableException unused) {
            message("Unable to open the default synthesizer");
            this.synthesizer = null;
        }
        if (this.synthesizer == null) {
            MidiDevice midiDeviceOpenMidiDevice = openMidiDevice("Java Sound Synthesizer");
            this.synthDevice = midiDeviceOpenMidiDevice;
            if (midiDeviceOpenMidiDevice == null) {
                this.synthDevice = openMidiDevice("Microsoft GS Wavetable");
            }
            if (this.synthDevice == null) {
                this.synthDevice = openMidiDevice("Gervill");
            }
            if (this.synthDevice == null) {
                errorMessage("Failed to find an available MIDI synthesizer");
                return;
            }
        }
        Synthesizer synthesizer2 = this.synthesizer;
        if (synthesizer2 == null) {
            try {
                this.sequencer.getTransmitter().setReceiver(this.synthDevice.getReceiver());
            } catch (MidiUnavailableException unused2) {
                errorMessage("Unable to link sequencer transmitter with MIDI device receiver");
            }
        } else if (synthesizer2.getDefaultSoundbank() == null) {
            try {
                this.sequencer.getTransmitter().setReceiver(MidiSystem.getReceiver());
            } catch (MidiUnavailableException unused3) {
                errorMessage("Unable to link sequencer transmitter with default receiver");
            }
        } else {
            try {
                this.sequencer.getTransmitter().setReceiver(this.synthesizer.getReceiver());
            } catch (MidiUnavailableException unused4) {
                errorMessage("Unable to link sequencer transmitter with synthesizer receiver");
            }
        }
    }

    private Sequencer openSequencer(String str) {
        Sequencer sequencer = (Sequencer) openMidiDevice(str);
        if (sequencer == null) {
            return null;
        }
        try {
            sequencer.getTransmitter();
            return sequencer;
        } catch (MidiUnavailableException unused) {
            message("    Unable to get a transmitter from this sequencer");
            return null;
        }
    }

    private MidiDevice openMidiDevice(String str) {
        MidiDevice midiDevice;
        message("Searching for MIDI device with name containing '" + str + "'");
        MidiDevice.Info[] midiDeviceInfo = MidiSystem.getMidiDeviceInfo();
        for (int i = 0; i < midiDeviceInfo.length; i++) {
            try {
                midiDevice = MidiSystem.getMidiDevice(midiDeviceInfo[i]);
            } catch (MidiUnavailableException unused) {
                message("    Problem in method 'getMidiDevice':  MIDIUnavailableException was thrown");
                midiDevice = null;
            }
            if (midiDevice != null && midiDeviceInfo[i].getName().contains(str)) {
                message("    Found MIDI device named '" + midiDeviceInfo[i].getName() + "'");
                if (midiDevice instanceof Synthesizer) {
                    message("        *this is a Synthesizer instance");
                }
                if (midiDevice instanceof Sequencer) {
                    message("        *this is a Sequencer instance");
                }
                try {
                    midiDevice.open();
                    return midiDevice;
                } catch (MidiUnavailableException unused2) {
                    message("    Unable to open this MIDI device");
                    return null;
                }
            }
        }
        message("    MIDI device not found");
        return null;
    }

    protected void message(String str) {
        this.logger.message(str, 0);
    }

    protected void importantMessage(String str) {
        this.logger.importantMessage(str, 0);
    }

    protected boolean errorCheck(boolean z, String str) {
        return this.logger.errorCheck(z, "MidiChannel", str, 0);
    }

    protected void errorMessage(String str) {
        this.logger.errorMessage("MidiChannel", str, 0);
    }

    protected void printStackTrace(Exception exc) {
        this.logger.printStackTrace(exc, 1);
    }

    class FadeThread extends SimpleThread {
        private FadeThread() {
        }

        @Override // paulscode.sound.SimpleThread, java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!dying()) {
                if (MidiChannel.this.fadeOutGain == -1.0f && MidiChannel.this.fadeInGain == 1.0f) {
                    snooze(3600000L);
                }
                MidiChannel.this.checkFadeOut();
                snooze(50L);
            }
            cleanup();
        }
    }
}
