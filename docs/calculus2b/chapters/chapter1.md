# פרק 1: התכנסות נקודתית ובמידה שווה

## 1.1 התכנסות נקודתית

!!! info "הגדרה 1.1 (התכנסות נקודתית)"
    תהי $(f_n)$ סדרת פונקציות ממשיות על קבוצה $E \subseteq \mathbb{R}$.
    הסדרה **מתכנסת נקודתית** לפונקציה $f$ אם לכל $x \in E$:
    $$f_n(x) \to f(x)$$

    כלומר:
    $$\forall x \in E \; \forall \varepsilon > 0 \; \exists N = N(x, \varepsilon) \; \forall n > N : |f_n(x) - f(x)| < \varepsilon$$

!!! note "הערה"
    בהתכנסות נקודתית, ה-$N$ יכול לתלות גם ב-$x$ וגם ב-$\varepsilon$. עבור $x$ שונים, ייתכן שנצטרך $N$ גדול יותר.

## 1.2 התכנסות במידה שווה

!!! info "הגדרה 1.2 (התכנסות במידה שווה)"
    סדרת פונקציות $(f_n)$ על $E$ **מתכנסת במידה שווה** (במ"ש) לפונקציה $f$ אם:
    $$\sup_{x \in E} |f_n(x) - f(x)| \to 0, \quad n \to \infty$$

    כלומר:
    $$\forall \varepsilon > 0 \; \exists N = N(\varepsilon) \; \forall n > N \; \forall x \in E : |f_n(x) - f(x)| < \varepsilon$$

    נסמן $f_n \rightrightarrows f$ על $E$.

!!! note "הערה"
    התכנסות במ"ש חזקה יותר מהתכנסות נקודתית: אם $f_n \rightrightarrows f$ אז $f_n \to f$ נקודתית, אך לא להפך. ההבדל המהותי הוא שבהתכנסות במ"ש, ה-$N$ תלוי רק ב-$\varepsilon$ ולא ב-$x$.

## 1.3 דוגמאות

!!! example "דוגמה 1"
    הסדרה $f_n(x) = x^n$ על $[0, 1]$.

    **גבול נקודתי:**
    $$f(x) = \begin{cases} 0, & 0 \le x < 1 \\ 1, & x = 1 \end{cases}$$

    ההתכנסות היא נקודתית בלבד על $[0, 1]$ ולא במ"ש, כי הפונקציה הגבולית אינה רציפה למרות שכל $f_n$ רציפה.

    על $[0, 0.99]$ ההתכנסות היא במ"ש ל-$0$, כי $\sup_{[0, 0.99]} |x^n| = 0.99^n \to 0$.

!!! example "דוגמה 2"
    הסדרה $f_n(x) = x^n - x^{2n}$ על $[0, 1]$.

    מתכנסת נקודתית ל-$0$ על $[0, 1]$, אך לא במ"ש, כי:
    $$\max_{[0,1]} f_n = \frac{1}{4}$$

    (המקסימום מתקבל ב-$x = 2^{-1/n}$, ולכן $\sup |f_n - 0| = \frac{1}{4} \not\to 0$.)

!!! example "דוגמה 3"
    הסדרה $f_n(x) = \frac{1}{n}\sin(n^2 x)$ מתכנסת ל-$0$ **במידה שווה** על $\mathbb{R}$, כי:
    $$\sup_{x \in \mathbb{R}} |f_n(x)| = \frac{1}{n} \to 0$$

## 1.4 קריטריון קושי להתכנסות במידה שווה

!!! success "משפט 1.3 (קריטריון קושי להתכנסות במ"ש)"
    סדרת פונקציות $(f_n)$ על $E$ מתכנסת במידה שווה אם ורק אם:
    $$\forall \varepsilon > 0 \; \exists N \; \forall m, n \ge N : \sup_{x \in E} |f_n(x) - f_m(x)| < \varepsilon$$

??? example "הוכחה"
    **כיוון ראשון ($\Rightarrow$):** נניח $f_n \rightrightarrows f$ על $E$. אז:
    $$\sup_E |f_n - f_m| \le \sup_E |f_n - f| + \sup_E |f_m - f|$$

    שני האיברים שואפים ל-$0$, ולכן מתקיים תנאי קושי.

    **כיוון שני ($\Leftarrow$):** נניח שתנאי קושי מתקיים. לכל $x \in E$, הסדרה $(f_n(x))$ היא סדרת קושי של מספרים ממשיים, ולכן מתכנסת לגבול שנסמנו $f(x)$. כלומר, $f_n$ מתכנסת נקודתית ל-$f$.

    נותר להראות שההתכנסות במ"ש. מתנאי קושי, לכל $\varepsilon > 0$ קיים $N$ כך שלכל $m, n \ge N$ ולכל $x \in E$:
    $$f_n(x) - \varepsilon < f_m(x) < f_n(x) + \varepsilon$$

    נשאיף $m \to \infty$ ונקבל:
    $$f_n(x) - \varepsilon \le f(x) \le f_n(x) + \varepsilon$$

    כלומר $\sup_E |f_n - f| \le \varepsilon$ לכל $n \ge N$, ולכן $f_n \rightrightarrows f$. $\blacksquare$

