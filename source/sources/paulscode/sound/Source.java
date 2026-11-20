package paulscode.sound;

import java.util.LinkedList;
import java.util.ListIterator;
import mcshim.sound.sampled.AudioFormat;

/* JADX INFO: loaded from: classes.dex */
public class Source {
    private static final boolean GET = false;
    private static final boolean SET = true;
    private static final boolean XXX = false;
    private boolean active;
    public int attModel;
    public Channel channel;
    protected ICodec codec;
    public float distOrRoll;
    public float distanceFromListener;
    protected float fadeInGain;
    protected long fadeInMilis;
    protected float fadeOutGain;
    protected long fadeOutMilis;
    public FilenameURL filenameURL;
    public float gain;
    protected long lastFadeCheck;
    protected Class libraryType;
    private SoundSystemLogger logger;
    private boolean paused;
    protected float pitch;
    public Vector3D position;
    public boolean preLoad;
    public boolean priority;
    public AudioFormat rawDataFormat;
    public boolean rawDataStream;
    protected boolean reverseByteOrder;
    protected SoundBuffer soundBuffer;
    protected final Object soundSequenceLock;
    protected LinkedList soundSequenceQueue;
    public float sourceVolume;
    public String sourcename;
    private boolean stopped;
    public boolean temporary;
    public boolean toLoop;
    public boolean toPlay;
    public boolean toStream;

    public void listenerMoved() {
    }

    public void positionChanged() {
    }

    public Source(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, SoundBuffer soundBuffer, float f, float f2, float f3, int i, float f4, boolean z4) {
        this.libraryType = Library.class;
        this.rawDataStream = GET;
        this.rawDataFormat = null;
        this.temporary = GET;
        this.priority = GET;
        this.toStream = GET;
        this.toLoop = GET;
        this.toPlay = GET;
        this.sourcename = "";
        this.filenameURL = null;
        this.attModel = 0;
        this.distOrRoll = 0.0f;
        this.gain = 1.0f;
        this.sourceVolume = 1.0f;
        this.pitch = 1.0f;
        this.distanceFromListener = 0.0f;
        this.channel = null;
        this.active = SET;
        this.stopped = SET;
        this.paused = GET;
        this.soundBuffer = null;
        this.codec = null;
        this.reverseByteOrder = GET;
        this.soundSequenceQueue = null;
        this.soundSequenceLock = new Object();
        this.preLoad = GET;
        this.fadeOutGain = -1.0f;
        this.fadeInGain = 1.0f;
        this.fadeOutMilis = 0L;
        this.fadeInMilis = 0L;
        this.lastFadeCheck = 0L;
        this.logger = SoundSystemConfig.getLogger();
        this.priority = z;
        this.toStream = z2;
        this.toLoop = z3;
        this.sourcename = str;
        this.filenameURL = filenameURL;
        this.soundBuffer = soundBuffer;
        this.position = new Vector3D(f, f2, f3);
        this.attModel = i;
        this.distOrRoll = f4;
        this.temporary = z4;
        if (!z2 || filenameURL == null) {
            return;
        }
        this.codec = SoundSystemConfig.getCodec(filenameURL.getFilename());
    }

    public Source(Source source, SoundBuffer soundBuffer) {
        FilenameURL filenameURL;
        this.libraryType = Library.class;
        this.rawDataStream = GET;
        this.rawDataFormat = null;
        this.temporary = GET;
        this.priority = GET;
        this.toStream = GET;
        this.toLoop = GET;
        this.toPlay = GET;
        this.sourcename = "";
        this.filenameURL = null;
        this.attModel = 0;
        this.distOrRoll = 0.0f;
        this.gain = 1.0f;
        this.sourceVolume = 1.0f;
        this.pitch = 1.0f;
        this.distanceFromListener = 0.0f;
        this.channel = null;
        this.active = SET;
        this.stopped = SET;
        this.paused = GET;
        this.soundBuffer = null;
        this.codec = null;
        this.reverseByteOrder = GET;
        this.soundSequenceQueue = null;
        this.soundSequenceLock = new Object();
        this.preLoad = GET;
        this.fadeOutGain = -1.0f;
        this.fadeInGain = 1.0f;
        this.fadeOutMilis = 0L;
        this.fadeInMilis = 0L;
        this.lastFadeCheck = 0L;
        this.logger = SoundSystemConfig.getLogger();
        this.priority = source.priority;
        this.toStream = source.toStream;
        this.toLoop = source.toLoop;
        this.sourcename = source.sourcename;
        this.filenameURL = source.filenameURL;
        this.position = source.position.clone();
        this.attModel = source.attModel;
        this.distOrRoll = source.distOrRoll;
        this.temporary = source.temporary;
        this.sourceVolume = source.sourceVolume;
        this.rawDataStream = source.rawDataStream;
        this.rawDataFormat = source.rawDataFormat;
        this.soundBuffer = soundBuffer;
        if (!this.toStream || (filenameURL = this.filenameURL) == null) {
            return;
        }
        this.codec = SoundSystemConfig.getCodec(filenameURL.getFilename());
    }

