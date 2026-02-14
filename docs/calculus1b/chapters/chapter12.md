# פרק 12: אינטגרלים לא אמיתיים ויישומים

---

## 11.1 הגדרת אינטגרל לא אמיתי

!!! info "הגדרה 11.1 (אינטגרל לא אמיתי מסוג ראשון)"
    תהי $f : [a,+\infty) \to \mathbb{R}$ פונקציה **אינטגרבילית מקומית** ב־$[a,+\infty)$. נגדיר $F : [a,+\infty) \to \mathbb{R}$ על ידי $F(x) = \int_a^x f(t)\,dt$ לכל $x \in [a,+\infty)$.

    נאמר כי **אינטגרל לא אמיתי** של $f$ בקטע $[a,+\infty)$ **מתכנס** כאשר **קיים וסופי** הגבול $\lim_{x \to +\infty} F(x)$. במקרה זה נסמן
    $$\int_a^{+\infty} f(x)\,dx = \lim_{x \to +\infty} F(x)$$
    אם הגבול אינו קיים או אינו סופי — נאמר שהאינטגרל **לא מתכנס**.

!!! note "הערה 11.2"
    מגדירים באופן דומה אינטגרל לא אמיתי על קטעים מהצורה $(-\infty, a]$.

---

## דוגמאות בסיסיות

!!! example "דוגמה 1: $\int_0^{+\infty} \cos x\,dx$ — לא מתכנס"
    $\int_0^x \cos t\,dt = \sin x$, ו־$\lim_{x \to +\infty} \sin x$ לא קיים.

!!! example "דוגמה 2: $\int_0^{+\infty} e^{\alpha x}\,dx$"
    עבור $\alpha \in \mathbb{R} \setminus \{0\}$: $\int_0^x e^{\alpha t}\,dt = \frac{1}{\alpha}(e^{\alpha x}-1)$.

    הגבול ב־$x \to +\infty$ קיים וסופי **אם ורק אם $\alpha < 0$**.

!!! example "דוגמה 3: $\int_0^{+\infty} \frac{1}{1+x^2}\,dx = \frac{\pi}{2}$"
    $\int_0^x \frac{1}{1+t^2}\,dt = \arctan x$, ו־$\lim_{x \to +\infty} \arctan x = \frac{\pi}{2}$.

!!! example "דוגמה 4: $\int_1^{+\infty} \frac{1}{x^\alpha}\,dx$"
    - עבור $\alpha = 1$: $\int_1^x \frac{1}{t}\,dt = \ln x \to +\infty$ — **לא מתכנס**.
    - עבור $\alpha \neq 1$: $\int_1^x \frac{1}{t^\alpha}\,dt = \frac{x^{1-\alpha}-1}{1-\alpha}$. הגבול קיים וסופי **אם ורק אם $\alpha > 1$**.

    **סיכום:** $\int_1^{+\infty} \frac{1}{x^\alpha}\,dx$ מתכנס אם ורק אם $\alpha > 1$.

---

## קריטריון קושי להתכנסות

!!! success "טענה (קריטריון קושי)"
    האינטגרל $\int_a^{+\infty} f(x)\,dx$ **מתכנס** אם ורק אם לכל $\varepsilon > 0$ קיים $M \ge a$ כך שלכל $q > p > M$ מתקיים $\big|\int_p^q f(x)\,dx\big| < \varepsilon$.

---

## מבחני השוואה (פונקציות אי־שליליות)

!!! success "מבחן ההשוואה"
    אם $0 \le f(x) \le g(x)$ ב־$[a,+\infty)$ והאינטגרל של $g$ מתכנס — אז האינטגרל של $f$ מתכנס.

    אם האינטגרל של $f$ מתבדר — אז האינטגרל של $g$ מתבדר.

!!! success "מבחן ההשוואה הגבולי"
    אם $f, g \ge 0$ ו־$\lim_{x \to +\infty} \frac{f(x)}{g(x)} = L \in (0,+\infty)$ — אז $\int_a^{+\infty} f$ מתכנס **אם ורק אם** $\int_a^{+\infty} g$ מתכנס.

!!! note "מסקנה 11.17"
    אם $f, g \ge 0$ ו־$f(x) \sim g(x)$ ב־$x \to +\infty$ — אז התכנסות $\int f$ שקולה להתכנסות $\int g$.

---

## אינטגרל לא אמיתי מסוג שני — סינגולריות בגבול

