package ssm.service.Indexing;

/**
 * Created by chensu on 2017/10/17.
 */
public class PorterStemming {
    /*b数组放的是待词干提取的单词*/
    private char[] word;
    private int pos, pos_end, j, k;
    private static final int INC = 50;

    public PorterStemming() {
        word = new char[INC];
        pos = 0;
        pos_end = 0;
    }

    /*添加单词处理*/
    /*增加一个字符到要存放待处理的单词的数组。添加完字符时，可以调用stem（void）方法来进行词干抽取工作*/
    public void add(char ch) {
        if (pos == word.length) {
            char[] new_word = new char[pos + INC];
            for (int i = 0; i < pos; i++)
                new_word[i] = word[i];
            word = new_word;
        }
        word[pos++] = ch;
    }

    public void add(char[] w, int wLen) {
        if (pos + wLen >= word.length) {
            char[] new_word = new char[pos + wLen + INC];
            for (int i = 0; i < pos; i++)
                new_word[i] = word[i];
            word = new_word;
        }
        for (int i = 0; i < wLen; i++)
            word[pos++] = w[i];
    }

    // cons(i) 为真 <=> b[i] 是一个辅音
    private final boolean cons(int i) {
        switch (word[i]) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
                return false;
            case 'y':
                return (i == 0) ? true : !cons(i - 1);
            default:
                return true;
        }
    }

    // m() 用来计算在0和j之间辅音序列的个数。 见上面的说明
    private final int m() {
        int n = 0;//辅音序列的个数，初始化
        int i = 0;//偏移量
        while (true) {
            if (i > j) return n;//如果超出最大偏移量，直接返回n
            if (!cons(i)) break;//如果是元音，中断
            i++;
        }
        i++;//移完辅音，从元音的第一个字符开始
        while (true) {
            while (true) {
                if (i > j) return n;
                if (cons(i)) break;//出现辅音则终止循环
                i++;
            }
            i++;
            n++;
            while (true) {
                if (i > j) return n;
                if (!cons(i)) break;
                i++;
            }
            i++;
        }
    }

    // vowelinstem() 为真 <=> 0,...j 包含一个元音
    private final boolean vowelinstem() {
        for (int i = 0; i <= j; i++)
            if (!cons(i)) return true;
        return false;
    }

    // doublec(j) 为真 <=> j,(j-1) 包含两个一样的辅音
    private final boolean doublec(int j) {
        if (j < 1) return false;
        if (word[j] != word[j - 1]) return false;
        return cons(j);
    }

    /* cvc(i) is 为真 <=> i-2,i-1,i 有形式： 辅音 - 元音 - 辅音
   并且第二个c不是 w,x 或者 y. 这个用来处理以e结尾的短单词。 e.g.

   cav(e), lov(e), hop(e), crim(e), 但不是
   snow, box, tray.
*/
    private final boolean cvc(int i) {
        if (i < 2 || !cons(i) || cons(i - 1) || !cons(i - 2))
            return false;
        int ch = word[i];
        if (ch == 'w' || ch == 'x' || ch == 'y')
            return false;
        return true;
    }

    private final boolean ends(String s) {
        int l = s.length();
        int o = k - l + 1;
        if (o < 0)
            return false;
        for (int i = 0; i < l; i++)
            if (word[o + i] != s.charAt(i))
                return false;
        j = k - l;
        return true;
    }

    // setto(s) 设置 (j+1),...k 到s字符串上的字符, 并且调整k值
    private final void setto(String s) {
        int l = s.length();
        int o = j + 1;
        for (int i = 0; i < l; i++)
            word[o + i] = s.charAt(i);
        k = j + l;
    }

    private final void r(String s) {
        if (m() > 0)
            setto(s);
    }

    /*step1处理复数，ed或者ing结束的词*/
    private final void step1() {
        if (word[k] == 's') {
            if (ends("sses")) k -= 2;
            else if (ends("ies")) setto("i");
            else if (word[k - 1] != 's') k--;
        }
        if (ends("eed")) {
            if (m() > 0)
                k--;
            else if ((ends("ed") || ends("ing")) && vowelinstem()) {
                k = j;
                if (ends("at")) setto("ate");
                else if (ends("bl")) setto("ble");
                else if (ends("iz")) setto("ize");
                else if (doublec(k)) {
                    k--;
                    int ch = word[k];
                    if (ch == 'l' || ch == 's' || ch == 'z')
                        k++;
                } else if (m() == 1 && cvc(k))
                    setto("e");
            }
        }
    }

    //第二步，如果单词中包含元音，并且以y结尾，将y改为i
    private final void step2() {
        if (ends("y") && vowelinstem())
            word[k] = 'i';
    }

    /* step3() 将双后缀的单词映射为单后缀。 所以 -ization ( = -ize 加上
   -ation) 被映射到 -ize 等等。 注意在去除后缀之前必须确保
   m() > 0. */
    private final void step3() {
        if (k == 0)
            return;
        switch (word[k - 1]) {
            case 'a':
                if (ends("ational")) {
                    r("ate");
                    break;
                }
                if (ends("tional")) {
                    r("tion");
                    break;
                }
                break;
            case 'c':
                if (ends("enci")) {
                    r("ence");
                    break;
                }
                if (ends("anci")) {
                    r("ance");
                    break;
                }
                break;
            case 'e':
                if (ends("izer")) {
                    r("ize");
                    break;
                }
                break;
            case 'l':
                if (ends("bli")) {
                    r("ble");
                    break;
                }
                if (ends("alli")) {
                    r("al");
                    break;
                }
                if (ends("entli")) {
                    r("ent");
                    break;
                }
                if (ends("eli")) {
                    r("e");
                    break;
                }
                if (ends("ousli")) {
                    r("ous");
                    break;
                }
                break;
            case 'o':
                if (ends("ization")) {
                    r("ize");
                    break;
                }
                if (ends("ation")) {
                    r("ate");
                    break;
                }
                if (ends("ator")) {
                    r("ate");
                    break;
                }
                break;
            case 's':
                if (ends("alism")) {
                    r("al");
                    break;
                }
                if (ends("iveness")) {
                    r("ive");
                    break;
                }
                if (ends("fulness")) {
                    r("ful");
                    break;
                }
                if (ends("ousness")) {
                    r("ous");
                    break;
                }
                break;
            case 't':
                if (ends("aliti")) {
                    r("al");
                    break;
                }
                if (ends("iviti")) {
                    r("ive");
                    break;
                }
                if (ends("biliti")) {
                    r("ble");
                    break;
                }
                break;
            case 'g':
                if (ends("logi")) {
                    r("log");
                    break;
                }
        }
    }

    //第四步，处理-ic-，-full，-ness等等后缀。和步骤3有着类似的处理。
    private final void step4() {
        switch (word[k]) {
            case 'e':
                if (ends("icate")) {
                    r("ic");
                    break;
                }
                if (ends("ative")) {
                    r("");
                    break;
                }
                if (ends("alize")) {
                    r("al");
                    break;
                }
                break;
            case 'i':
                if (ends("iciti")) {
                    r("ic");
                    break;
                }
                break;
            case 'l':
                if (ends("ical")) {
                    r("ic");
                    break;
                }
                if (ends("ful")) {
                    r("");
                    break;
                }
                break;
            case 's':
                if (ends("ness")) {
                    r("");
                    break;
                }
                break;
        }
    }

    //第五步，在<c>vcvc<v>情形下，去除-ant，-ence等后缀。
    private final void step5() {
        if (k == 0) return;
        switch (word[k - 1]) {
            case 'a':
                if (ends("al")) break;
                return;
            case 'c':
                if (ends("ance")) break;
                if (ends("ence")) break;
                return;
            case 'e':
                if (ends("er")) break;
                return;
            case 'i':
                if (ends("ic")) break;
                return;
            case 'l':
                if (ends("able")) break;
                if (ends("ible")) break;
                return;
            case 'n':
                if (ends("ant")) break;
                if (ends("ement")) break;
                if (ends("ment")) break;
                 /* element etc. not stripped before the m */
                if (ends("ent")) break;
                return;
            case 'o':
                if (ends("ion") && j >= 0 && (word[j] == 's' || word[j] == 't')) break;
                                 /* j >= 0 fixes Bug 2 */
                if (ends("ou")) break;
                return;
                 /* takes care of -ous */
            case 's':
                if (ends("ism")) break;
                return;
            case 't':
                if (ends("ate")) break;
                if (ends("iti")) break;
                return;
            case 'u':
                if (ends("ous")) break;
                return;
            case 'v':
                if (ends("ive")) break;
                return;
            case 'z':
                if (ends("ize")) break;
                return;
            default:
                return;
        }
        if (m() > 1) k = j;
    }

    //第六步，也就是最后一步，在m()>1的情况下，移除末尾的“e”。
    private final void step6() {
        j = k;
        if (word[k] == 'e') {
            int a = m();
            if (a > 1 || a == 1 && !cvc(k - 1)) k--;
        }
        if (word[k] == 'l' && doublec(k) && m() > 1) k--;
    }

    /**
     * 通过调用add()方法来讲单词放入词干器数组b中
     * 可以通过下面的方法得到结果：
     * getResultLength()/getResultBuffer() or toString().
     */
    public String stem() {
        k = pos - 1;
        if (k > 1) {
            step1();
            step2();
            step3();
            step4();
            step5();
            step6();
        }
        pos_end = k + 1;
        pos = 0;
        StringBuilder ss = new StringBuilder();
        for (int i = pos; i < pos_end; i++) {
            ss.append(word[i]);
            //  System.out.println("*");
        }
        return ss.toString();
    }
}
