package paulscode.sound;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import mcshim.sound.sampled.AudioFormat;

/* JADX INFO: loaded from: classes.dex */
public class Library {
    protected HashMap bufferMap;
    private MidiChannel midiChannel;
    protected StreamThread streamThread;
    private int nextStreamingChannel = 0;
    private int nextNormalChannel = 0;
    private SoundSystemLogger logger = SoundSystemConfig.getLogger();
    protected HashMap sourceMap = new HashMap();
    protected ListenerData listener = new ListenerData(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f, 0.0f);
    protected List streamingChannels = new LinkedList();
    protected List normalChannels = new LinkedList();
    private String[] streamingChannelSourceNames = new String[SoundSystemConfig.getNumberStreamingChannels()];
    private String[] normalChannelSourceNames = new String[SoundSystemConfig.getNumberNormalChannels()];

    public static String getDescription() {
        return "Silent Mode";
    }

    public static String getTitle() {
        return "No Sound";
    }

    public static boolean libraryCompatible() {
        return true;
    }

    protected Channel createChannel(int i) {
        return null;
    }

    public String getClassName() {
        return "Library";
    }

    public boolean loadSound(FilenameURL filenameURL) {
        return true;
    }

    public Library() {
        this.bufferMap = null;
        this.bufferMap = new HashMap();
        StreamThread streamThread = new StreamThread();
        this.streamThread = streamThread;
        streamThread.start();
    }