    public Source(AudioFormat audioFormat, boolean z, String str, float f, float f2, float f3, int i, float f4) {
        this.libraryType = Library.class;
        this.rawDataStream = GET;
        this.rawDataFormat = null;
        this.temporary = GET;
        this.priority = GET;
        this.toStream = GET;
        this.toLoop = GET;
        this.toPlay = GET;
        this.sourcename = "";
        this.filenameURL = null;
        this.attModel = 0;
        this.distOrRoll = 0.0f;
        this.gain = 1.0f;
        this.sourceVolume = 1.0f;
        this.pitch = 1.0f;
        this.distanceFromListener = 0.0f;
        this.channel = null;
        this.active = SET;
        this.stopped = SET;
        this.paused = GET;
        this.soundBuffer = null;
        this.codec = null;
        this.reverseByteOrder = GET;
        this.soundSequenceQueue = null;
        this.soundSequenceLock = new Object();
        this.preLoad = GET;
        this.fadeOutGain = -1.0f;
        this.fadeInGain = 1.0f;
        this.fadeOutMilis = 0L;
        this.fadeInMilis = 0L;
        this.lastFadeCheck = 0L;
        this.logger = SoundSystemConfig.getLogger();
        this.priority = z;
        this.toStream = SET;
        this.toLoop = GET;
        this.sourcename = str;
        this.filenameURL = null;
        this.soundBuffer = null;
        this.position = new Vector3D(f, f2, f3);
        this.attModel = i;
        this.distOrRoll = f4;
        this.temporary = GET;
        this.rawDataStream = SET;
        this.rawDataFormat = audioFormat;
    }

    public void cleanup() {
        ICodec iCodec = this.codec;
        if (iCodec != null) {
            iCodec.cleanup();
        }
        synchronized (this.soundSequenceLock) {
            LinkedList linkedList = this.soundSequenceQueue;
            if (linkedList != null) {
                linkedList.clear();
            }
            this.soundSequenceQueue = null;
        }
        this.sourcename = null;
        this.filenameURL = null;
        this.position = null;
        this.soundBuffer = null;
        this.codec = null;
    }

    public void queueSound(FilenameURL filenameURL) {
        if (!this.toStream) {
            errorMessage("Method 'queueSound' may only be used for streaming and MIDI sources.");
            return;
        }
        if (filenameURL == null) {
            errorMessage("File not specified in method 'queueSound'");
            return;
        }
        synchronized (this.soundSequenceLock) {
            if (this.soundSequenceQueue == null) {
                this.soundSequenceQueue = new LinkedList();
            }
            this.soundSequenceQueue.add(filenameURL);
        }
    }

