package defpackage;

import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public final class an {
    public void a(Reader reader, wg wgVar) throws IOException, xe {
        lj ljVar = new lj(reader);
        char c = (char) ljVar.c();
        if (c == '[') {
            ljVar.a(c);
            wgVar.b();
            a(ljVar, wgVar);
        } else if (c == '{') {
            ljVar.a(c);
            wgVar.b();
            b(ljVar, wgVar);
        } else {
            throw new xe("Expected either [ or { but got [" + c + "].", ljVar);
        }
        int iL = l(ljVar);
        if (iL != -1) {
            throw new xe("Got unexpected trailing character [" + ((char) iL) + "].", ljVar);
        }
        wgVar.c();
    }

    private void a(lj ljVar, wg wgVar) throws IOException, xe {
        char cL = (char) l(ljVar);
        if (cL != '[') {
            throw new xe("Expected object to start with [ but got [" + cL + "].", ljVar);
        }
        wgVar.d();
        char cL2 = (char) l(ljVar);
        ljVar.a(cL2);
        if (cL2 != ']') {
            d(ljVar, wgVar);
        }
        boolean z = false;
        while (!z) {
            char cL3 = (char) l(ljVar);
            if (cL3 == ',') {
                d(ljVar, wgVar);
            } else {
                if (cL3 != ']') {
                    throw new xe("Expected either , or ] but got [" + cL3 + "].", ljVar);
                }
                z = true;
            }
        }
        wgVar.e();
    }

    private void b(lj ljVar, wg wgVar) throws IOException, xe {
        char cL = (char) l(ljVar);
        if (cL != '{') {
            throw new xe("Expected object to start with { but got [" + cL + "].", ljVar);
        }
        wgVar.f();
        char cL2 = (char) l(ljVar);
        ljVar.a(cL2);
        if (cL2 != '}') {
            c(ljVar, wgVar);
        }
        boolean z = false;
        while (!z) {
            char cL3 = (char) l(ljVar);
            if (cL3 == ',') {
                c(ljVar, wgVar);
            } else {
                if (cL3 != '}') {
                    throw new xe("Expected either , or } but got [" + cL3 + "].", ljVar);
                }
                z = true;
            }
        }
        wgVar.g();
    }

    private void c(lj ljVar, wg wgVar) throws IOException, xe {
        char cL = (char) l(ljVar);
        if ('\"' != cL) {
            throw new xe("Expected object identifier to begin with [\"] but got [" + cL + "].", ljVar);
        }
        ljVar.a(cL);
        wgVar.a(i(ljVar));
        char cL2 = (char) l(ljVar);
        if (cL2 != ':') {
            throw new xe("Expected object identifier to be followed by : but got [" + cL2 + "].", ljVar);
        }
        d(ljVar, wgVar);
        wgVar.h();
    }

    private void d(lj ljVar, wg wgVar) throws IOException, xe {
        char cL = (char) l(ljVar);
        if (cL == '\"') {
            ljVar.a(cL);
            wgVar.c(i(ljVar));
            return;
        }
        if (cL != '-') {
            if (cL == '[') {
                ljVar.a(cL);
                a(ljVar, wgVar);
                return;
            }
            if (cL == 'f') {
                char[] cArr = new char[4];
                if (ljVar.b(cArr) != 4 || cArr[0] != 'a' || cArr[1] != 'l' || cArr[2] != 's' || cArr[3] != 'e') {
                    ljVar.a(cArr);
                    throw new xe("Expected 'f' to be followed by [[a, l, s, e]], but got [" + Arrays.toString(cArr) + "].", ljVar);
                }
                wgVar.j();
                return;
            }
            if (cL == 'n') {
                char[] cArr2 = new char[3];
                if (ljVar.b(cArr2) != 3 || cArr2[0] != 'u' || cArr2[1] != 'l' || cArr2[2] != 'l') {
                    ljVar.a(cArr2);
                    throw new xe("Expected 'n' to be followed by [[u, l, l]], but got [" + Arrays.toString(cArr2) + "].", ljVar);
                }
                wgVar.k();
                return;
            }
            if (cL == 't') {
                char[] cArr3 = new char[3];
                if (ljVar.b(cArr3) != 3 || cArr3[0] != 'r' || cArr3[1] != 'u' || cArr3[2] != 'e') {
                    ljVar.a(cArr3);
                    throw new xe("Expected 't' to be followed by [[r, u, e]], but got [" + Arrays.toString(cArr3) + "].", ljVar);
                }
                wgVar.i();
                return;
            }
            if (cL == '{') {
                ljVar.a(cL);
                b(ljVar, wgVar);
                return;
            }
            switch (cL) {
                case Keyboard.KEY_B /* 48 */:
                case Keyboard.KEY_N /* 49 */:
                case Keyboard.KEY_M /* 50 */:
                case Keyboard.KEY_COMMA /* 51 */:
                case Keyboard.KEY_PERIOD /* 52 */:
                case Keyboard.KEY_SLASH /* 53 */:
                case Keyboard.KEY_RSHIFT /* 54 */:
                case Keyboard.KEY_MULTIPLY /* 55 */:
                case Keyboard.KEY_LMENU /* 56 */:
                case Keyboard.KEY_SPACE /* 57 */:
                    break;
                default:
                    throw new xe("Invalid character at start of value [" + cL + "].", ljVar);
            }
        }
        ljVar.a(cL);
        wgVar.b(a(ljVar));
    }

    private String a(lj ljVar) throws IOException {
        StringBuilder sb = new StringBuilder();
        char c = (char) ljVar.c();
        if ('-' == c) {
            sb.append('-');
        } else {
            ljVar.a(c);
        }
        sb.append(b(ljVar));
        return sb.toString();
    }

    private String b(lj ljVar) throws IOException {
        StringBuilder sb = new StringBuilder();
        char c = (char) ljVar.c();
        if ('0' == c) {
            sb.append('0');
            sb.append(f(ljVar));
            sb.append(g(ljVar));
        } else {
            ljVar.a(c);
            sb.append(c(ljVar));
            sb.append(e(ljVar));
            sb.append(f(ljVar));
            sb.append(g(ljVar));
        }
        return sb.toString();
    }

    private char c(lj ljVar) throws xe {
        char c = (char) ljVar.c();
        switch (c) {
            case Keyboard.KEY_N /* 49 */:
            case Keyboard.KEY_M /* 50 */:
            case Keyboard.KEY_COMMA /* 51 */:
            case Keyboard.KEY_PERIOD /* 52 */:
            case Keyboard.KEY_SLASH /* 53 */:
            case Keyboard.KEY_RSHIFT /* 54 */:
            case Keyboard.KEY_MULTIPLY /* 55 */:
            case Keyboard.KEY_LMENU /* 56 */:
            case Keyboard.KEY_SPACE /* 57 */:
                return c;
            default:
                throw new xe("Expected a digit 1 - 9 but got [" + c + "].", ljVar);
        }
    }

    private char d(lj ljVar) throws xe {
        char c = (char) ljVar.c();
        switch (c) {
            case Keyboard.KEY_B /* 48 */:
            case Keyboard.KEY_N /* 49 */:
            case Keyboard.KEY_M /* 50 */:
            case Keyboard.KEY_COMMA /* 51 */:
            case Keyboard.KEY_PERIOD /* 52 */:
            case Keyboard.KEY_SLASH /* 53 */:
            case Keyboard.KEY_RSHIFT /* 54 */:
            case Keyboard.KEY_MULTIPLY /* 55 */:
            case Keyboard.KEY_LMENU /* 56 */:
            case Keyboard.KEY_SPACE /* 57 */:
                return c;
            default:
                throw new xe("Expected a digit 1 - 9 but got [" + c + "].", ljVar);
        }
    }

    private String e(lj ljVar) throws IOException {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (!z) {
            char c = (char) ljVar.c();
            switch (c) {
                case Keyboard.KEY_B /* 48 */:
                case Keyboard.KEY_N /* 49 */:
                case Keyboard.KEY_M /* 50 */:
                case Keyboard.KEY_COMMA /* 51 */:
                case Keyboard.KEY_PERIOD /* 52 */:
                case Keyboard.KEY_SLASH /* 53 */:
                case Keyboard.KEY_RSHIFT /* 54 */:
                case Keyboard.KEY_MULTIPLY /* 55 */:
                case Keyboard.KEY_LMENU /* 56 */:
                case Keyboard.KEY_SPACE /* 57 */:
                    sb.append(c);
                    break;
                default:
                    ljVar.a(c);
                    z = true;
                    break;
            }
        }
        return sb.toString();
    }

    private String f(lj ljVar) throws IOException {
        StringBuilder sb = new StringBuilder();
        char c = (char) ljVar.c();
        if (c == '.') {
            sb.append('.');
            sb.append(d(ljVar));
            sb.append(e(ljVar));
        } else {
            ljVar.a(c);
        }
        return sb.toString();
    }

    private String g(lj ljVar) throws IOException {
        StringBuilder sb = new StringBuilder();
        char c = (char) ljVar.c();
        if (c == '.' || c == 'E') {
            sb.append('E');
            sb.append(h(ljVar));
            sb.append(d(ljVar));
            sb.append(e(ljVar));
        } else {
            ljVar.a(c);
        }
        return sb.toString();
    }

    private String h(lj ljVar) throws IOException {
        StringBuilder sb = new StringBuilder();
        char c = (char) ljVar.c();
        if (c == '+' || c == '-') {
            sb.append(c);
        } else {
            ljVar.a(c);
        }
        return sb.toString();
    }

    private String i(lj ljVar) throws xe {
        StringBuilder sb = new StringBuilder();
        char c = (char) ljVar.c();
        if ('\"' != c) {
            throw new xe("Expected [\"] but got [" + c + "].", ljVar);
        }
        boolean z = false;
        while (!z) {
            char c2 = (char) ljVar.c();
            if (c2 == '\"') {
                z = true;
            } else if (c2 == '\\') {
                sb.append(j(ljVar));
            } else {
                sb.append(c2);
            }
        }
        return sb.toString();
    }

    private char j(lj ljVar) throws xe {
        char c = (char) ljVar.c();
        if (c == '\"') {
            return '\"';
        }
        if (c == '/') {
            return '/';
        }
        if (c == '\\') {
            return '\\';
        }
        if (c == 'b') {
            return '\b';
        }
        if (c == 'f') {
            return '\f';
        }
        if (c == 'n') {
            return '\n';
        }
        if (c == 'r') {
            return '\r';
        }
        if (c == 't') {
            return '\t';
        }
        if (c == 'u') {
            return (char) k(ljVar);
        }
        throw new xe("Unrecognised escape character [" + c + "].", ljVar);
    }

    private int k(lj ljVar) throws xe {
        char[] cArr = new char[4];
        int iB = ljVar.b(cArr);
        if (iB != 4) {
            throw new xe("Expected a 4 digit hexidecimal number but got only [" + iB + "], namely [" + String.valueOf(cArr, 0, iB) + "].", ljVar);
        }
        try {
            return Integer.parseInt(String.valueOf(cArr), 16);
        } catch (NumberFormatException e) {
            ljVar.a(cArr);
            throw new xe("Unable to parse [" + String.valueOf(cArr) + "] as a hexidecimal number.", e, ljVar);
        }
    }

    private int l(lj ljVar) throws IOException {
        int iC;
        boolean z = false;
        do {
            iC = ljVar.c();
            if (iC != 9 && iC != 10 && iC != 13 && iC != 32) {
                z = true;
            }
        } while (!z);
        return iC;
    }
}
