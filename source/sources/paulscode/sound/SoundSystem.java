package paulscode.sound;

import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Random;
import mcshim.sound.sampled.AudioFormat;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class SoundSystem {
    private static final boolean GET = false;
    private static final boolean SET = true;
    private static final boolean XXX = false;
    private static Class currentLibrary;
    private static boolean initialized;
    private static SoundSystemException lastException;
    protected String className = "SoundSystem";
    protected List commandQueue;
    protected CommandThread commandThread;
    protected SoundSystemLogger logger;
    public Random randomNumberGenerator;
    protected Library soundLibrary;
    private List sourcePlayList;

    protected void ManageSources() {
    }

    protected void linkDefaultLibrariesAndCodecs() {
    }

    public SoundSystem() {
        SoundSystemLogger logger = SoundSystemConfig.getLogger();
        this.logger = logger;
        if (logger == null) {
            SoundSystemLogger soundSystemLogger = new SoundSystemLogger();
            this.logger = soundSystemLogger;
            SoundSystemConfig.setLogger(soundSystemLogger);
        }
        linkDefaultLibrariesAndCodecs();
        LinkedList libraries = SoundSystemConfig.getLibraries();
        if (libraries != null) {
            ListIterator listIterator = libraries.listIterator();
            while (listIterator.hasNext()) {
                try {
                    init((Class) listIterator.next());
                    return;
                } catch (SoundSystemException e) {
                    this.logger.printExceptionMessage(e, 1);
                }
            }
        }
        try {
            init(Library.class);
        } catch (SoundSystemException e2) {
            this.logger.printExceptionMessage(e2, 1);
        }
    }

    public SoundSystem(Class cls) throws SoundSystemException {
        SoundSystemLogger logger = SoundSystemConfig.getLogger();
        this.logger = logger;
        if (logger == null) {
            SoundSystemLogger soundSystemLogger = new SoundSystemLogger();
            this.logger = soundSystemLogger;
            SoundSystemConfig.setLogger(soundSystemLogger);
        }
        linkDefaultLibrariesAndCodecs();
        init(cls);
    }

    protected void init(Class cls) throws SoundSystemException {
        message("", 0);
        message("Starting up " + this.className + "...", 0);
        this.randomNumberGenerator = new Random();
        this.commandQueue = new LinkedList();
        this.sourcePlayList = new LinkedList();
        CommandThread commandThread = new CommandThread(this);
        this.commandThread = commandThread;
        commandThread.start();
        snooze(200L);
        newLibrary(cls);
        message("", 0);
    }

    public void cleanup() {
        boolean z;
        message("", 0);
        message(this.className + " shutting down...", 0);
        try {
            this.commandThread.kill();
            this.commandThread.interrupt();
            z = false;
        } catch (Exception unused) {
            z = true;
        }
        if (!z) {
            for (int i = 0; i < 50 && this.commandThread.alive(); i++) {
                snooze(100L);
            }
        }
        if (z || this.commandThread.alive()) {
            errorMessage("Command thread did not die!", 0);
            message("Ignoring errors... continuing clean-up.", 0);
        }
        initialized(SET, GET);
        currentLibrary(SET, null);
        try {
            Library library = this.soundLibrary;
            if (library != null) {
                library.cleanup();
            }
        } catch (Exception unused2) {
            errorMessage("Problem during Library.cleanup()!", 0);
            message("Ignoring errors... continuing clean-up.", 0);
        }
        try {
            List list = this.commandQueue;
            if (list != null) {
                list.clear();
            }
        } catch (Exception unused3) {
            errorMessage("Unable to clear the command queue!", 0);
            message("Ignoring errors... continuing clean-up.", 0);
        }
        try {
            List list2 = this.sourcePlayList;
            if (list2 != null) {
                list2.clear();
            }
        } catch (Exception unused4) {
            errorMessage("Unable to clear the source management list!", 0);
            message("Ignoring errors... continuing clean-up.", 0);
        }
        this.randomNumberGenerator = null;
        this.soundLibrary = null;
        this.commandQueue = null;
        this.sourcePlayList = null;
        this.commandThread = null;
        importantMessage("Author: Paul Lamb, www.paulscode.com", 1);
        message("", 0);
    }

    public void interruptCommandThread() {
        CommandThread commandThread = this.commandThread;
        if (commandThread == null) {
            errorMessage("Command Thread null in method 'interruptCommandThread'", 0);
        } else {
            commandThread.interrupt();
        }
    }

    public void loadSound(String str) {
        CommandQueue(new CommandObject(2, new FilenameURL(str)));
        this.commandThread.interrupt();
    }

    public void loadSound(URL url, String str) {
        CommandQueue(new CommandObject(2, new FilenameURL(url, str)));
        this.commandThread.interrupt();
    }

    public void unloadSound(String str) {
        CommandQueue(new CommandObject(4, str));
        this.commandThread.interrupt();
    }

    public void queueSound(String str, String str2) {
        CommandQueue(new CommandObject(5, str, new FilenameURL(str2)));
        this.commandThread.interrupt();
    }

    public void queueSound(String str, URL url, String str2) {
        CommandQueue(new CommandObject(5, str, new FilenameURL(url, str2)));
        this.commandThread.interrupt();
    }

    public void dequeueSound(String str, String str2) {
        CommandQueue(new CommandObject(6, str, str2));
        this.commandThread.interrupt();
    }

    public void fadeOut(String str, String str2, long j) {
        CommandQueue(new CommandObject(7, str, str2 != null ? new FilenameURL(str2) : null, j));
        this.commandThread.interrupt();
    }

    public void fadeOut(String str, URL url, String str2, long j) {
        CommandQueue(new CommandObject(7, str, (url == null || str2 == null) ? null : new FilenameURL(url, str2), j));
        this.commandThread.interrupt();
    }

    public void fadeOutIn(String str, String str2, long j, long j2) {
        CommandQueue(new CommandObject(8, str, new FilenameURL(str2), j, j2));
        this.commandThread.interrupt();
    }

    public void fadeOutIn(String str, URL url, String str2, long j, long j2) {
        CommandQueue(new CommandObject(8, str, new FilenameURL(url, str2), j, j2));
        this.commandThread.interrupt();
    }

    public void checkFadeVolumes() {
        CommandQueue(new CommandObject(9));
        this.commandThread.interrupt();
    }

    public void backgroundMusic(String str, String str2, boolean z) {
        CommandQueue(new CommandObject(12, SET, SET, z, str, new FilenameURL(str2), 0.0f, 0.0f, 0.0f, 0, 0.0f, GET));
        CommandQueue(new CommandObject(21, str));
        this.commandThread.interrupt();
    }

    public void backgroundMusic(String str, URL url, String str2, boolean z) {
        CommandQueue(new CommandObject(12, SET, SET, z, str, new FilenameURL(url, str2), 0.0f, 0.0f, 0.0f, 0, 0.0f, GET));
        CommandQueue(new CommandObject(21, str));
        this.commandThread.interrupt();
    }

    public void newSource(boolean z, String str, String str2, boolean z2, float f, float f2, float f3, int i, float f4) {
        CommandQueue(new CommandObject(10, z, GET, z2, str, new FilenameURL(str2), f, f2, f3, i, f4));
        this.commandThread.interrupt();
    }

    public void newSource(boolean z, String str, URL url, String str2, boolean z2, float f, float f2, float f3, int i, float f4) {
        CommandQueue(new CommandObject(10, z, GET, z2, str, new FilenameURL(url, str2), f, f2, f3, i, f4));
        this.commandThread.interrupt();
    }

    public void newStreamingSource(boolean z, String str, String str2, boolean z2, float f, float f2, float f3, int i, float f4) {
        CommandQueue(new CommandObject(10, z, SET, z2, str, new FilenameURL(str2), f, f2, f3, i, f4));
        this.commandThread.interrupt();
    }

    public void newStreamingSource(boolean z, String str, URL url, String str2, boolean z2, float f, float f2, float f3, int i, float f4) {
        CommandQueue(new CommandObject(10, z, SET, z2, str, new FilenameURL(url, str2), f, f2, f3, i, f4));
        this.commandThread.interrupt();
    }

    public void rawDataStream(AudioFormat audioFormat, boolean z, String str, float f, float f2, float f3, int i, float f4) {
        CommandQueue(new CommandObject(11, audioFormat, z, str, f, f2, f3, i, f4));
        this.commandThread.interrupt();
    }

    public String quickPlay(boolean z, String str, boolean z2, float f, float f2, float f3, int i, float f4) {
        String str2 = "Source_" + this.randomNumberGenerator.nextInt() + "_" + this.randomNumberGenerator.nextInt();
        CommandQueue(new CommandObject(12, z, GET, z2, str2, new FilenameURL(str), f, f2, f3, i, f4, SET));
        CommandQueue(new CommandObject(21, str2));
        this.commandThread.interrupt();
        return str2;
    }

    public String quickPlay(boolean z, URL url, String str, boolean z2, float f, float f2, float f3, int i, float f4) {
        String str2 = "Source_" + this.randomNumberGenerator.nextInt() + "_" + this.randomNumberGenerator.nextInt();
        CommandQueue(new CommandObject(12, z, GET, z2, str2, new FilenameURL(url, str), f, f2, f3, i, f4, SET));
        CommandQueue(new CommandObject(21, str2));
        this.commandThread.interrupt();
        return str2;
    }

    public String quickStream(boolean z, String str, boolean z2, float f, float f2, float f3, int i, float f4) {
        String str2 = "Source_" + this.randomNumberGenerator.nextInt() + "_" + this.randomNumberGenerator.nextInt();
        CommandQueue(new CommandObject(12, z, SET, z2, str2, new FilenameURL(str), f, f2, f3, i, f4, SET));
        CommandQueue(new CommandObject(21, str2));
        this.commandThread.interrupt();
        return str2;
    }

    public String quickStream(boolean z, URL url, String str, boolean z2, float f, float f2, float f3, int i, float f4) {
        String str2 = "Source_" + this.randomNumberGenerator.nextInt() + "_" + this.randomNumberGenerator.nextInt();
        CommandQueue(new CommandObject(12, z, SET, z2, str2, new FilenameURL(url, str), f, f2, f3, i, f4, SET));
        CommandQueue(new CommandObject(21, str2));
        this.commandThread.interrupt();
        return str2;
    }

    public void setPosition(String str, float f, float f2, float f3) {
        CommandQueue(new CommandObject(13, str, f, f2, f3));
        this.commandThread.interrupt();
    }

    public void setVolume(String str, float f) {
        CommandQueue(new CommandObject(14, str, f));
        this.commandThread.interrupt();
    }

    public float getVolume(String str) {
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            Library library = this.soundLibrary;
            if (library == null) {
                return 0.0f;
            }
            return library.getVolume(str);
        }
    }

    public void setPitch(String str, float f) {
        CommandQueue(new CommandObject(15, str, f));
        this.commandThread.interrupt();
    }

    public float getPitch(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            return library.getPitch(str);
        }
        return 1.0f;
    }

    public void setPriority(String str, boolean z) {
        CommandQueue(new CommandObject(16, str, z));
        this.commandThread.interrupt();
    }

    public void setLooping(String str, boolean z) {
        CommandQueue(new CommandObject(17, str, z));
        this.commandThread.interrupt();
    }

    public void setAttenuation(String str, int i) {
        CommandQueue(new CommandObject(18, str, i));
        this.commandThread.interrupt();
    }

    public void setDistOrRoll(String str, float f) {
        CommandQueue(new CommandObject(19, str, f));
        this.commandThread.interrupt();
    }

    public void feedRawAudioData(String str, byte[] bArr) {
        CommandQueue(new CommandObject(22, str, bArr));
        this.commandThread.interrupt();
    }

    public void play(String str) {
        CommandQueue(new CommandObject(21, str));
        this.commandThread.interrupt();
    }

    public void pause(String str) {
        CommandQueue(new CommandObject(23, str));
        this.commandThread.interrupt();
    }

    public void stop(String str) {
        CommandQueue(new CommandObject(24, str));
        this.commandThread.interrupt();
    }

    public void rewind(String str) {
        CommandQueue(new CommandObject(25, str));
        this.commandThread.interrupt();
    }

    public void flush(String str) {
        CommandQueue(new CommandObject(26, str));
        this.commandThread.interrupt();
    }

    public void cull(String str) {
        CommandQueue(new CommandObject(27, str));
        this.commandThread.interrupt();
    }

    public void activate(String str) {
        CommandQueue(new CommandObject(28, str));
        this.commandThread.interrupt();
    }

    public void setTemporary(String str, boolean z) {
        CommandQueue(new CommandObject(29, str, z));
        this.commandThread.interrupt();
    }

    public void removeSource(String str) {
        CommandQueue(new CommandObject(30, str));
        this.commandThread.interrupt();
    }

    public void moveListener(float f, float f2, float f3) {
        CommandQueue(new CommandObject(31, f, f2, f3));
        this.commandThread.interrupt();
    }

    public void setListenerPosition(float f, float f2, float f3) {
        CommandQueue(new CommandObject(32, f, f2, f3));
        this.commandThread.interrupt();
    }

    public void turnListener(float f) {
        CommandQueue(new CommandObject(33, f));
        this.commandThread.interrupt();
    }

    public void setListenerAngle(float f) {
        CommandQueue(new CommandObject(34, f));
        this.commandThread.interrupt();
    }

    public void setListenerOrientation(float f, float f2, float f3, float f4, float f5, float f6) {
        CommandQueue(new CommandObject(35, f, f2, f3, f4, f5, f6));
        this.commandThread.interrupt();
    }

    public void setMasterVolume(float f) {
        CommandQueue(new CommandObject(36, f));
        this.commandThread.interrupt();
    }

    public float getMasterVolume() {
        return SoundSystemConfig.getMasterGain();
    }

    public ListenerData getListenerData() {
        ListenerData listenerData;
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            listenerData = this.soundLibrary.getListenerData();
        }
        return listenerData;
    }

    public boolean switchLibrary(Class cls) {
        boolean z;
        boolean z2;
        HashMap mapCopySources;
        ListenerData listenerData;
        MidiChannel midiChannel;
        FilenameURL filenameURL;
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            initialized(SET, GET);
            String str = "";
            if (this.soundLibrary != null) {
                currentLibrary(SET, null);
                mapCopySources = copySources(this.soundLibrary.getSources());
                listenerData = this.soundLibrary.getListenerData();
                midiChannel = this.soundLibrary.getMidiChannel();
                if (midiChannel != null) {
                    boolean looping = midiChannel.getLooping();
                    String sourcename = midiChannel.getSourcename();
                    filenameURL = midiChannel.getFilenameURL();
                    z = true;
                    z2 = looping;
                    str = sourcename;
                } else {
                    z = false;
                    z2 = true;
                    filenameURL = null;
                }
                this.soundLibrary.cleanup();
                this.soundLibrary = null;
            } else {
                z = false;
                z2 = true;
                mapCopySources = null;
                listenerData = null;
                midiChannel = null;
                filenameURL = null;
            }
            message("", 0);
            message("Switching to " + SoundSystemConfig.getLibraryTitle(cls), 0);
            message("(" + SoundSystemConfig.getLibraryDescription(cls) + ")", 1);
            try {
                try {
                    try {
                        this.soundLibrary = (Library) cls.newInstance();
                    } catch (IllegalAccessException unused) {
                        errorMessage("The specified library did not load properly", 1);
                    }
                } catch (SecurityException unused2) {
                    errorMessage("The specified library did not load properly", 1);
                }
            } catch (ExceptionInInitializerError unused3) {
                errorMessage("The specified library did not load properly", 1);
            } catch (InstantiationException unused4) {
                errorMessage("The specified library did not load properly", 1);
            }
            if (errorCheck(this.soundLibrary == null, "Library null after initialization in method 'switchLibrary'", 1)) {
                SoundSystemException soundSystemException = new SoundSystemException(this.className + " did not load properly.  Library was null after initialization.", 4);
                lastException(SET, soundSystemException);
                initialized(SET, SET);
                throw soundSystemException;
            }
            try {
                this.soundLibrary.init();
                this.soundLibrary.setListenerData(listenerData);
                if (z) {
                    if (midiChannel != null) {
                        midiChannel.cleanup();
                    }
                    this.soundLibrary.setMidiChannel(new MidiChannel(z2, str, filenameURL));
                }
                this.soundLibrary.copySources(mapCopySources);
                message("", 0);
                lastException(SET, null);
                initialized(SET, SET);
            } catch (SoundSystemException e) {
                lastException(SET, e);
                initialized(SET, SET);
                throw e;
            }
        }
        return SET;
    }

    public boolean newLibrary(Class cls) throws SoundSystemException {
        initialized(SET, GET);
        CommandQueue(new CommandObject(37, cls));
        this.commandThread.interrupt();
        for (int i = 0; !initialized(GET, GET) && i < 100; i++) {
            snooze(400L);
            this.commandThread.interrupt();
        }
        if (!initialized(GET, GET)) {
            SoundSystemException soundSystemException = new SoundSystemException(this.className + " did not load after 30 seconds.", 4);
            lastException(SET, soundSystemException);
            throw soundSystemException;
        }
        SoundSystemException soundSystemExceptionLastException = lastException(GET, null);
        if (soundSystemExceptionLastException == null) {
            return SET;
        }
        throw soundSystemExceptionLastException;
    }

    private void CommandNewLibrary(Class cls) {
        String str;
        boolean z = GET;
        initialized(SET, GET);
        if (this.soundLibrary != null) {
            currentLibrary(SET, null);
            this.soundLibrary.cleanup();
            this.soundLibrary = null;
            str = "Switching to ";
        } else {
            str = "Initializing ";
        }
        message(str + SoundSystemConfig.getLibraryTitle(cls), 0);
        message("(" + SoundSystemConfig.getLibraryDescription(cls) + ")", 1);
        try {
            this.soundLibrary = (Library) cls.newInstance();
        } catch (ExceptionInInitializerError unused) {
            errorMessage("The specified library did not load properly", 1);
        } catch (IllegalAccessException unused2) {
            errorMessage("The specified library did not load properly", 1);
        } catch (InstantiationException unused3) {
            errorMessage("The specified library did not load properly", 1);
        } catch (SecurityException unused4) {
            errorMessage("The specified library did not load properly", 1);
        }
        if (this.soundLibrary == null) {
            z = true;
        }
        if (errorCheck(z, "Library null after initialization in method 'newLibrary'", 1)) {
            lastException(SET, new SoundSystemException(this.className + " did not load properly.  Library was null after initialization.", 4));
            importantMessage("Switching to silent mode", 1);
            try {
                this.soundLibrary = new Library();
            } catch (SoundSystemException unused5) {
                lastException(SET, new SoundSystemException("Silent mode did not load properly.  Library was null after initialization.", 4));
                initialized(SET, SET);
                return;
            }
        }
        try {
            this.soundLibrary.init();
            lastException(SET, null);
            initialized(SET, SET);
        } catch (SoundSystemException e) {
            lastException(SET, e);
            initialized(SET, SET);
        }
    }

    private void CommandInitialize() {
        try {
            if (errorCheck(this.soundLibrary == null ? true : GET, "Library null after initialization in method 'CommandInitialize'", 1)) {
                SoundSystemException soundSystemException = new SoundSystemException(this.className + " did not load properly.  Library was null after initialization.", 4);
                lastException(SET, soundSystemException);
                throw soundSystemException;
            }
            this.soundLibrary.init();
        } catch (SoundSystemException e) {
            lastException(SET, e);
            initialized(SET, SET);
        }
    }

    private void CommandLoadSound(FilenameURL filenameURL) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.loadSound(filenameURL);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandLoadSound'", 0);
        }
    }

    private void CommandUnloadSound(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.unloadSound(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandLoadSound'", 0);
        }
    }

    private void CommandQueueSound(String str, FilenameURL filenameURL) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.queueSound(str, filenameURL);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandQueueSound'", 0);
        }
    }

    private void CommandDequeueSound(String str, String str2) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.dequeueSound(str, str2);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandDequeueSound'", 0);
        }
    }

    private void CommandFadeOut(String str, FilenameURL filenameURL, long j) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.fadeOut(str, filenameURL, j);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandFadeOut'", 0);
        }
    }

    private void CommandFadeOutIn(String str, FilenameURL filenameURL, long j, long j2) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.fadeOutIn(str, filenameURL, j, j2);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandFadeOutIn'", 0);
        }
    }

    private void CommandCheckFadeVolumes() {
        Library library = this.soundLibrary;
        if (library != null) {
            library.checkFadeVolumes();
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandCheckFadeVolumes'", 0);
        }
    }

    private void CommandNewSource(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, float f, float f2, float f3, int i, float f4) {
        if (this.soundLibrary != null) {
            if (filenameURL.getFilename().matches(SoundSystemConfig.EXTENSION_MIDI) && !SoundSystemConfig.midiCodec()) {
                this.soundLibrary.loadMidi(z3, str, filenameURL);
                return;
            } else {
                this.soundLibrary.newSource(z, z2, z3, str, filenameURL, f, f2, f3, i, f4);
                return;
            }
        }
        errorMessage("Variable 'soundLibrary' null in method 'CommandNewSource'", 0);
    }

    private void CommandRawDataStream(AudioFormat audioFormat, boolean z, String str, float f, float f2, float f3, int i, float f4) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.rawDataStream(audioFormat, z, str, f, f2, f3, i, f4);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandRawDataStream'", 0);
        }
    }

    private void CommandQuickPlay(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, float f, float f2, float f3, int i, float f4, boolean z4) {
        if (this.soundLibrary != null) {
            if (filenameURL.getFilename().matches(SoundSystemConfig.EXTENSION_MIDI) && !SoundSystemConfig.midiCodec()) {
                this.soundLibrary.loadMidi(z3, str, filenameURL);
                return;
            } else {
                this.soundLibrary.quickPlay(z, z2, z3, str, filenameURL, f, f2, f3, i, f4, z4);
                return;
            }
        }
        errorMessage("Variable 'soundLibrary' null in method 'CommandQuickPlay'", 0);
    }

    private void CommandSetPosition(String str, float f, float f2, float f3) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setPosition(str, f, f2, f3);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandMoveSource'", 0);
        }
    }

    private void CommandSetVolume(String str, float f) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setVolume(str, f);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetVolume'", 0);
        }
    }

    private void CommandSetPitch(String str, float f) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setPitch(str, f);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetPitch'", 0);
        }
    }

    private void CommandSetPriority(String str, boolean z) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setPriority(str, z);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetPriority'", 0);
        }
    }

    private void CommandSetLooping(String str, boolean z) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setLooping(str, z);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetLooping'", 0);
        }
    }

    private void CommandSetAttenuation(String str, int i) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setAttenuation(str, i);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetAttenuation'", 0);
        }
    }

    private void CommandSetDistOrRoll(String str, float f) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setDistOrRoll(str, f);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetDistOrRoll'", 0);
        }
    }

    private void CommandPlay(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.play(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandPlay'", 0);
        }
    }

    private void CommandFeedRawAudioData(String str, byte[] bArr) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.feedRawAudioData(str, bArr);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandFeedRawAudioData'", 0);
        }
    }

    private void CommandPause(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.pause(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandPause'", 0);
        }
    }

    private void CommandStop(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.stop(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandStop'", 0);
        }
    }

    private void CommandRewind(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.rewind(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandRewind'", 0);
        }
    }

    private void CommandFlush(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.flush(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandFlush'", 0);
        }
    }

    private void CommandSetTemporary(String str, boolean z) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setTemporary(str, z);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetActive'", 0);
        }
    }

    private void CommandRemoveSource(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.removeSource(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandRemoveSource'", 0);
        }
    }

    private void CommandMoveListener(float f, float f2, float f3) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.moveListener(f, f2, f3);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandMoveListener'", 0);
        }
    }

    private void CommandSetListenerPosition(float f, float f2, float f3) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setListenerPosition(f, f2, f3);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetListenerPosition'", 0);
        }
    }

    private void CommandTurnListener(float f) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.turnListener(f);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandTurnListener'", 0);
        }
    }

    private void CommandSetListenerAngle(float f) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setListenerAngle(f);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetListenerAngle'", 0);
        }
    }

    private void CommandSetListenerOrientation(float f, float f2, float f3, float f4, float f5, float f6) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setListenerOrientation(f, f2, f3, f4, f5, f6);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetListenerOrientation'", 0);
        }
    }

    private void CommandCull(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.cull(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandCull'", 0);
        }
    }

    private void CommandActivate(String str) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.activate(str);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandActivate'", 0);
        }
    }

    private void CommandSetMasterVolume(float f) {
        Library library = this.soundLibrary;
        if (library != null) {
            library.setMasterVolume(f);
        } else {
            errorMessage("Variable 'soundLibrary' null in method 'CommandSetMasterVolume'", 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean CommandQueue(CommandObject commandObject) {
        int i;
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            char c = 1;
            int i2 = 0;
            try {
                if (commandObject == null) {
                    char c2 = 0;
                    while (true) {
                        List list = this.commandQueue;
                        if (list == null || list.size() <= 0) {
                            break;
                        }
                        CommandObject commandObject2 = (CommandObject) this.commandQueue.remove(i2);
                        if (commandObject2 != null) {
                            switch (commandObject2.Command) {
                                case 1:
                                    i = i2;
                                    CommandInitialize();
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 2:
                                    i = i2;
                                    CommandLoadSound((FilenameURL) commandObject2.objectArgs[i]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 3:
                                case Keyboard.KEY_T /* 20 */:
                                default:
                                    break;
                                case 4:
                                    i = i2;
                                    CommandUnloadSound(commandObject2.stringArgs[i]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 5:
                                    i = i2;
                                    CommandQueueSound(commandObject2.stringArgs[i], (FilenameURL) commandObject2.objectArgs[i]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 6:
                                    i = i2;
                                    CommandDequeueSound(commandObject2.stringArgs[i], commandObject2.stringArgs[1]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 7:
                                    i = i2;
                                    CommandFadeOut(commandObject2.stringArgs[i], (FilenameURL) commandObject2.objectArgs[i], commandObject2.longArgs[i]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 8:
                                    i = i2;
                                    CommandFadeOutIn(commandObject2.stringArgs[i], (FilenameURL) commandObject2.objectArgs[i], commandObject2.longArgs[i], commandObject2.longArgs[1]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 9:
                                    i = i2;
                                    CommandCheckFadeVolumes();
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 10:
                                    i = i2;
                                    CommandNewSource(commandObject2.boolArgs[i], commandObject2.boolArgs[1], commandObject2.boolArgs[2], commandObject2.stringArgs[i], (FilenameURL) commandObject2.objectArgs[i], commandObject2.floatArgs[i], commandObject2.floatArgs[1], commandObject2.floatArgs[2], commandObject2.intArgs[i], commandObject2.floatArgs[3]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 11:
                                    i = i2;
                                    CommandRawDataStream((AudioFormat) commandObject2.objectArgs[i], commandObject2.boolArgs[i], commandObject2.stringArgs[i], commandObject2.floatArgs[i], commandObject2.floatArgs[1], commandObject2.floatArgs[2], commandObject2.intArgs[i], commandObject2.floatArgs[3]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 12:
                                    i = i2;
                                    CommandQuickPlay(commandObject2.boolArgs[i2], commandObject2.boolArgs[c], commandObject2.boolArgs[2], commandObject2.stringArgs[i2], (FilenameURL) commandObject2.objectArgs[i2], commandObject2.floatArgs[i2], commandObject2.floatArgs[c], commandObject2.floatArgs[2], commandObject2.intArgs[i2], commandObject2.floatArgs[3], commandObject2.boolArgs[3]);
                                    i2 = i;
                                    c = 1;
                                    break;
                                case 13:
                                    CommandSetPosition(commandObject2.stringArgs[i2], commandObject2.floatArgs[i2], commandObject2.floatArgs[c], commandObject2.floatArgs[2]);
                                    break;
                                case 14:
                                    CommandSetVolume(commandObject2.stringArgs[i2], commandObject2.floatArgs[i2]);
                                    break;
                                case 15:
                                    CommandSetPitch(commandObject2.stringArgs[i2], commandObject2.floatArgs[i2]);
                                    break;
                                case 16:
                                    CommandSetPriority(commandObject2.stringArgs[i2], commandObject2.boolArgs[i2]);
                                    break;
                                case 17:
                                    CommandSetLooping(commandObject2.stringArgs[i2], commandObject2.boolArgs[i2]);
                                    break;
                                case 18:
                                    CommandSetAttenuation(commandObject2.stringArgs[i2], commandObject2.intArgs[i2]);
                                    break;
                                case 19:
                                    CommandSetDistOrRoll(commandObject2.stringArgs[i2], commandObject2.floatArgs[i2]);
                                    break;
                                case 21:
                                    this.sourcePlayList.add(commandObject2);
                                    break;
                                case 22:
                                    this.sourcePlayList.add(commandObject2);
                                    break;
                                case 23:
                                    CommandPause(commandObject2.stringArgs[i2]);
                                    break;
                                case 24:
                                    CommandStop(commandObject2.stringArgs[i2]);
                                    break;
                                case 25:
                                    CommandRewind(commandObject2.stringArgs[i2]);
                                    break;
                                case 26:
                                    CommandFlush(commandObject2.stringArgs[i2]);
                                    break;
                                case 27:
                                    CommandCull(commandObject2.stringArgs[i2]);
                                    break;
                                case 28:
                                    CommandActivate(commandObject2.stringArgs[i2]);
                                    c2 = c;
                                    break;
                                case 29:
                                    CommandSetTemporary(commandObject2.stringArgs[i2], commandObject2.boolArgs[i2]);
                                    break;
                                case 30:
                                    CommandRemoveSource(commandObject2.stringArgs[i2]);
                                    break;
                                case 31:
                                    CommandMoveListener(commandObject2.floatArgs[i2], commandObject2.floatArgs[c], commandObject2.floatArgs[2]);
                                    break;
                                case 32:
                                    CommandSetListenerPosition(commandObject2.floatArgs[i2], commandObject2.floatArgs[c], commandObject2.floatArgs[2]);
                                    break;
                                case 33:
                                    CommandTurnListener(commandObject2.floatArgs[i2]);
                                    break;
                                case 34:
                                    CommandSetListenerAngle(commandObject2.floatArgs[i2]);
                                    break;
                                case 35:
                                    CommandSetListenerOrientation(commandObject2.floatArgs[i2], commandObject2.floatArgs[c], commandObject2.floatArgs[2], commandObject2.floatArgs[3], commandObject2.floatArgs[4], commandObject2.floatArgs[5]);
                                    break;
                                case 36:
                                    CommandSetMasterVolume(commandObject2.floatArgs[i2]);
                                    break;
                                case 37:
                                    CommandNewLibrary(commandObject2.classArgs[i2]);
                                    break;
                            }
                        }
                        i = i2;
                        i2 = i;
                        c = 1;
                    }
                    int i3 = i2;
                    if (c2 != 0) {
                        this.soundLibrary.replaySources();
                    }
                    while (true) {
                        List list2 = this.sourcePlayList;
                        if (list2 == null || list2.size() <= 0) {
                            break;
                        }
                        CommandObject commandObject3 = (CommandObject) this.sourcePlayList.remove(i3 == true ? 1 : 0);
                        if (commandObject3 != null) {
                            int i4 = commandObject3.Command;
                            if (i4 == 21) {
                                CommandPlay(commandObject3.stringArgs[i3 == true ? 1 : 0]);
                            } else if (i4 == 22) {
                                CommandFeedRawAudioData(commandObject3.stringArgs[i3 == true ? 1 : 0], commandObject3.buffer);
                            }
                        }
                    }
                    List list3 = this.commandQueue;
                    boolean z = i3;
                    if (list3 != null && list3.size() > 0) {
                        z = i3;
                        z = 1;
                    }
                    return z;
                }
                List list4 = this.commandQueue;
                if (list4 == null) {
                    return GET;
                }
                list4.add(commandObject);
                return SET;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeTemporarySources() {
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            Library library = this.soundLibrary;
            if (library != null) {
                library.removeTemporarySources();
            }
        }
    }

    public boolean playing(String str) {
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            Library library = this.soundLibrary;
            if (library == null) {
                return GET;
            }
            Source source = (Source) library.getSources().get(str);
            if (source == null) {
                return GET;
            }
            return source.playing();
        }
    }

    public boolean playing() {
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            Library library = this.soundLibrary;
            if (library == null) {
                return GET;
            }
            HashMap sources = library.getSources();
            if (sources == null) {
                return GET;
            }
            Iterator it = sources.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    return GET;
                }
                Source source = (Source) sources.get((String) it.next());
                if (source != null && source.playing()) {
                    return SET;
                }
            }
        }
    }

    private HashMap copySources(HashMap map) {
        HashMap map2 = new HashMap();
        for (String str : map.keySet()) {
            Source source = (Source) map.get(str);
            if (source != null) {
                map2.put(str, new Source(source, null));
            }
        }
        return map2;
    }

    public static boolean libraryCompatible(Class cls) {
        SoundSystemLogger logger = SoundSystemConfig.getLogger();
        if (logger == null) {
            logger = new SoundSystemLogger();
            SoundSystemConfig.setLogger(logger);
        }
        logger.message("", 0);
        logger.message("Checking if " + SoundSystemConfig.getLibraryTitle(cls) + " is compatible...", 0);
        boolean zLibraryCompatible = SoundSystemConfig.libraryCompatible(cls);
        if (zLibraryCompatible) {
            logger.message("...yes", 1);
        } else {
            logger.message("...no", 1);
        }
        return zLibraryCompatible;
    }

    public static Class currentLibrary() {
        return currentLibrary(GET, null);
    }

    public static boolean initialized() {
        return initialized(GET, GET);
    }

    public static SoundSystemException getLastException() {
        return lastException(GET, null);
    }

    public static void setException(SoundSystemException soundSystemException) {
        lastException(SET, soundSystemException);
    }

    private static boolean initialized(boolean z, boolean z2) {
        boolean z3;
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            if (z) {
                initialized = z2;
                z3 = initialized;
            } else {
                z3 = initialized;
            }
            throw th;
        }
        return z3;
    }

    private static Class currentLibrary(boolean z, Class cls) {
        Class cls2;
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            if (z) {
                currentLibrary = cls;
                cls2 = currentLibrary;
            } else {
                cls2 = currentLibrary;
            }
            throw th;
        }
        return cls2;
    }

    private static SoundSystemException lastException(boolean z, SoundSystemException soundSystemException) {
        SoundSystemException soundSystemException2;
        synchronized (SoundSystemConfig.THREAD_SYNC) {
            if (z) {
                lastException = soundSystemException;
                soundSystemException2 = lastException;
            } else {
                soundSystemException2 = lastException;
            }
            throw th;
        }
        return soundSystemException2;
    }

    protected static void snooze(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException unused) {
        }
    }

    protected void message(String str, int i) {
        this.logger.message(str, i);
    }

    protected void importantMessage(String str, int i) {
        this.logger.importantMessage(str, i);
    }

    protected boolean errorCheck(boolean z, String str, int i) {
        return this.logger.errorCheck(z, this.className, str, i);
    }

    protected void errorMessage(String str, int i) {
        this.logger.errorMessage(this.className, str, i);
    }
}