    public void dequeueSound(String str) {
        if (!this.toStream) {
            errorMessage("Method 'dequeueSound' may only be used for streaming and MIDI sources.");
            return;
        }
        if (str == null || str.equals("")) {
            errorMessage("Filename not specified in method 'dequeueSound'");
            return;
        }
        synchronized (this.soundSequenceLock) {
            LinkedList linkedList = this.soundSequenceQueue;
            if (linkedList != null) {
                linkedList.remove(str);
            }
        }
        synchronized (this.soundSequenceLock) {
            LinkedList linkedList2 = this.soundSequenceQueue;
            if (linkedList2 != null) {
                ListIterator listIterator = linkedList2.listIterator();
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
        if (!this.toStream) {
            errorMessage("Method 'fadeOut' may only be used for streaming and MIDI sources.");
            return;
        }
        if (j < 0) {
            errorMessage("Miliseconds may not be negative in method 'fadeOut'.");
            return;
        }
        this.fadeOutMilis = j;
        this.fadeInMilis = 0L;
        this.fadeOutGain = 1.0f;
        this.lastFadeCheck = System.currentTimeMillis();
        synchronized (this.soundSequenceLock) {
            LinkedList linkedList = this.soundSequenceQueue;
            if (linkedList != null) {
                linkedList.clear();
            }
            if (filenameURL != null) {
                if (this.soundSequenceQueue == null) {
                    this.soundSequenceQueue = new LinkedList();
                }
                this.soundSequenceQueue.add(filenameURL);
            }
        }
    }

    public void fadeOutIn(FilenameURL filenameURL, long j, long j2) {
        if (!this.toStream) {
            errorMessage("Method 'fadeOutIn' may only be used for streaming and MIDI sources.");
            return;
        }
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
        synchronized (this.soundSequenceLock) {
            if (this.soundSequenceQueue == null) {
                this.soundSequenceQueue = new LinkedList();
            }
            this.soundSequenceQueue.clear();
            this.soundSequenceQueue.add(filenameURL);
        }
    }

    public boolean checkFadeOut() {
        if (!this.toStream) {
            return GET;
        }
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
                if (!incrementSoundSequence()) {
                    stop();
                }
                positionChanged();
                this.preLoad = SET;
                return GET;
            }
            float f2 = f - (j / j2);
            this.fadeOutGain = f2;
            if (f2 <= 0.0f) {
                this.fadeOutGain = -1.0f;
                this.fadeInGain = 0.0f;
                if (!incrementSoundSequence()) {
                    stop();
                }
                positionChanged();
                this.preLoad = SET;
                return GET;
            }
            positionChanged();
            return SET;
        }
        float f3 = this.fadeInGain;
        if (f3 >= 1.0f) {
            return GET;
        }
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
        positionChanged();
        return SET;
    }

    public boolean incrementSoundSequence() {
        if (!this.toStream) {
            errorMessage("Method 'incrementSoundSequence' may only be used for streaming and MIDI sources.");
            return GET;
        }
        synchronized (this.soundSequenceLock) {
            LinkedList linkedList = this.soundSequenceQueue;
            if (linkedList == null || linkedList.size() <= 0) {
                return GET;
            }
            this.filenameURL = (FilenameURL) this.soundSequenceQueue.remove(0);
            ICodec iCodec = this.codec;
            if (iCodec != null) {
                iCodec.cleanup();
            }
            this.codec = SoundSystemConfig.getCodec(this.filenameURL.getFilename());
            return SET;
        }
    }

    public void setTemporary(boolean z) {
        this.temporary = z;
    }

    public void setPosition(float f, float f2, float f3) {
        this.position.x = f;
        this.position.y = f2;
        this.position.z = f3;
    }

    public void setPriority(boolean z) {
        this.priority = z;
    }

    public void setLooping(boolean z) {
        this.toLoop = z;
    }

    public void setAttenuation(int i) {
        this.attModel = i;
    }

    public void setDistOrRoll(float f) {
        this.distOrRoll = f;
    }