!!! info "הגדרה 11.3"
    תהי $f : [a,b) \to \mathbb{R}$ פונקציה אינטגרבילית מקומית ב־$[a,b)$. נגדיר $F : [a,b) \to \mathbb{R}$ על ידי $F(x) = \int_a^x f(t)\,dt$.

    נאמר כי **האינטגרל הלא אמיתי** $\int_a^b f(x)\,dx$ **מתכנס** כאשר קיים וסופי הגבול $\lim_{x \to b^-} F(x)$. במקרה זה:
    $$\int_a^b f(x)\,dx = \lim_{x \to b^-} \int_a^x f(t)\,dt$$

!!! example "דוגמה: $\int_0^1 \frac{1}{\sqrt{x}}\,dx$ — מתכנס"
    $$\int_0^1 \frac{1}{\sqrt{x}}\,dx = \lim_{\varepsilon \to 0^+} \int_\varepsilon^1 x^{-1/2}\,dx = \lim_{\varepsilon \to 0^+} [2\sqrt{x}]_\varepsilon^1 = 2 - \lim_{\varepsilon \to 0^+} 2\sqrt{\varepsilon} = 2$$

!!! example "דוגמה: $\int_0^1 \frac{1}{x}\,dx$ — מתבדר"
    $$\int_0^1 \frac{1}{x}\,dx = \lim_{\varepsilon \to 0^+} \int_\varepsilon^1 \frac{1}{x}\,dx = \lim_{\varepsilon \to 0^+} [-\ln \varepsilon] = +\infty$$

---

## התכנסות בהחלט והתכנסות בתנאי

!!! info "הגדרה 11.11 (התכנסות בהחלט)"
    תהי $f : [a,+\infty) \to \mathbb{R}$ אינטגרבילית מקומית. נאמר כי האינטגרל $\int_a^{+\infty} f(x)\,dx$ **מתכנס בהחלט** כאשר האינטגרל $\int_a^{+\infty} |f(x)|\,dx$ מתכנס.

!!! success "טענה 11.12"
    אם האינטגרל מתכנס **בהחלט** אז הוא **מתכנס**.

??? example "הוכחה (רעיון)"
    מקריטריון קושי: לכל $\varepsilon > 0$ קיים $M$ כך שלכל $q > p > M$: $\big|\int_p^q f(x)\,dx\big| \le \int_p^q |f(x)|\,dx < \varepsilon$.

!!! note "הערה — התכנסות בתנאי"
    אינטגרל שמתכנס אך **לא** מתכנס בהחלט נקרא **מתכנס בתנאי**.

    **דוגמה:** $\int_1^{+\infty} \frac{\sin x}{x}\,dx$ מתכנס בתנאי (מוכיחים עם קריטריון דיריכלה).

---

## קריטריון דיריכלה וקריטריון אבל

!!! success "טענה 11.20 (קריטריון אבל)"
    תהיינה $f, g : [a,+\infty) \to \mathbb{R}$. נניח כי:

    1. $f$ רציפה ו־$\int_a^{+\infty} f(x)\,dx$ מתכנס.
    2. $g$ מונוטונית וחסומה.

    אז $\int_a^{+\infty} f(x)g(x)\,dx$ מתכנס.

!!! success "טענה 11.21 (קריטריון דיריכלה)"
    תהיינה $f, g : [a,+\infty) \to \mathbb{R}$. נניח כי:

    1. $f$ רציפה ו־$F(x) = \int_a^x f(t)\,dt$ חסומה.
    2. $g$ מונוטונית ו־$\lim_{x \to +\infty} g(x) = 0$.

    אז $\int_a^{+\infty} f(x)g(x)\,dx$ מתכנס.

---

## טור ואינטגרל

!!! success "טענה 11.19"
    תהי $f : [a,+\infty) \to \mathbb{R}$ אינטגרבילית מקומית, **אי־שלילית ויורדת**. אז לכל $N \in \mathbb{N}_+$:
    $$\sum_{n=1}^{N} f(a+n) \le \int_a^{a+N} f(x)\,dx \le \sum_{n=0}^{N-1} f(a+n)$$

    יתר על כן, **האינטגרל מתכנס אם ורק אם הטור $\sum_{n=0}^{\infty} f(a+n)$ מתכנס.**

!!! example "יישום"
    $\sum_{n=1}^N \frac{1}{n}$ והאינטגרל $\int_1^N \frac{1}{x}\,dx = \ln N$ מקושרים, ומכאן $\ln(N+1) \le \sum_{n=1}^N \frac{1}{n} \le 1 + \ln N$.

---

## יישומים גאומטריים

### שטח בין עקומות