## 1.5 התכנסות במ"ש שומרת רציפות

!!! success "משפט 1.4 (רציפות הגבול)"
    אם $f_n \in C(E)$ לכל $n$ ו-$f_n \rightrightarrows f$ על $E$, אז $f \in C(E)$.

??? example "הוכחה"
    יהי $x_0 \in E$ ויהי $\varepsilon > 0$. צ"ל: קיים $\delta > 0$ כך שאם $|x - x_0| < \delta$ ו-$x \in E$ אז $|f(x) - f(x_0)| < 3\varepsilon$.

    נפרק באי-שוויון המשולש:
    $$|f(x) - f(x_0)| \le |f(x) - f_n(x)| + |f_n(x) - f_n(x_0)| + |f_n(x_0) - f(x_0)|$$

    **שלב 1:** מהתכנסות במ"ש, נבחר $n$ גדול מספיק כך ש-$\sup_E |f - f_n| < \varepsilon$. זה הופך את האיבר הראשון והשלישי לקטנים מ-$\varepsilon$ כל אחד.

    **שלב 2:** מרציפות $f_n$, נבחר $\delta > 0$ כך שאם $|x - x_0| < \delta$ אז $|f_n(x) - f_n(x_0)| < \varepsilon$.

    סה"כ: $|f(x) - f(x_0)| < 3\varepsilon$. $\blacksquare$

## 1.6 משפט דיני

!!! success "משפט 1.5 (דיני)"
    תהי $(f_n) \subseteq C[a, b]$ סדרה מונוטונית יורדת (או עולה) של פונקציות רציפות, ותהי $f \in C[a, b]$ כך ש-$f_n \to f$ נקודתית. אז $f_n \rightrightarrows f$ על $[a, b]$.

??? example "הוכחה"
    נוכיח עבור המקרה $f_n \downarrow f$ (המקרה העולה דומה). יהי $\varepsilon > 0$.

    לכל $x \in [a, b]$, נבחר $n_x$ כך ש-$0 \le f_{n_x}(x) - f(x) < \varepsilon$.

    מרציפות $f_{n_x}$ ו-$f$, קיימת סביבה פתוחה $U_x$ של $x$ כך שלכל $t \in U_x \cap [a, b]$:
    $$0 \le f_{n_x}(t) - f(t) < 2\varepsilon$$

    האיחוד $\bigcup_{x \in [a,b]} U_x$ מכסה את $[a, b]$. לפי למת היינה-בורל, קיים כיסוי חלקי סופי:
    $$[a, b] \subseteq U_{x_1} \cup U_{x_2} \cup \cdots \cup U_{x_N}$$

    נגדיר $n_\varepsilon = \max_{1 \le j \le N} n_{x_j}$.

    לכל $t \in [a, b]$ ולכל $n \ge n_\varepsilon$, מכיוון שהסדרה יורדת:
    $$0 \le f_n(t) - f(t) \le f_{n_{x_j}}(t) - f(t) < 2\varepsilon$$

    עבור $j$ מתאים. לכן $f_n \rightrightarrows f$. $\blacksquare$

!!! note "הערה"
    תנאי המשפט הכרחיים: נדרשת מונוטוניות של הסדרה, רציפות הגבול, ועבודה על קטע סגור וחסום.

## 1.7 התכנסות במ"ש שומרת אינטגרביליות

!!! success "משפט 1.6 (שימור אינטגרביליות)"
    אם $(f_n) \subseteq R[a, b]$ (כל $f_n$ אינטגרבילית רימן) ו-$f_n \rightrightarrows f$ על $[a, b]$, אז $f \in R[a, b]$ ומתקיים:
    $$\int_a^b f_n \to \int_a^b f$$

??? example "הוכחה"
    **חלק א' - $f$ אינטגרבילית:** יהי $\varepsilon > 0$. נבחר $n$ כך ש-$\sup_{[a,b]} |f_n - f| < \varepsilon$.

    כיוון ש-$f_n$ אינטגרבילית, לפי משפט דארבו קיימת חלוקה $\Pi$ כך ש:
    $$\sum_{i=0}^{k} \omega(f_n; \Delta_i)|\Delta_i| < \varepsilon$$

    כאשר $\omega$ מסמן את התנודה (oscillation).

    לכל $i$: $\omega(f; \Delta_i) \le \omega(f_n; \Delta_i) + 2\varepsilon$. לכן:
    $$\sum_{i=0}^{k} \omega(f; \Delta_i)|\Delta_i| < \sum_{i=0}^{k} \omega(f_n; \Delta_i)|\Delta_i| + 2\varepsilon(b - a) < \varepsilon + 2\varepsilon(b - a)$$

    לפי גרסה מחוזקת של משפט דארבו, $f \in R[a, b]$.

    **חלק ב' - התכנסות האינטגרלים:**
    $$\left|\int_a^b f_n - \int_a^b f\right| \le \int_a^b |f_n - f| \le \sup_{[a,b]} |f_n - f| \cdot (b - a) \to 0$$

    $\blacksquare$