    public float getDistanceFromListener() {
        return this.distanceFromListener;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006 A[PHI: r0
      0x0006: PHI (r0v2 float) = (r0v0 float), (r0v1 float) binds: [B:3:0x0004, B:6:0x000c] A[DONT_GENERATE, DONT_INLINE]] */
    public void setPitch(float f) {
        float f2 = 0.5f;
        if (f < 0.5f) {
            f = f2;
        } else {
            f2 = 2.0f;
            if (f > 2.0f) {
                f = f2;
            }
        }
        this.pitch = f;
    }

    public float getPitch() {
        return this.pitch;
    }

    public boolean reverseByteOrderRequired() {
        return this.reverseByteOrder;
    }

    public void changeSource(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, SoundBuffer soundBuffer, float f, float f2, float f3, int i, float f4, boolean z4) {
        this.priority = z;
        this.toStream = z2;
        this.toLoop = z3;
        this.sourcename = str;
        this.filenameURL = filenameURL;
        this.soundBuffer = soundBuffer;
        this.position.x = f;
        this.position.y = f2;
        this.position.z = f3;
        this.attModel = i;
        this.distOrRoll = f4;
        this.temporary = z4;
    }

    public int feedRawAudioData(Channel channel, byte[] bArr) {
        if (!active(GET, GET)) {
            this.toPlay = SET;
            return -1;
        }
        if (this.channel != channel) {
            this.channel = channel;
            channel.close();
            this.channel.setAudioFormat(this.rawDataFormat);
            positionChanged();
        }
        stopped(SET, GET);
        paused(SET, GET);
        return this.channel.feedRawAudioData(bArr);
    }

    public void play(Channel channel) {
        if (!active(GET, GET)) {
            if (this.toLoop) {
                this.toPlay = SET;
            }
        } else {
            if (this.channel != channel) {
                this.channel = channel;
                channel.close();
            }
            stopped(SET, GET);
            paused(SET, GET);
        }
    }

    public boolean stream() {
        if (this.channel == null) {
            return GET;
        }
        if (this.preLoad) {
            if (this.rawDataStream) {
                this.preLoad = GET;
            } else {
                return preLoad();
            }
        }
        if (this.rawDataStream) {
            if (!stopped() && !paused() && this.channel.buffersProcessed() > 0) {
                this.channel.processBuffer();
            }
        } else {
            if (this.codec == null || stopped()) {
                return GET;
            }
            if (paused()) {
                return SET;
            }
            int iBuffersProcessed = this.channel.buffersProcessed();
            for (int i = 0; i < iBuffersProcessed; i++) {
                SoundBuffer soundBuffer = this.codec.read();
                if (soundBuffer != null) {
                    if (soundBuffer.audioData != null) {
                        this.channel.queueBuffer(soundBuffer.audioData);
                    }
                    soundBuffer.cleanup();
                }
                if (this.codec.endOfStream()) {
                    return GET;
                }
            }
        }
        return SET;
    }

    public boolean preLoad() {
        if (this.channel == null || this.codec == null) {
            return GET;
        }
        this.codec.initialize(this.filenameURL.getURL());
        for (int i = 0; i < SoundSystemConfig.getNumberStreamingBuffers(); i++) {
            SoundBuffer soundBuffer = this.codec.read();
            if (soundBuffer != null) {
                if (this.soundBuffer.audioData != null) {
                    this.channel.queueBuffer(this.soundBuffer.audioData);
                }
                soundBuffer.cleanup();
            }
        }
        return SET;
    }

    public void pause() {
        this.toPlay = GET;
        paused(SET, SET);
        Channel channel = this.channel;
        if (channel != null) {
            channel.pause();
        } else {
            errorMessage("Channel null in method 'pause'");
        }
    }

    public void stop() {
        this.toPlay = GET;
        stopped(SET, SET);
        paused(SET, GET);
        Channel channel = this.channel;
        if (channel != null) {
            channel.stop();
        } else {
            errorMessage("Channel null in method 'stop'");
        }
    }

    public void rewind() {
        if (paused(GET, GET)) {
            stop();
        }
        if (this.channel != null) {
            boolean zPlaying = playing();
            this.channel.rewind();
            if (this.toStream && zPlaying) {
                stop();
                play(this.channel);
                return;
            }
            return;
        }
        errorMessage("Channel null in method 'rewind'");
    }

    public void flush() {
        Channel channel = this.channel;
        if (channel != null) {
            channel.flush();
        } else {
            errorMessage("Channel null in method 'flush'");
        }
    }

    public void cull() {
        if (active(GET, GET)) {
            if (playing() && this.toLoop) {
                this.toPlay = SET;
            }
            if (this.rawDataStream) {
                this.toPlay = SET;
            }
            active(SET, GET);
            Channel channel = this.channel;
            if (channel != null) {
                channel.close();
            }
            this.channel = null;
        }
    }

    public void activate() {
        active(SET, SET);
    }

    public boolean active() {
        return active(GET, GET);
    }

    public boolean playing() {
        Channel channel = this.channel;
        return (channel == null || channel.attachedSource != this || paused() || stopped()) ? GET : this.channel.playing();
    }

    public boolean stopped() {
        return stopped(GET, GET);
    }

    public boolean paused() {
        return paused(GET, GET);
    }

    private synchronized boolean active(boolean z, boolean z2) {
        if (z) {
            this.active = z2;
        }
        return this.active;
    }

    private synchronized boolean stopped(boolean z, boolean z2) {
        if (z) {
            this.stopped = z2;
        }
        return this.stopped;
    }

    private synchronized boolean paused(boolean z, boolean z2) {
        if (z) {
            this.paused = z2;
        }
        return this.paused;
    }

    public String getClassName() {
        String libraryTitle = SoundSystemConfig.getLibraryTitle(this.libraryType);
        if (libraryTitle.equals("No Sound")) {
            return "Source";
        }
        return "Source" + libraryTitle;
    }

    protected void message(String str) {
        this.logger.message(str, 0);
    }

    protected void importantMessage(String str) {
        this.logger.importantMessage(str, 0);
    }

    protected boolean errorCheck(boolean z, String str) {
        return this.logger.errorCheck(z, getClassName(), str, 0);
    }

    protected void errorMessage(String str) {
        this.logger.errorMessage(getClassName(), str, 0);
    }

    protected void printStackTrace(Exception exc) {
        this.logger.printStackTrace(exc, 1);
    }
}