!!! info "נוסחה"
    עבור $f \ge g$ ב־$[a,b]$: שטח בין $y=f(x)$ ל־$y=g(x)$ הוא:
    $$S = \int_a^b \big(f(x)-g(x)\big)\,dx$$

!!! example "דוגמה: שטח בין $y = x^2$ ו־$y = x$"
    $$S = \int_0^1 (x - x^2)\,dx = \Big[\frac{x^2}{2} - \frac{x^3}{3}\Big]_0^1 = \frac{1}{2} - \frac{1}{3} = \frac{1}{6}$$

### נפח גוף סיבוב (שיטת הדיסקים)

!!! info "נוסחה"
    סיבוב השטח מתחת ל־$y=f(x)$ סביב ציר $x$:
    $$V = \pi \int_a^b [f(x)]^2\,dx$$

!!! example "דוגמה: נפח כדור ברדיוס $R$"
    מסובבים את $y = \sqrt{R^2-x^2}$ סביב ציר $x$:
    $$V = \pi \int_{-R}^R (R^2-x^2)\,dx = \pi\Big[R^2 x - \frac{x^3}{3}\Big]_{-R}^R = \frac{4\pi R^3}{3}$$

### אורך קשת

!!! info "נוסחה"
    לעקומה $y=f(x)$ עם $f'$ רציפה:
    $$L = \int_a^b \sqrt{1+[f'(x)]^2}\,dx$$

!!! example "דוגמה: אורך הקשת $y = \frac{x^{3/2}}{3}$ ב־$[0,4]$"
    $f'(x) = \frac{1}{2}\sqrt{x}$, ולכן $1 + [f'(x)]^2 = 1 + \frac{x}{4} = \frac{4+x}{4}$.
    $$L = \int_0^4 \frac{\sqrt{4+x}}{2}\,dx = \frac{1}{2} \cdot \frac{2}{3}[(4+x)^{3/2}]_0^4 = \frac{1}{3}(8\sqrt{2} - 8) = \frac{8(\sqrt{2}-1)}{3}$$

### שטח פנים של גוף סיבוב

!!! info "נוסחה"
    סיבוב הקשת $y = f(x)$ סביב ציר $x$:
    $$A = 2\pi \int_a^b f(x) \sqrt{1+[f'(x)]^2}\,dx$$

---

## תרגילים

!!! question "תרגיל 1"
    קבעו התכנסות:

    - $\int_1^{+\infty} \frac{\sin x}{x^2}\,dx$
    - $\int_1^{+\infty} \frac{1}{x\ln x}\,dx$
    - $\int_0^1 \frac{1}{\sqrt{x(1-x)}}\,dx$
    - $\int_1^{+\infty} \frac{x}{e^x}\,dx$

??? success "פתרון"
    **$\int_1^{+\infty} \frac{\sin x}{x^2}\,dx$ — מתכנס בהחלט:**

    $\left|\frac{\sin x}{x^2}\right| \le \frac{1}{x^2}$, ו־$\int_1^{+\infty} \frac{1}{x^2}\,dx$ מתכנס ($\alpha = 2 > 1$). לפי מבחן ההשוואה, האינטגרל מתכנס בהחלט, ולכן מתכנס.

    **$\int_1^{+\infty} \frac{1}{x\ln x}\,dx$ — מתבדר:**

    עם $u = \ln x$, $du = \frac{1}{x}dx$:
    $$\int_1^R \frac{1}{x\ln x}\,dx = \int_0^{\ln R} \frac{du}{u} = \ln(\ln R) \xrightarrow{R \to +\infty} +\infty$$

    **$\int_0^1 \frac{1}{\sqrt{x(1-x)}}\,dx$ — מתכנס:**

    סינגולריות ב־$x=0$ וב־$x=1$. נפצל: $\int_0^{1/2} + \int_{1/2}^1$.

    ליד $x = 0$: $\frac{1}{\sqrt{x(1-x)}} \sim \frac{1}{\sqrt{x}}$, ו־$\int_0^{1/2} \frac{1}{\sqrt{x}}\,dx$ מתכנס (סוג שני, $\alpha = 1/2 < 1$).

    ליד $x = 1$: עם $t = 1-x$, באופן דומה $\sim \frac{1}{\sqrt{t}}$ — מתכנס.

    **$\int_1^{+\infty} \frac{x}{e^x}\,dx$ — מתכנס:**

    אינטגרציה בחלקים: $\int_1^R xe^{-x}\,dx = [-xe^{-x}]_1^R + \int_1^R e^{-x}\,dx = -Re^{-R} + e^{-1} - e^{-R} + e^{-1}$.

    ב־$R \to +\infty$: $Re^{-R} \to 0$, $e^{-R} \to 0$, ולכן $\int_1^{+\infty} xe^{-x}\,dx = \frac{2}{e}$.

!!! question "תרגיל 2"
    הוכיחו כי $\int_0^{+\infty} e^{-x^2}\,dx = \frac{\sqrt{\pi}}{2}$.

    *(רמז: זה אינטגרל גאוסיאני — ההוכחה משתמשת באינטגרל כפול.)*

??? success "פתרון"
    נסמן $I = \int_0^{+\infty} e^{-x^2}\,dx$. נחשב $I^2$:

    $$I^2 = \int_0^{+\infty} e^{-x^2}\,dx \cdot \int_0^{+\infty} e^{-y^2}\,dy = \int_0^{+\infty}\int_0^{+\infty} e^{-(x^2+y^2)}\,dx\,dy$$

    מעבר לקואורדינטות פולריות $x = r\cos\theta$, $y = r\sin\theta$:

    $$I^2 = \int_0^{\pi/2}\int_0^{+\infty} e^{-r^2} \cdot r\,dr\,d\theta = \frac{\pi}{2} \cdot \int_0^{+\infty} re^{-r^2}\,dr$$

    עם $u = r^2$: $\int_0^{+\infty} re^{-r^2}\,dr = \frac{1}{2}\int_0^{+\infty} e^{-u}\,du = \frac{1}{2}$.

    לכן $I^2 = \frac{\pi}{2} \cdot \frac{1}{2} = \frac{\pi}{4}$, ומכאן $I = \frac{\sqrt{\pi}}{2}$. $\blacksquare$

!!! question "תרגיל 3"
    חשבו את נפח הגוף הנוצר מסיבוב $y = e^{-x}$ סביב ציר $x$ ב־$[0,+\infty)$.

??? success "פתרון"
    לפי נוסחת הדיסקים:

    $$V = \pi \int_0^{+\infty} [e^{-x}]^2\,dx = \pi \int_0^{+\infty} e^{-2x}\,dx = \pi \left[-\frac{1}{2}e^{-2x}\right]_0^{+\infty} = \pi \cdot \frac{1}{2} = \frac{\pi}{2}$$

!!! question "תרגיל 4"
    תהי $f : [a,+\infty) \to \mathbb{R}$ אי־שלילית ואינטגרבילית מקומית. הוכיחו כי אם $\int_a^{+\infty} f(x)\,dx$ מתכנס וגם קיים $\lim_{x \to +\infty} f(x)$, אז הגבול שווה $0$.

??? success "פתרון"
    נניח בשלילה כי $L = \lim_{x \to +\infty} f(x) > 0$.

    אז קיים $M$ כך שלכל $x > M$ מתקיים $f(x) > \frac{L}{2}$.

    לכן לכל $R > M$:
    $$\int_a^R f(x)\,dx \ge \int_M^R f(x)\,dx > \frac{L}{2}(R - M) \xrightarrow{R \to +\infty} +\infty$$

    סתירה לכך שהאינטגרל מתכנס. מכאן $L = 0$. $\blacksquare$

!!! question "תרגיל 5"
    תהי $f : [1,+\infty) \to \mathbb{R}$ אי־שלילית, יורדת ואינטגרבילית מקומית. הגדירו $a_n = \sum_{k=1}^n f(k) - \int_1^n f(x)\,dx$. הוכיחו כי $\{a_n\}$ מתכנסת.

    *(זו הדרך להגדיר את קבוע אוילר־מסקרוני $\gamma$.)*

??? success "פתרון"
    נסמן $b_k = f(k) - \int_k^{k+1} f(x)\,dx$. מכיוון ש־$f$ יורדת, לכל $x \in [k, k+1]$: $f(k) \ge f(x)$, ולכן $b_k \ge 0$.

    כמו כן $f(x) \ge f(k+1)$ ב-$[k, k+1]$, ולכן $b_k = f(k) - \int_k^{k+1} f(x)\,dx \le f(k) - f(k+1)$.

    **$\{a_n\}$ מונוטונית יורדת:** $a_{n+1} - a_n = f(n+1) - \int_n^{n+1} f(x)\,dx \le 0$ (כי $f$ יורדת).

    **$\{a_n\}$ חסומה מלמטה:** נכתוב $a_n = \sum_{k=1}^{n-1} b_k + f(n)$. כל $b_k \ge 0$ ו-$f(n) \ge 0$, לכן $a_n \ge 0$.

    סדרה מונוטונית יורדת וחסומה מלמטה מתכנסת. $\blacksquare$