---

## תרגילים

!!! question "תרגיל 1"
    תהי $f_n(x) = \frac{nx}{1 + n^2 x^2}$ על $[0, 1]$. הראו כי $f_n$ מתכנסת נקודתית ל-$0$ אך לא במ"ש.

??? success "פתרון"
    **התכנסות נקודתית:** עבור $x = 0$: $f_n(0) = 0 \to 0$.

    עבור $x > 0$:
    $$f_n(x) = \frac{nx}{1 + n^2 x^2} = \frac{1}{n} \cdot \frac{n^2 x}{1 + n^2 x^2} \le \frac{1}{n} \cdot \frac{1}{2} \to 0$$

    (כי $\frac{t}{1+t^2} \le \frac{1}{2}$ לכל $t \ge 0$). לכן $f_n \to 0$ נקודתית.

    **לא במ"ש:** נחשב ב-$x_n = \frac{1}{n}$:
    $$f_n\left(\frac{1}{n}\right) = \frac{n \cdot \frac{1}{n}}{1 + n^2 \cdot \frac{1}{n^2}} = \frac{1}{2}$$

    לכן $\sup_{[0,1]} |f_n(x)| \ge \frac{1}{2} \not\to 0$, ולכן ההתכנסות אינה במ"ש. $\blacksquare$

!!! question "תרגיל 2"
    הוכיחו: אם $f_n \rightrightarrows f$ ו-$g_n \rightrightarrows g$ על $E$, אז $\max\{f_n, g_n\} \rightrightarrows \max\{f, g\}$ על $E$.

??? success "פתרון"
    נשתמש באי-השוויון $|\max\{a, b\} - \max\{c, d\}| \le \max\{|a - c|, |b - d|\}$ (לכל $a, b, c, d \in \mathbb{R}$).

    **הוכחת אי-השוויון העזר:** ב.ה.כ $\max\{a, b\} = a$ ו-$\max\{c, d\} = c$. אז $a \ge b$ ו-$c \ge d$.
    אם $a \ge c$: $|a - c| = a - c \le |a - c|$.
    אם $a < c$: $|a - c| = c - a$. כיוון ש-$a \ge b$ ו-$c \ge d$ אז $c - a \le c - b$. לא בהכרח עוזר, אך $c - a \le |c - a| \le \max\{|a-c|, |b-d|\}$.

    **חזרה להוכחה העיקרית:** לכל $x \in E$:
    $$|\max\{f_n(x), g_n(x)\} - \max\{f(x), g(x)\}| \le \max\{|f_n(x) - f(x)|, |g_n(x) - g(x)|\}$$

    $$\le |f_n(x) - f(x)| + |g_n(x) - g(x)|$$

    לכן:
    $$\sup_E |\max\{f_n, g_n\} - \max\{f, g\}| \le \sup_E |f_n - f| + \sup_E |g_n - g| \to 0$$

    $\blacksquare$

!!! question "תרגיל 3"
    תהי $(f_n) \subseteq C[0, 1]$ סדרה יורדת של פונקציות אי-שליליות כך ש-$f_n \to 0$ נקודתית. הוכיחו (ללא שימוש במשפט דיני) כי $\int_0^1 f_n \to 0$.

??? success "פתרון"
    יהי $\varepsilon > 0$. נסמן $M = \sup_{[0,1]} f_1$ (קיים כי $f_1$ רציפה על קטע סגור).

    לכל $x \in [0, 1]$, מההתכנסות הנקודתית קיים $n_x$ כך ש-$f_{n_x}(x) < \varepsilon$.

    מרציפות $f_{n_x}$ קיימת סביבה פתוחה $U_x$ של $x$ כך שלכל $t \in U_x \cap [0, 1]$: $f_{n_x}(t) < 2\varepsilon$.

    הכיסוי $\{U_x\}_{x \in [0,1]}$ הוא כיסוי פתוח של $[0, 1]$. לפי היינה-בורל, קיים כיסוי חלקי סופי $U_{x_1}, \ldots, U_{x_k}$.

    נגדיר $N = \max_j n_{x_j}$. לכל $n \ge N$ ולכל $t \in [0, 1]$:

    קיים $j$ כך ש-$t \in U_{x_j}$. כיוון שהסדרה יורדת ו-$n \ge N \ge n_{x_j}$:
    $$0 \le f_n(t) \le f_{n_{x_j}}(t) < 2\varepsilon$$

    לכן:
    $$0 \le \int_0^1 f_n \le \int_0^1 2\varepsilon = 2\varepsilon$$

    כיוון ש-$\varepsilon$ שרירותי, $\int_0^1 f_n \to 0$. $\blacksquare$