    public void cleanup() {
        this.streamThread.kill();
        this.streamThread.interrupt();
        for (int i = 0; i < 50 && this.streamThread.alive(); i++) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
            }
        }
        if (this.streamThread.alive()) {
            errorMessage("Stream thread did not die!");
            message("Ignoring errors... continuing clean-up.");
        }
        MidiChannel midiChannel = this.midiChannel;
        if (midiChannel != null) {
            midiChannel.cleanup();
            this.midiChannel = null;
        }
        if (this.streamingChannels != null) {
            while (!this.streamingChannels.isEmpty()) {
                Channel channel = (Channel) this.streamingChannels.remove(0);
                channel.close();
                channel.cleanup();
            }
            this.streamingChannels.clear();
            this.streamingChannels = null;
        }
        if (this.normalChannels != null) {
            while (!this.normalChannels.isEmpty()) {
                Channel channel2 = (Channel) this.normalChannels.remove(0);
                channel2.close();
                channel2.cleanup();
            }
            this.normalChannels.clear();
            this.normalChannels = null;
        }
        Iterator it = this.sourceMap.keySet().iterator();
        while (it.hasNext()) {
            Source source = (Source) this.sourceMap.get((String) it.next());
            if (source != null) {
                source.cleanup();
            }
        }
        this.sourceMap.clear();
        this.sourceMap = null;
        this.listener = null;
        this.streamThread = null;
    }

    public void init() {
        Channel channelCreateChannel;
        Channel channelCreateChannel2;
        for (int i = 0; i < SoundSystemConfig.getNumberStreamingChannels() && (channelCreateChannel2 = createChannel(1)) != null; i++) {
            this.streamingChannels.add(channelCreateChannel2);
        }
        for (int i2 = 0; i2 < SoundSystemConfig.getNumberNormalChannels() && (channelCreateChannel = createChannel(0)) != null; i2++) {
            this.normalChannels.add(channelCreateChannel);
        }
    }

    public void unloadSound(String str) {
        this.bufferMap.remove(str);
    }

    public void rawDataStream(AudioFormat audioFormat, boolean z, String str, float f, float f2, float f3, int i, float f4) {
        this.sourceMap.put(str, new Source(audioFormat, z, str, f, f2, f3, i, f4));
    }

    public void newSource(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, float f, float f2, float f3, int i, float f4) {
        this.sourceMap.put(str, new Source(z, z2, z3, str, filenameURL, null, f, f2, f3, i, f4, false));
    }

    public void quickPlay(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, float f, float f2, float f3, int i, float f4, boolean z4) {
        this.sourceMap.put(str, new Source(z, z2, z3, str, filenameURL, null, f, f2, f3, i, f4, z4));
    }

    public void setTemporary(String str, boolean z) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.setTemporary(z);
        }
    }

    public void setPosition(String str, float f, float f2, float f3) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.setPosition(f, f2, f3);
        }
    }

    public void setPriority(String str, boolean z) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.setPriority(z);
        }
    }

    public void setLooping(String str, boolean z) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.setLooping(z);
        }
    }

    public void setAttenuation(String str, int i) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.setAttenuation(i);
        }
    }

    public void setDistOrRoll(String str, float f) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.setDistOrRoll(f);
        }
    }

    public int feedRawAudioData(String str, byte[] bArr) {
        if (str == null || str.equals("")) {
            errorMessage("Sourcename not specified in method 'feedRawAudioData'");
            return -1;
        }
        if (midiSourcename(str)) {
            errorMessage("Raw audio data can not be fed to the MIDI channel.");
            return -1;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source == null) {
            errorMessage("Source '" + str + "' not found in method 'feedRawAudioData'");
        }
        return feedRawAudioData(source, bArr);
    }

    public int feedRawAudioData(Source source, byte[] bArr) {
        Channel nextChannel;
        if (source == null) {
            errorMessage("Source parameter null in method 'feedRawAudioData'");
            return -1;
        }
        if (!source.toStream) {
            errorMessage("Only a streaming source may be specified in method 'feedRawAudioData'");
            return -1;
        }
        if (!source.rawDataStream) {
            errorMessage("Streaming source already associated with a file or URL in method'feedRawAudioData'");
            return -1;
        }
        if (!source.playing() || source.channel == null) {
            if (source.channel != null && source.channel.attachedSource == source) {
                nextChannel = source.channel;
            } else {
                nextChannel = getNextChannel(source);
            }
            int iFeedRawAudioData = source.feedRawAudioData(nextChannel, bArr);
            nextChannel.attachedSource = source;
            this.streamThread.watch(source);
            this.streamThread.interrupt();
            return iFeedRawAudioData;
        }
        return source.feedRawAudioData(source.channel, bArr);
    }

    public void play(String str) {
        if (str == null || str.equals("")) {
            errorMessage("Sourcename not specified in method 'play'");
            return;
        }
        if (midiSourcename(str)) {
            this.midiChannel.play();
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source == null) {
            errorMessage("Source '" + str + "' not found in method 'play'");
        }
        play(source);
    }

    public void play(Source source) {
        if (source == null || source.rawDataStream || !source.active() || source.playing()) {
            return;
        }
        Channel nextChannel = getNextChannel(source);
        if (source == null || nextChannel == null) {
            return;
        }
        if (source.channel != null && source.channel.attachedSource != source) {
            source.channel = null;
        }
        nextChannel.attachedSource = source;
        source.play(nextChannel);
        if (source.toStream) {
            this.streamThread.watch(source);
            this.streamThread.interrupt();
        }
    }

    public void stop(String str) {
        if (str == null || str.equals("")) {
            errorMessage("Sourcename not specified in method 'stop'");
            return;
        }
        if (midiSourcename(str)) {
            this.midiChannel.stop();
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.stop();
        }
    }

    public void pause(String str) {
        if (str == null || str.equals("")) {
            errorMessage("Sourcename not specified in method 'stop'");
            return;
        }
        if (midiSourcename(str)) {
            this.midiChannel.pause();
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.pause();
        }
    }

    public void rewind(String str) {
        if (midiSourcename(str)) {
            this.midiChannel.rewind();
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.rewind();
        }
    }

    public void flush(String str) {
        if (midiSourcename(str)) {
            errorMessage("You can not flush the MIDI channel");
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.flush();
        }
    }

    public void cull(String str) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.cull();
        }
    }

    public void activate(String str) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.activate();
            if (source.toPlay) {
                play(source);
            }
        }
    }

    public void setMasterVolume(float f) {
        SoundSystemConfig.setMasterGain(f);
        MidiChannel midiChannel = this.midiChannel;
        if (midiChannel != null) {
            midiChannel.resetGain();
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001b A[PHI: r0
      0x001b: PHI (r0v4 float) = (r0v2 float), (r0v3 float) binds: [B:8:0x0019, B:11:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
    public void setVolume(String str, float f) {
        if (midiSourcename(str)) {
            this.midiChannel.setVolume(f);
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            float f2 = 0.0f;
            if (f < 0.0f) {
                f = f2;
            } else {
                f2 = 1.0f;
                if (f > 1.0f) {
                    f = f2;
                }
            }
            source.sourceVolume = f;
            source.positionChanged();
        }
    }

    public float getVolume(String str) {
        if (midiSourcename(str)) {
            return this.midiChannel.getVolume();
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            return source.sourceVolume;
        }
        return 0.0f;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016 A[PHI: r0
      0x0016: PHI (r0v4 float) = (r0v2 float), (r0v3 float) binds: [B:7:0x0014, B:10:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    public void setPitch(String str, float f) {
        Source source;
        if (midiSourcename(str) || (source = (Source) this.sourceMap.get(str)) == null) {
            return;
        }
        float f2 = 0.5f;
        if (f < 0.5f) {
            f = f2;
        } else {
            f2 = 2.0f;
            if (f > 2.0f) {
                f = f2;
            }
        }
        source.setPitch(f);
        source.positionChanged();
    }

    public float getPitch(String str) {
        Source source;
        if (midiSourcename(str) || (source = (Source) this.sourceMap.get(str)) == null) {
            return 1.0f;
        }
        return source.getPitch();
    }

    public void moveListener(float f, float f2, float f3) {
        setListenerPosition(this.listener.position.x + f, this.listener.position.y + f2, this.listener.position.z + f3);
    }

    public void setListenerPosition(float f, float f2, float f3) {
        this.listener.setPosition(f, f2, f3);
        Iterator it = this.sourceMap.keySet().iterator();
        while (it.hasNext()) {
            Source source = (Source) this.sourceMap.get((String) it.next());
            if (source != null) {
                source.positionChanged();
            }
        }
    }

    public void turnListener(float f) {
        setListenerAngle(this.listener.angle + f);
    }

    public void setListenerAngle(float f) {
        this.listener.setAngle(f);
        Iterator it = this.sourceMap.keySet().iterator();
        while (it.hasNext()) {
            Source source = (Source) this.sourceMap.get((String) it.next());
            if (source != null) {
                source.positionChanged();
            }
        }
    }

    public void setListenerOrientation(float f, float f2, float f3, float f4, float f5, float f6) {
        this.listener.setOrientation(f, f2, f3, f4, f5, f6);
        Iterator it = this.sourceMap.keySet().iterator();
        while (it.hasNext()) {
            Source source = (Source) this.sourceMap.get((String) it.next());
            if (source != null) {
                source.positionChanged();
            }
        }
    }

    public void setListenerData(ListenerData listenerData) {
        this.listener.setData(listenerData);
    }

    public void copySources(HashMap map) {
        if (map == null) {
            return;
        }
        this.sourceMap.clear();
        for (String str : map.keySet()) {
            Source source = (Source) map.get(str);
            if (source != null) {
                loadSound(source.filenameURL);
                this.sourceMap.put(str, new Source(source, null));
            }
        }
    }

    public void removeSource(String str) {
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.cleanup();
        }
        this.sourceMap.remove(str);
    }

    public void removeTemporarySources() {
        Iterator it = this.sourceMap.keySet().iterator();
        while (it.hasNext()) {
            Source source = (Source) this.sourceMap.get((String) it.next());
            if (source != null && source.temporary && !source.playing()) {
                source.cleanup();
                it.remove();
            }
        }
    }

    private Channel getNextChannel(Source source) {
        String str;
        int i;
        List list;
        String[] strArr;
        if (source == null || (str = source.sourcename) == null) {
            return null;
        }
        if (source.toStream) {
            i = this.nextStreamingChannel;
            list = this.streamingChannels;
            strArr = this.streamingChannelSourceNames;
        } else {
            i = this.nextNormalChannel;
            list = this.normalChannels;
            strArr = this.normalChannelSourceNames;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equals(strArr[i2])) {
                return (Channel) list.get(i2);
            }
        }
        int i3 = i;
        for (int i4 = 0; i4 < size; i4++) {
            String str2 = strArr[i3];
            Source source2 = str2 == null ? null : (Source) this.sourceMap.get(str2);
            if (source2 == null || !source2.playing()) {
                if (source.toStream) {
                    int i5 = i3 + 1;
                    this.nextStreamingChannel = i5;
                    if (i5 >= size) {
                        this.nextStreamingChannel = 0;
                    }
                } else {
                    int i6 = i3 + 1;
                    this.nextNormalChannel = i6;
                    if (i6 >= size) {
                        this.nextNormalChannel = 0;
                    }
                }
                strArr[i3] = str;
                return (Channel) list.get(i3);
            }
            i3++;
            if (i3 >= size) {
                i3 = 0;
            }
        }
        for (int i7 = 0; i7 < size; i7++) {
            String str3 = strArr[i];
            Source source3 = str3 == null ? null : (Source) this.sourceMap.get(str3);
            if (source3 == null || !source3.playing() || !source3.priority) {
                if (source.toStream) {
                    int i8 = i + 1;
                    this.nextStreamingChannel = i8;
                    if (i8 >= size) {
                        this.nextStreamingChannel = 0;
                    }
                } else {
                    int i9 = i + 1;
                    this.nextNormalChannel = i9;
                    if (i9 >= size) {
                        this.nextNormalChannel = 0;
                    }
                }
                strArr[i] = str;
                return (Channel) list.get(i);
            }
            i++;
            if (i >= size) {
                i = 0;
            }
        }
        return null;
    }

    public void replaySources() {
        for (String str : this.sourceMap.keySet()) {
            Source source = (Source) this.sourceMap.get(str);
            if (source != null && source.toPlay && !source.playing()) {
                play(str);
                source.toPlay = false;
            }
        }
    }

    public void queueSound(String str, FilenameURL filenameURL) {
        if (midiSourcename(str)) {
            this.midiChannel.queueSound(filenameURL);
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.queueSound(filenameURL);
        }
    }

    public void dequeueSound(String str, String str2) {
        if (midiSourcename(str)) {
            this.midiChannel.dequeueSound(str2);
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.dequeueSound(str2);
        }
    }

    public void fadeOut(String str, FilenameURL filenameURL, long j) {
        if (midiSourcename(str)) {
            this.midiChannel.fadeOut(filenameURL, j);
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.fadeOut(filenameURL, j);
        }
    }

    public void fadeOutIn(String str, FilenameURL filenameURL, long j, long j2) {
        if (midiSourcename(str)) {
            this.midiChannel.fadeOutIn(filenameURL, j, j2);
            return;
        }
        Source source = (Source) this.sourceMap.get(str);
        if (source != null) {
            source.fadeOutIn(filenameURL, j, j2);
        }
    }

    public void checkFadeVolumes() {
        Source source;
        MidiChannel midiChannel = this.midiChannel;
        if (midiChannel != null) {
            midiChannel.resetGain();
        }
        for (int i = 0; i < this.streamingChannels.size(); i++) {
            Channel channel = (Channel) this.streamingChannels.get(i);
            if (channel != null && (source = channel.attachedSource) != null) {
                source.checkFadeOut();
            }
        }
    }

    public void loadMidi(boolean z, String str, FilenameURL filenameURL) {
        if (filenameURL == null) {
            errorMessage("Filename/URL not specified in method 'loadMidi'.");
            return;
        }
        if (!filenameURL.getFilename().matches(SoundSystemConfig.EXTENSION_MIDI)) {
            errorMessage("Filename/identifier doesn't end in '.mid' or'.midi' in method loadMidi.");
            return;
        }
        MidiChannel midiChannel = this.midiChannel;
        if (midiChannel == null) {
            this.midiChannel = new MidiChannel(z, str, filenameURL);
        } else {
            midiChannel.switchSource(z, str, filenameURL);
        }
    }

    public void unloadMidi() {
        MidiChannel midiChannel = this.midiChannel;
        if (midiChannel != null) {
            midiChannel.cleanup();
        }
        this.midiChannel = null;
    }

    public boolean midiSourcename(String str) {
        MidiChannel midiChannel = this.midiChannel;
        return (midiChannel == null || str == null || midiChannel.getSourcename() == null || str.equals("") || !str.equals(this.midiChannel.getSourcename())) ? false : true;
    }

    public Source getSource(String str) {
        return (Source) this.sourceMap.get(str);
    }

    public MidiChannel getMidiChannel() {
        return this.midiChannel;
    }

    public void setMidiChannel(MidiChannel midiChannel) {
        MidiChannel midiChannel2 = this.midiChannel;
        if (midiChannel2 != null && midiChannel2 != midiChannel) {
            midiChannel2.cleanup();
        }
        this.midiChannel = midiChannel;
    }

    public void listenerMoved() {
        Iterator it = this.sourceMap.keySet().iterator();
        while (it.hasNext()) {
            Source source = (Source) this.sourceMap.get((String) it.next());
            if (source != null) {
                source.listenerMoved();
            }
        }
    }

    public HashMap getSources() {
        return this.sourceMap;
    }

    public ListenerData getListenerData() {
        return this.listener;
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
